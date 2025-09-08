//
//  PostGrid.swift
//  InstaClone
//
//  Created by Guyvenson Cadet on 9/7/25.
//
import SwiftUI

struct PostGrid: View {
    var body: some View {
        Image(.boston)
            .resizable()
            .scaledToFill()
            .frame(height: 150)
            .frame(width: UIScreen.main.bounds.width / 3 - 1)
            .clipped()
    }
}


