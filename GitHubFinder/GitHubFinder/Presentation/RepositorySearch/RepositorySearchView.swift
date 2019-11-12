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
    @State var searchTerm = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: HorizontalAlignment.center) {
                SearchBar(text: $searchTerm)
                List {
                    ForEach(viewModel.repositories) { repository in
                        RepositoryRowView(viewModel: RepositoryRowViewModel(repository: repository))
                    }
                }
                .environment(\.defaultMinListRowHeight, 100)
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
