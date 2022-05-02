//
//  ContentView.swift
//  Floater
//
//  Created by Esther Vilpique on 02/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
            .ignoresSafeArea(edges: .top)
            .frame(height: 300)
            
            pipeline()
            .offset(y: -130)
            .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Nom du spot")
                    .font(.title)
                .foregroundColor(.teal)
                
                HStack {
                    Text("Difficulté (étoiles)")
                        .font(.subheadline)
                    
                    Spacer()
                    Text("Localisation")
                        .font(.subheadline)
                }
                
                Divider()
                Text("About Turtle Rock")
                .font(.title2)
                Text("Descriptive text goes here.")
                
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
