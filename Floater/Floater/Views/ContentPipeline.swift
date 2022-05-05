//
//  ContentPipeline.swift
//  Floater
//
//  Created by Esther Vilpique on 02/05/2022.
//

import SwiftUI

struct ContentPipeline: View {
    var body: some View {
        VStack {
            MapView()
            .ignoresSafeArea(edges: .top)
            .frame(height: 300)
            
            pipeline()
            .offset(y: -130)
            .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Pipeline")
                    .font(.title)
                    .foregroundColor(.teal)
                HStack{
                    etoile()
                    etoile()
                    etoile()
                    etoile()
                    etoile_vide()
                
                    Spacer()
                    Text("Oahu, Hawaii")
                        .font(.subheadline)
                }
                
                Divider()
                Text("About Pipeline")
                .font(.title2)
                Text("Descriptive text goes here.")
                
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentPipeline_Previews: PreviewProvider {
    static var previews: some View {
        ContentPipeline()
    }
}
 