//
//  ModelData.swift
//  Floater

//

import Foundation

//var spots: [Spot] = load("spotData.json")
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


//import Foundation
//
//
//
class ModelData {

    func getSpots(completion: @escaping (Result<[Spot], Error>) -> Void){

        guard let url = URL(string:"http://localhost:8080/spots") else {
           print("invalid url");

            return
        }
        URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            if let error = error {
                completion(.failure(error.localizedDescription as! Error))
                return
            }
            do {

                let spots = try! JSONDecoder().decode([Spot].self, from: data!)

                completion(.success(spots))
                return


            }
        }
        .resume()
    }
}

