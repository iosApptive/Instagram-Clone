//
//  FeedCell.swift
//  InstaClone
//
//  Created by Guyvenson Cadet on 9/7/25.
//
import SwiftUI


struct FeedCell: View {
    var body: some View {
        VStack {
            
            feedCellHeader()
            
            // POST IMAGE
            Image(.boston)
                .resizable()
                .scaledToFill()
                .frame(height: 340)
                .frame(width: UIScreen.main.bounds.width)
            
           feedActivity()
            
            Text("this is a long post text this is a long post text this is a long post text")
                .multilineTextAlignment(.leading)
                .font(.system(size: 17))
                .padding([.horizontal,.bottom])
                .padding(.top,5)
            
        }
    }
    
    // MARK: - HEADER
    func feedCellHeader() -> some View {
        HStack {
            
            Image(.boston)
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text("John Doe")
                    .fontWeight(.medium)
                    .font(.subheadline)
                Text("New York")
                    .font(.caption)
            }
            Spacer()
            Image(systemName: "ellipsis")
        }
        .padding(.horizontal)
    }
    
    func feedActivity() -> some View {
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
        .padding([.horizontal,.top])
    }
    
}
