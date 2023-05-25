//
//  NavigationBasic.swift
//  SwitUIBasics
//
//  Created by Flavio Vinicius Campos on 22/03/23.
//

import SwiftUI

struct NavigationBasic: View {
    
    @State var name: String = ""
    @State var age: String = ""
    
    var body: some View {
        
        NavigationStack {
            VStack {
                
//                Text("Navigation Example")
//                    .font(.largeTitle)
                
                Spacer()
                
                VStack(alignment: .leading){
                    Text("Enter your name:").fontWeight(.medium)
                    TextField("Your name...", text: $name)
                        .accentColor(.blue)
                        .foregroundColor(.gray)
                }.padding()
                
                
                VStack(alignment: .leading){
                    Text("Enter your age:").fontWeight(.medium)
                    TextField("Your age...", text: $age)
                        .accentColor(.blue)
                        .foregroundColor(.gray)
                }.padding()
                
                Spacer()
                Spacer()
                
                NavigationLink(destination: {
                    DrinkingView(name: name,
                                 age: age,
                                 drinkingAge: 21)
                }, label: {
                    Text("Okay")
                        .font(.title)
                        .padding()
                        .overlay(
                            Capsule().stroke()
                        )
                })
            }
            .padding()
            .navigationTitle("Navigation Example")
        }
    }
}

struct DrinkingView: View {
    
    let name: String
    let age: String
    let drinkingAge: Int
    
    var numericalAge: Int {
        Int(age) ?? -1
    }
    
    var body: some View{
        
        ZStack{
            
            Color.blue.opacity(0.2).ignoresSafeArea()
            
            if numericalAge >= drinkingAge {
                Text("\(name.capitalized) Allowed to Drinking!")
            } else if numericalAge < 0 {
                Text("\(age) is NOT Valid!")
            }else{
                Text("\(name) NOT Allowed to Drinking!")
            }
        }
        
    }
    
}

struct NavigationBasic_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBasic()
    }
}
