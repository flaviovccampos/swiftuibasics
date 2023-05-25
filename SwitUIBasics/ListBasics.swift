//
//  ListBasics.swift
//  SwitUIBasics
//
//  Created by Flavio Vinicius Campos on 24/05/23.
//

import SwiftUI

struct ListBasics: View {
    
    let people: [Person] = [
        .init(
            name: "Bert",
            hobby: "baseball",
            hobbyImage: "figure.baseball"
        ),
        .init(
            name: "Ernie",
            hobby: "sky dives",
            hobbyImage: nil
        ),
        .init(
            name: "Bert",
            hobby: "cricket",
            hobbyImage: "figure.cricket"
        ),
        .init(
            name: "Cookie",
            hobby: "skatebaord",
            hobbyImage: nil
        )
    ]
    
    var body: some View {
    
        List {
            ForEach(people) { person in
                RowItem(person: person)
                    .listRowSeparator(.hidden)
            }
        }
        
    }
}



struct Person: Identifiable{
    let id = UUID()
    let name: String
    let hobby: String
    let hobbyImage: String?
}

struct ListBasics_Previews: PreviewProvider {
    static var previews: some View {
        ListBasics()
    }
}
