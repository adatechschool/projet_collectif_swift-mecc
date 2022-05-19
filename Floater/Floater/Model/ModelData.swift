//
//  ModelData.swift
//  Floater
//
//  Created by Esther Vilpique on 03/05/2022.
//

import Foundation
import Combine

//var landmarks: [Landmark] = load("landmarkData.json")
//
//func load<T: Decodable>(_ filename: String) -> T {
//    let data: Data
//
//    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
//    else {
//        fatalError("Couldn't find \(filename) in main bundle.")
//    }
//
//    do {
//        data = try Data(contentsOf: file)
//    } catch {
//        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
//    }
//
//    do {
//        let decoder = JSONDecoder()
//        return try decoder.decode(T.self, from: data)
//    } catch {
//        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
//    }
//}




final class ModelSurfSpotsData: ObservableObject {
    @Published var landmarks: [Spot] = []

    func getSpots() {
        guard let url = URL(string: "http://localhost:8080/spots") else { fatalError("Missing URL") }

        let urlRequest = URLRequest(url: url)

        let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            if let error = error {
                print("Request error: ", error)
                return
            }

            guard let response = response as? HTTPURLResponse else { return }

            if response.statusCode == 200 {
                guard let data = data else { return }
                                DispatchQueue.main.async {
                    do {
                        let decodedRecords = try JSONDecoder().decode(Landmark.self, from: data)
                        self.landmarks = decodedRecords.spots
                    } catch let error {
                        print("Error decoding: ", error)
                    }
                }
            }
        }

        dataTask.resume()
    }
}
