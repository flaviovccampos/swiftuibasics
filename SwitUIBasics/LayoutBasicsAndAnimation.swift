//
//  ContentView.swift
//  SwitUIBasics
//
//  Created by Flavio Vinicius Campos on 27/02/23.
//

import SwiftUI

struct LayoutBasicsAndAnimation: View {
    
    let linearGradient1: [Color] = [
        .black, .white, .blue
    ]
    
    let linearGradient2: [Color] = [
        .red, .purple, .green, .pink
    ]
    
    @State private var screenTapped: Bool = false
    
    let rotationAngle: CGFloat = 360.0
    
    var body: some View {
        ZStack {
            
            LinearGradient(colors: screenTapped ? linearGradient1 : linearGradient2,
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()
                .opacity(0.8)
            
            VStack {
                
                Spacer()
                
                Text(screenTapped
                     ? "The Basics of SwiftUI Basics"
                     : "To know what you know and whats you do now know, thas is true knowledge.")
                .font(screenTapped ? .largeTitle : .title)
                    .fontWeight(.semibold)
                    .foregroundColor(.red)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .rotation3DEffect(.degrees(screenTapped ? 0 : rotationAngle),
                                  axis: (x: 1, y: 1, z: 0))
                
                Spacer()
                
                Text("Another line of text")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(screenTapped ? .blue : .white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .rotation3DEffect(.degrees(screenTapped ? 0 : rotationAngle),
                                  axis: (x: 1, y: 1, z: 0))
                
                Spacer()
            }
            
        }
        .onTapGesture {
            withAnimation(.easeInOut(duration: 1)){
                screenTapped.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LayoutBasicsAndAnimation()
    }
}
