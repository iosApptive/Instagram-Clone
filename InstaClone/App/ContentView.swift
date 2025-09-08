//
//  ContentView.swift
//  InstaClone
//
//  Created by Guyvenson Cadet on 9/7/25.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Int = 3
    @State private var isPosting: Bool = false
    
    var body: some View {
        TabView(selection:$selection) {
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
            
            ProfileView()
                .tag(4)
                .tabItem {
                    Label("", systemImage: "person")
                }
        }
        .onChange(of:selection) { _, newValue in
            if newValue == 2 {
                isPosting.toggle()
            }
        }
        .fullScreenCover(isPresented: $isPosting) {
            AddPostView()
        }

    }
}

#Preview {
    ContentView()
}
