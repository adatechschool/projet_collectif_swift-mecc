//
//  landmarkRow.swift
//  Floater
//
//  Created by Esther Vilpique on 09/05/2022.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Spot

    var body: some View {
        HStack {
//            landmark.spots[0].imageName
//                .resizable()
//                .frame(width: 50, height: 50)
            Text(landmark.name)

            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelSurfSpotsData().landmarks
    static var previews: some View {
        LandmarkRow(landmark: landmarks[0])
    }
}
