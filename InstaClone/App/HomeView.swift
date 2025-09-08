//
//  HomeView.swift
//  InstaClone
//
//  Created by Guyvenson Cadet on 9/7/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                
                NavHeaderView(imageName: "", iconLeft: "heart", iconRight: "paperplane")
                
                // MARK: - FRIENDS
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing:20) {
                        ForEach(0..<14) { index in
                            CircleImage(image: "boston", size: 90)
                        }
                    }.padding(.horizontal)
                }
                
                // MARK: - FEED
                ForEach(0..<20) { index in
                    FeedCell()
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
