//
//  ContentSuperbank.swift
//  Floater
//
//  Created by Esther Vilpique on 02/05/2022.
//

import SwiftUI

struct ContentSuperbank: View {
    var body: some View {
        VStack {
            MapView()
            .ignoresSafeArea(edges: .top)
            .frame(height: 300)
            
            superbank()
            .offset(y: -130)
            .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Superbank")
                    .font(.title)
                    .foregroundColor(.teal)
                HStack{
                    etoile()
                    etoile()
                    etoile()
                    etoile()
                    etoile_vide()
                
                    Spacer()
                    Text("Gold Coast, Australia")
                        .font(.subheadline)
                }
                
                Divider()
                Text("About Superbank")
                .font(.title2)
                Text("Descriptive text goes here.")
                
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentSuperbank_Previews: PreviewProvider {
    static var previews: some View {
        ContentSuperbank()
    }
}
 
