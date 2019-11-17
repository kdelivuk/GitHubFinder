//
//  SettingsView.swift
//  GitHubFinder
//
//  Created by Kristijan Delivuk on 17/11/2019.
//  Copyright © 2019 Kristijan Delivuk. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Log in with GitHub")
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
