//
//  spotDetail.swift
//  Floater
//
//  Created by Esther Vilpique on 05/05/2022.
//

import SwiftUI
import Foundation


struct spotDetail: View {
    var landmark: Spot
    
    var body: some View {
            ScrollView {
//                MapView(coordinate: landmark.coordinates)
//                    .ignoresSafeArea(edges: .top)
//                    .frame(height: 300)
                
//                CircleImage(image: landmark.imageName)
//                    .offset(y: -130)
//                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text(landmark.name)
                        .font(.title)
                        
                        RatingView(rating: Float(landmark.difficulty))
                    }
                    Divider()

                    Text("Pour en savoir plus sur \(landmark.name) :")
                        .font(.title2)
                    Link("https://magicseaweed.com",
                         destination: URL(string: landmark.link)!)
                }
                
                .padding()
                
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
        }
}

struct spotDetail_Previews: PreviewProvider {
    static var modelSurfSpotsData = ModelSurfSpotsData()
    
    static var previews: some View {
        spotDetail(landmark: ModelSurfSpotsData().landmarks[0]).environmentObject(modelSurfSpotsData)
    }
}
