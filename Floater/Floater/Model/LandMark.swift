//
//  LandMark.swift
//  Floater

//

import Foundation
import SwiftUI
import CoreLocation


struct Spot: Hashable, Codable, Identifiable {
    var name: String
    var id: Int
    var link: String
    var difficulty: Float
    var about: String
    
    
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

typealias Spots = [Spot]
