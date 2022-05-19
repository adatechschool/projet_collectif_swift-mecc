//
//  SwiftUIView.swift
//  Floater
//
//  Created by Esther Vilpique on 02/05/2022.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var ModelSurfSpotsData: ModelSurfSpotsData
    
    var allSpots: [Spot] {
        ModelSurfSpotsData.landmarks
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(allSpots) {
                    landmark in
                    NavigationLink {
                        spotDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .onAppear(perform:{
                ModelSurfSpotsData.getSpots()
            })
            .navigationTitle("Spots de surf")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList().environmentObject(ModelSurfSpotsData())
    }
}
