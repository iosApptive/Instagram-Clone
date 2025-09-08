//
//  ReelsView.swift
//  InstaClone
//
//  Created by Guyvenson Cadet on 9/7/25.
//

import SwiftUI

struct ReelsView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing:0) {
                ForEach(0..<6) { index in
                    ReelsCard(index: index)
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
        .edgesIgnoringSafeArea(.vertical)
    }
}

#Preview {
    ReelsView()
}


struct ReelsCard:View {
    let index:Int
    let colors:[Color] = [.red,.green,.yellow,.orange,.purple,.blue]
    
    
    var body: some View {
        ZStack(alignment:.bottom) {
            Rectangle()
                .fill(colors[index])
                .containerRelativeFrame([.horizontal,.vertical])
            
            ZStack(alignment:.bottom) {
                HStack(alignment:.bottom) {
                    
                    VStack(alignment:.leading) {

                        HStack {
                            Image(.boston)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            
                            Text("Guyvenson cadet")
                            
                            Text("Follow")
                                .frame(height: 30)
                                .padding(.horizontal,6)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(lineWidth: 1)
                                )

                        }
                        
                        Text("Guyvenson cadet")
                    }
                    
                    Spacer()
                    
                    VStack(spacing:25) {
                        postActivity("heart", value: 23)
                        postActivity("bubble.right", value: 23)
                        postActivity("arrow.2.squarepath", value: 23)
                        postActivity("paperplane", value: 23)
                        postActivity("ellipsis", value: nil)

                    }
                    
                }
                .foregroundStyle(.white)
                .padding(.bottom,100)
            }
            .frame(maxHeight: .infinity,alignment: .bottom)
            .padding(.horizontal)
        }
        
    }
    
    func postActivity(_ icon:String, value:Int?) -> some View {
        VStack(spacing:8) {
            Image(systemName:icon)
                .font(.title)
            if let value = value {
                Text("\(value)")
            }
        }
    }
    
    
}
