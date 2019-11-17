//
//  RepositorySearchView.swift
//  GitHubFinder
//
//  Created by Kristijan Delivuk on 09/11/2019.
//  Copyright © 2019 Kristijan Delivuk. All rights reserved.
//

import SwiftUI
import API

struct RepositorySearchView: View {
        
    @ObservedObject var viewModel: RepositorySearchViewModel
        
    var body: some View {
        NavigationView {
            HStack(alignment: VerticalAlignment.top) {
                VStack(alignment: HorizontalAlignment.center) {
                    SearchBar(text: $viewModel.searchTerm)
                    if viewModel.isLoading {
                        Spacer()
                        ProgressIndicator()
                        Text("Loading...")
                        Spacer()
                    } else {
                        List {
                            Section {
                                ForEach(viewModel.repositories) { repository in
                                    NavigationLink(destination: self.viewModel.currentRepositoryDetails) {
                                        RepositoryRowView.init(viewModel: repository)
                                    }
                                }
                            }
                        }
                        .environment(\.defaultMinListRowHeight, 100)
                    }
                }
            }
            .navigationBarTitle(.init("Repository Search"))
        }
    }
}

struct RepositorySearchView_Previews: PreviewProvider {
    static var previews: some View {
        RepositorySearchView(viewModel: RepositorySearchViewModel.init(gitHubService: GitHubService(connector: Connector())))
    }
}
