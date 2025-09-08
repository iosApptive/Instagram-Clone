//
//  NavHeaderView.swift
//  InstaClone
//
//  Created by Guyvenson Cadet on 9/7/25.
//

import SwiftUI

struct NavHeaderView: View {
    let imageName: String?
    let iconLeft: String?
    let iconRight: String?
    var body: some View {
        HStack {
            if let imageName {
                Text(imageName)
                    .fontWeight(.semibold)
            } else {
                Image(.instagram)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 60)
            }
            
            Spacer()
            HStack(spacing:16) {
                Image(systemName: iconLeft ?? "")
                Image(systemName: iconRight ?? "")
            }
        }
        .font(.title)
        .padding(.horizontal)
    }
}

#Preview {
    NavHeaderView(imageName: "instagram", iconLeft: "heart", iconRight: "paperplane")
}
