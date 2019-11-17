//
//  RepositoryDetailsView.swift
//  GitHubFinder
//
//  Created by Kristijan Delivuk on 12/11/2019.
//  Copyright © 2019 Kristijan Delivuk. All rights reserved.
//

import SwiftUI
import Defines

struct RepositoryDetailsView: View {
    
    // MARK: - Private Properties
    
    private let viewModel: RepositoryDetailsViewModel
 
    // MARK: - Lifecycle
    
    init(viewModel: RepositoryDetailsViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        NavigationView {
            VStack(alignment: HorizontalAlignment.center, spacing: 10) {
                HStack(alignment: VerticalAlignment.center) {
                    Image(systemName: "star.fill")
//                    Text(viewModel.forks)
//                        .font(.caption)
//                        .multilineTextAlignment(.leading)
//                    Spacer()
//                    Image(systemName: "star.fill")
//                    Text(viewModel.watchers)
//                        .font(.caption)
//                        .multilineTextAlignment(.leading)
//                    Spacer()
//                    Image(systemName: "star.fill")
//                    Text(viewModel.openIssues)
//                        .font(.caption)
//                        .multilineTextAlignment(.leading)
                }
                .padding(EdgeInsets(top: 15, leading: 0, bottom: 15, trailing: 0))
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.")
                    .font(.body)
                    
            }
            .padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15))
            .navigationBarTitle(viewModel.name)
        }
    }
}

struct RepositoryDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RepositoryDetailsView(viewModel: RepositoryDetailsViewModel(repository: Mocks.repositoryMock))
    }
}
