//
//  ContentPlaya.swift
//  Floater
//
//  Created by Esther Vilpique on 02/05/2022.
//

import SwiftUI

struct ContentPlaya: View {
    var body: some View {
        VStack {
            MapView()
            .ignoresSafeArea(edges: .top)
            .frame(height: 300)
            
            playa_chicama()
            .offset(y: -130)
            .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Playa Chicama")
                    .font(.title)
                    .foregroundColor(.teal)
                HStack{
                    etoile()
                    etoile()
                    etoile()
                    etoile_vide()
                    etoile_vide()
                
                    Spacer()
                    Text("Lima, Peru")
                        .font(.subheadline)
                }
                
                Divider()
                Text("About Playa Chicama")
                .font(.title2)
                Text("Descriptive text goes here.")
                
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentPlaya_Previews: PreviewProvider {
    static var previews: some View {
        ContentPlaya()
    }
}
 
