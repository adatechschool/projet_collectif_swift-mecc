//
//  spotDetail.swift
//  Floater

//

import SwiftUI
import Foundation


struct spotDetail: View {
    var spot: Spot
    
    var body: some View {
            ScrollView {
                MapView(coordinate: spot.locationCoordinate)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)
                
                CircleImage(image: spot.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    HStack {
                    Text(spot.name)
                        .font(.title)
                        
                        RatingView(rating: spot.difficulty)
                    }
                    Divider()

                    Text("Pour en savoir plus sur \(spot.name) :")
                        .font(.title2)
                    
                    Spacer()
                    
                    Link("https://magicseaweed.com",
                         destination: URL(string: spot.link)!)
                    
                    Spacer()
                    Text(spot.about)
                }
                
                .padding()
                
            }
            .navigationTitle(spot.name)
            .navigationBarTitleDisplayMode(.inline)
        }
}


