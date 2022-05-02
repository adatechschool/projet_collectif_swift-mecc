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
                        NavigationLink(destination:ContentPipeline()) {
                            pipeline()
                        }
                        
                    }
                    VStack {
                        Text("Superbank")
                            .font(.title)
                        Text("Gold Coast, Australia")
                        NavigationLink(destination:ContentSuperbank()) {
                            superbank()
                        }
                    }
                    VStack {
                        Text("Supertubes")
                            .font(.title)
                        Text("Jeffreys Bay, South Africa")
                        NavigationLink(destination:ContentSupertubes()) {
                            supertubes()
                        }
                    }
                    VStack {
                        Text("Playa Chicama")
                            .font(.title)
                        Text("Lima, Peru")
                        NavigationLink(destination:ContentPlaya()) {
                            playa_chicama()
                        }
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
