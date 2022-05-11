//
//  spotDetail.swift
//  Floater
//
//  Created by Esther Vilpique on 05/05/2022.
//

import SwiftUI
import Foundation


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

                    Text("Pour en savoir plus sur \(landmark.spot) :")
                        .font(.title2)
                    Link("https://magicseaweed.com",
                         destination: URL(string: landmark.link)!)
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
