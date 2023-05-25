//
//  RowItem.swift
//  SwitUIBasics
//
//  Created by Flavio Vinicius Campos on 24/05/23.
//

import SwiftUI

struct RowItem: View{
    
    let person: Person
    
    var body: some View{
        HStack {
            VStack(
                alignment: .leading,
                spacing: 3){
                    Text(person.name.capitalized)
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                Text(person.hobby.capitalized)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.orange)
            }
            Spacer()
            if let hobbyImage = person.hobbyImage {
                Image(systemName: hobbyImage)
                    .imageScale(.large)
                    .foregroundColor(.white)
                    .padding()
                    .background(Circle().stroke(.white))
            }
        }
        .padding()
        .background(.black)
        .cornerRadius(10)
    }
    
}

struct RowItem_Previews: PreviewProvider {
    static var previews: some View {
        RowItem(person: .init(
            name: "Bert",
            hobby: "baseball",
            hobbyImage: "figure.baseball"
        ))
        .padding()
    }
}
