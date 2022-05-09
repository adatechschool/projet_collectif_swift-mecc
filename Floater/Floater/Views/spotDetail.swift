//
//  spotDetail.swift
//  Floater
//
//  Created by Esther Vilpique on 05/05/2022.
//

import SwiftUI

struct spotDetail: View {
    var landmark: Landmark
    
    var body: some View {
            ScrollView {
                MapView(coordinate: landmark.locationCoordinate)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)
                
                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    Text(landmark.spot)
                        .font(.title)
                    
                    Divider()

                    Text("About \(landmark.spot)")
                        .font(.title2)
                    Text(landmark.description)
                }
                
                .padding()
                
            }
            .navigationTitle(landmark.spot)
            .navigationBarTitleDisplayMode(.inline)
        }
}

struct spotDetail_Previews: PreviewProvider {
    static var previews: some View {
        spotDetail(landmark: landmarks[0])
    }
}
