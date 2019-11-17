//
//  RepositoryRowView.swift
//  GitHubFinder
//
//  Created by Kristijan Delivuk on 11/11/2019.
//  Copyright © 2019 Kristijan Delivuk. All rights reserved.
//

import SwiftUI
import Defines

struct RepositoryRowView: View {
   
    // MARK: - Private Properties
    
    private let viewModel: RepositoryRowViewModel
    
    init(viewModel: RepositoryRowViewModel) {
      self.viewModel = viewModel
    }

    var body: some View {
        VStack(alignment: HorizontalAlignment.leading, spacing: 6) {
            Text("UPDATED: \(viewModel.updatedAt)")
                .font(.caption)
                .foregroundColor(.gray)
            Text(viewModel.name)
                .font(.headline)
            Text(viewModel.description)
                .font(.caption)
                .lineLimit(2)
            VStack(alignment: HorizontalAlignment.trailing) {
                HStack(alignment: VerticalAlignment.center, spacing: 5) {
                    Spacer()
                    Image("icon-watchers")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .aspectRatio(contentMode: .fit)
                        .fixedSize()
                    Text(viewModel.watchers)
                        .font(.caption)
                        .multilineTextAlignment(.trailing)
                        .padding(.trailing, 10)
                    Image("icon-issues")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .aspectRatio(contentMode: .fit)
                        .fixedSize()
                    Text(viewModel.openIssues)
                        .font(.caption)
                        .multilineTextAlignment(.trailing)
                        .padding(.trailing, 10)
                    Image("icon-fork")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .aspectRatio(contentMode: .fit)
                        .fixedSize()
                    Text(viewModel.forks)
                        .font(.caption)
                        .multilineTextAlignment(.trailing)
                }
            }.padding(EdgeInsets(top: 15, leading: 0, bottom: 0, trailing: 0))
            
        }
        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
    }
}

struct RepositoryRowView_Previews : PreviewProvider {
   static var previews: some View {
    return RepositoryRowView(viewModel: RepositoryRowViewModel(repository: Mocks.repositoryMock))
   }
}

