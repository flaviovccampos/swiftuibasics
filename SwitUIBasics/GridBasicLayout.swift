//
//  GridBasicLayout.swift
//  SwitUIBasics
//
//  Created by Flavio Vinicius Campos on 22/03/23.
//

import SwiftUI

struct GridBasicLayout: View {
    
    var body: some View {
        ZStack {
            
            Color
                .gray
                .opacity(0.7)
                .ignoresSafeArea()
            
            Grid{
                GridRow{
                    Rectangle()
                        .fill(.red)
                        .cornerRadius(20)
                        .gridCellColumns(2)
                    
                    Rectangle()
                        .fill(.yellow)
                        .cornerRadius(20)
                }
                
                GridRow{
                    Rectangle()
                        .fill(.blue)
                        .cornerRadius(20)
                    
                    Rectangle()
                        .fill(.purple)
                        .cornerRadius(20)
                        .gridCellColumns(2)
                }
                
                GridRow{
                    Rectangle()
                        .fill(.green)
                        .cornerRadius(20)
                        .gridCellColumns(3)
                }
                
            }.padding()
            
        }
    
    }
}

struct GridsLayout_Previews: PreviewProvider {
    static var previews: some View {
        GridBasicLayout()
    }
}
