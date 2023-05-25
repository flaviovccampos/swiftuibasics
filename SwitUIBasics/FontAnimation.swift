//
//  FontAnimation.swift
//  SwitUIBasics
//
//  Created by Flavio Vinicius Campos on 22/03/23.
//

import SwiftUI

struct FontAnimation: View {
    
    @State var textFontSize: Font = .largeTitle
    @State var toggleFont: Bool = false
    
    var body: some View {
        
        ZStack{
            Color.purple
                .opacity(0.7)
                .ignoresSafeArea()
            
            VStack{
                
                Spacer()
                
                Text("Animation Text!!")
                    .font(toggleFont ? .caption : textFontSize)
                    .fontWeight(.bold)
                
                Spacer()
                
                Button(action: {
                    withAnimation{
                        toggleFont.toggle()
                    }
                    
                },label: {
                    Text("Click Me!!")
                        .font(.title)
                        .fontWeight(.semibold)
                })
                
            }.padding()
            
        }
        
    }
}

struct FontAnimation_Previews: PreviewProvider {
    static var previews: some View {
        FontAnimation()
    }
}
