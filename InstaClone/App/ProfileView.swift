//
//  ProfileView.swift
//  InstaClone
//
//  Created by Guyvenson Cadet on 9/7/25.
//

import SwiftUI

struct ProfileView: View {
    @State private var category: UserPostCategory = .post
    private let gridItems:[GridItem] = [
        GridItem(.flexible(),spacing: 1),
        GridItem(.flexible(),spacing: 1),
        GridItem(.flexible(),spacing: 1)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                NavHeaderView(imageName: "iosapptive", iconLeft: "plus.app", iconRight: "line.3.horizontal")
                
                VStack {
                    VStack(alignment:.leading)  {
                        
                        HStack {
                            CircleImage(image: "boston", size: 90)
                                .padding(.trailing)
                            UserStats(value: 12, text: "posts")
                            UserStats(value: 84, text: "followers")
                            UserStats(value: 23, text: "following")
                        }
                        
                        Text("IOS Mobile Developer")
                            .font(.subheadline)
                        HStack {
                            Image(systemName: "paperclip")
                            Text("IOS Mobile Developer")
                        }
                        .font(.subheadline)
                        .foregroundStyle(.purple)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        
                        
                        VStack {
                            VStack(alignment:.leading) {
                                Text("Professional dashboard")
                                HStack {
                                    Image(systemName: "arrow.up.right")
                                        .font(.caption)
                                    Text("10 plus views in the last 30 days")
                                        .foregroundStyle(.secondary)
                                        .font(.caption)
                                }
                            }
                            .padding(.horizontal)
                        }
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .frame(height: 70)
                        .background(Color(.systemGray6),in:RoundedRectangle(cornerRadius: 12))
                        .padding(.top)
                        
                        
                        // MARK: - Edit
                        HStack {
                            ProfileButton("edit")
                            ProfileButton("share")
                        }
                        
                    }
                    .padding(.horizontal)
                    
                    UserCategoryView(category: $category)
                    
                    // MARK: - POST
                    LazyVGrid(columns: gridItems,spacing: 1) {
                        ForEach(0..<6) {  post in
                            PostGrid()
                        }
                    }
                    
                }
                
                
                
            }
        }
    }
    
    func ProfileButton(_ title:String) -> some View {
        Text("\(title.capitalized) profile")
            .frame(height: 40)
            .frame(maxWidth: .infinity)
            .background(Color(.systemGray6),in:RoundedRectangle(cornerRadius: 12))
    }
    
    func UserStats(value:Int, text:String) -> some View {
        VStack(alignment:.leading) {
            Text("\(value)")
                .font(.title3)
                .fontWeight(.semibold)
            Text(text)
                .font(.subheadline)
        }
        .padding(.trailing)
    }
}

#Preview {
    ProfileView()
}

struct UserCategoryView: View {
    @Binding var category:UserPostCategory
    @Namespace var namespace
    
    var body: some View {
        HStack {
            ForEach(UserPostCategory.allCases) { item in
                VStack {
                    Image(systemName: item.icon)
                        .foregroundStyle(toggleCategory(item))
                        .onTapGesture {
                            withAnimation(.snappy) {
                                category = item
                            }
                        }
                    
                    if self.category == item {
                        Rectangle()
                            .frame(height: 2)
                            .matchedTransitionSource(id: "slide", in: namespace)

                            .offset(y: 7)
                    } else {
                        Rectangle()
                            .fill(.clear)
                            .frame(height: 2)
                            .offset(y: 7)
                    }
                    
                }
                .frame(maxWidth: .infinity)

            }

        }
        .font(.title2)
        .padding(.horizontal)
    }
    
    func toggleCategory(_ category:UserPostCategory) -> Color {
        self.category == category ? .black : .secondary
    }
}


enum UserPostCategory:Identifiable,CaseIterable {
    case post, video, saved
    
    var icon:String {
        switch self {
        case .post:
            return "square.grid.3x3.fill"
        case .video:
            return "play.square"
        case .saved:
            return "person.fill"
        }
    }
    
    var id:UUID {
        UUID()
    }
}
