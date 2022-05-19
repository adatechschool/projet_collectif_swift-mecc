//
//  LandMark.swift
//  Floater
//
//  Created by Esther Vilpique on 03/05/2022.
//

import Foundation
import SwiftUI
import CoreLocation

//
//struct Landmark: Hashable, Codable, Identifiable {
//    var id: Int
//    var name: String
//    var link: String
//    var difficulty: Float
//
//
//    private var imageName: String
//        var image: Image {
//            Image(imageName)
//        }
//
//    private var coordinates: Coordinates
//    var locationCoordinate: CLLocationCoordinate2D {
//           CLLocationCoordinate2D(
//               latitude: coordinates.latitude,
//               longitude: coordinates.longitude)
//       }
//
//        struct Coordinates: Hashable, Codable {
//            var latitude: Double
//            var longitude: Double
//        }
//}

// MARK: - Landmark
struct Landmark: Codable {
    let spots: [Spot]
}

// MARK: - Spot
struct Spot: Codable, Identifiable {
    let name: String
    let id: Int
    let coordinates: Coordinates
    let link: String
    let imageName: String
    let difficulty: Int
}

// MARK: - Coordinates
struct Coordinates: Codable {
    let longitude, latitude: Double
}
