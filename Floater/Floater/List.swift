//
//  SwiftUIView.swift
//  Floater
//
//  Created by Esther Vilpique on 02/05/2022.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    VStack {
                        Text("Pipeline")
                            .font(.title)
                        Text("Oahu, Hawaii")
                        NavigationLink(destination:ContentView()) {
                            pipeline()
                        }
                        
                    }
                    VStack {
                        Text("Superbank")
                            .font(.title)
                        Text("Gold Coast, Australia")
                        superbank()
                    }
                    VStack {
                        Text("Supertubes")
                            .font(.title)
                        Text("Jeffreys Bay, South Africa")
                        supertubes()
                    }
                    VStack {
                        Text("Playa Chicama")
                            .font(.title)
                        Text("Lima, Peru")
                        playa_chicama()
                    }
                }
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
