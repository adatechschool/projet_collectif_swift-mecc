//
//  landmarkRow.swift
//  Floater

//

import SwiftUI

struct SpotRow: View {
    var spot: Spot

    var body: some View {
        HStack {
            spot.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(spot.name)

            Spacer()
        }
    }
}


