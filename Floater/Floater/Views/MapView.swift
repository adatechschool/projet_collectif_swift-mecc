//
//  MapView.swift
//  Floater
//
//  Created by Esther Vilpique on 02/05/2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion()

    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
