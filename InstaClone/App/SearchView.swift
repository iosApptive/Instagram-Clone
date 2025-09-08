//
//  SearchView.swift
//  InstaClone
//
//  Created by Guyvenson Cadet on 9/7/25.
//

import SwiftUI

struct SearchView: View {
    @State var searchText: String = ""
    private let gridItems:[GridItem] = [
        GridItem(.flexible(),spacing: 1),
        GridItem(.flexible(),spacing: 1),
        GridItem(.flexible(),spacing: 1)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: gridItems,spacing: 1) {
                    ForEach(0 ..< 5) { item in
                        PostGrid()
                    }
                }
            }
            .searchable(text: $searchText)
        }
    }
}

#Preview {
    SearchView()
}
