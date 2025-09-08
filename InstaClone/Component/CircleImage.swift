//
//  CircleImage.swift
//  InstaClone
//
//  Created by Guyvenson Cadet on 9/7/25.
//

import SwiftUI

struct CircleImage: View {
    let image: String
    let size: CGFloat 
    var body: some View {
        ZStack {
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: size, height: size)
                .clipShape(Circle())
            
                
            Circle()
                .stroke(LinearGradient(colors: [.pink, .purple], startPoint: .leading, endPoint: .trailing),lineWidth: 3)
                .frame(width: size + 10, height: size + 10)
        }
        .frame(height: size + 30)
        .padding(.bottom)

    }
}


