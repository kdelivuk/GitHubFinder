//
//  MainTabView.swift
//  GitHubFinder
//
//  Created by Kristijan Delivuk on 17/11/2019.
//  Copyright © 2019 Kristijan Delivuk. All rights reserved.
//

import SwiftUI
import API

struct MainTabView: View {
    
    private var repositorySearchView: RepositorySearchView {
        let connector: GitHubType = Connector()
        let gitHubService = GitHubService(connector: connector)
        let viewModel = RepositorySearchViewModel(gitHubService: gitHubService)
        let contentView = RepositorySearchView(viewModel: viewModel)
        return contentView
    }
    
    private var settingsView: SettingsView {
        return SettingsView()
    }
    
    var body: some View {
        TabView {
            repositorySearchView.tabItem {
                Image(systemName: "1.circle")
                Text("Search")
            }.tag(0)
            settingsView.tabItem {
                Image(systemName: "2.circle")
                Text("Settings")
            }.tag(1)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
