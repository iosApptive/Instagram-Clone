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
                HStack {
                    Rectangle()
                        .fill(.cyan)
                        .frame(width: 100, height: 40)
                    Spacer()
                    Rectangle()
                        .fill(.cyan)
                        .frame(width: 100, height: 40)
                    Rectangle()
                        .fill(.cyan)
                        .frame(width: 100, height: 40)
                }
                .padding(.horizontal)
                
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(0..<14) { friend in
                            Circle()
                                .fill(.green)
                                .frame(width: 100, height: 100)
                        }
                    }
                    .padding([.horizontal, .bottom])
                }
                
                
                ForEach(0..<14) { feed in
                    FeedCell()
                }
                
            }
        }
    }
}

#Preview {
    HomeView()
}

struct FeedCell: View {
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .fill(.red)
                    .frame(width: 40, height: 40)
                VStack(alignment: .leading) {
                    Text("John Doe")
                        .font(.subheadline)
                    Text("New York")
                        .font(.caption)
                }
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            
            Rectangle()
                .fill(.orange)
                .frame(height: 350)
            
            HStack {
                Image(systemName: "heart")
                    .font(.title2)
                Text("123")
                Image(systemName: "bubble.right")
                    .font(.title2)
                Text("45")
                Image(systemName: "paperplane")
                    .font(.title2)
                Text("67")

                Spacer()
                Image(systemName: "bookmark")
                    .font(.title2)
            }
            .font(.subheadline)
            .padding([.horizontal,.bottom])
            .padding(.top,8)
            
            
        }
    }
}
