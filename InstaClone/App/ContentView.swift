//
//  ContentView.swift
//  InstaClone
//
//  Created by Guyvenson Cadet on 9/7/25.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Int = 0
    var body: some View {
        TabView {
            HomeView()
                .tag(0)
                .tabItem {
                    Label("", systemImage: "house")
                }
            
            SearchView()
                .tag(1)
                .tabItem {
                    Label("", systemImage: "magnifyingglass")
                }
            
            AddPostView()
                .tag(2)
                .tabItem {
                    Label("", systemImage: "plus.app")
                }
            
            ReelsView()
                .tag(3)
                .tabItem {
                    Label("", systemImage: "play.square")
                }
            
            HomeView()
                .tag(4)
                .tabItem {
                    Label("", systemImage: "person")
                }
        }

    }
}

#Preview {
    ContentView()
}
