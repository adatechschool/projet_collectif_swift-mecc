//
//  ContentSupertubes.swift
//  Floater
//
//  Created by Esther Vilpique on 02/05/2022.
//

import SwiftUI

struct ContentSupertubes: View {
    var body: some View {
        VStack {
            MapView()
            .ignoresSafeArea(edges: .top)
            .frame(height: 300)
            
            supertubes()
            .offset(y: -130)
            .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Supertubes")
                    .font(.title)
                    .foregroundColor(.teal)
                HStack{
                    etoile()
                    etoile()
                    etoile()
                    etoile()
                    etoile()
                
                    Spacer()
                    Text("Jeffreys Bay, South Africa")
                        .font(.subheadline)
                }
                
                Divider()
                Text("About Supertubes")
                .font(.title2)
                Text("Descriptive text goes here.")
                
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentSupertubes_Previews: PreviewProvider {
    static var previews: some View {
        ContentSupertubes()
    }
}
 
