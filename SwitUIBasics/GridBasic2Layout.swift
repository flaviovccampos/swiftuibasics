//
//  GridBasic2Layout.swift
//  SwitUIBasics
//
//  Created by Flavio Vinicius Campos on 22/03/23.
//

import SwiftUI

struct GridBasic2Layout: View {
    var body: some View {
        ZStack {
            
            Color
                .gray
                .opacity(0.7)
                .ignoresSafeArea()
            
            Grid{
                GridRow{
                    Rect(color: .red, count: 1, total: 3)
                    Rect(color: .blue, count: 2, total: 3)
                }
                GridRow{
                    Rect(color: .yellow, count: 1, total: 3)
                    Rect(color: .green, count: 1, total: 3)
                    Rect(color: .black, count: 1, total: 3)
                }
            }.padding()
        }
    }
}

struct Rect: View {
    
    let color: Color
    let count: Int
    let total: Int
    
    var text: String {
        "\(count) out of \(total)"
    }
    
    var body: some View {
        Rectangle()
            .fill(color.opacity(0.5))
            .cornerRadius(20)
            .overlay(
                Text(text)
                    .font(.subheadline)
                    .fontWeight(.semibold)
            )
            .gridCellColumns(count)
    }
}

struct GridBasic2Layout_Previews: PreviewProvider {
    static var previews: some View {
        GridBasic2Layout()
    }
}
