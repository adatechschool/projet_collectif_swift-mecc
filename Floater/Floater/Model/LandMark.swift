//
//  LandMark.swift
//  Floater
//
//  Created by Esther Vilpique on 03/05/2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var id: Int
    var spot: String
    var description: String
    
    
    private var imageName: String
        var image: Image {
            Image(imageName)
        }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
           CLLocationCoordinate2D(
               latitude: coordinates.latitude,
               longitude: coordinates.longitude)
       }

        struct Coordinates: Hashable, Codable {
            var latitude: Double
            var longitude: Double
        }
}

