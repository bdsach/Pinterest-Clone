//
//  MySecondView.swift
//  PinterestClone
//
//  Created by Bandit Silachai on 10/2/24.
//

import SwiftUI
import MasonryStack

struct MySecondView: View {
    let items = Array(1...20).map { $0 }
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                MasonryVStack(columns: 2, spacing: 10) {
                    ForEach(items, id: \.self) { item in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Gradient(colors: [.gray.opacity(0.2), .gray.opacity(0.4)]))
                            .frame(height:
                                    geometry.size.height / CGFloat.random(in: 3.5...5.0)
                            )
                    }
                }
                .padding(.horizontal, 10)
            }
        }
        
        .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .center)
        .background(.white)
    }
}

#Preview {
    MySecondView()
}
