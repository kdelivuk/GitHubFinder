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
            Text(viewModel.name)
                .font(.headline)
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.")
                .font(.caption)
            VStack(alignment: HorizontalAlignment.trailing) {
                HStack(alignment: VerticalAlignment.center, spacing: 5) {
                    Spacer()
                    Image(systemName: "star.fill")
                    Text("Count")
                        .font(.caption)
                        .multilineTextAlignment(.trailing)
                }
            }.padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0))
            
        }
        .padding(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 10))
    }
}

struct RepositoryRowView_Previews : PreviewProvider {
   static var previews: some View {
    return RepositoryRowView(viewModel: RepositoryRowViewModel(repository: Mocks.repositoryMock))
   }
}

