//
//  ModelDataAPI.swift
//  Floater

//


import Foundation


// Get request
class NetWorkManager {
    
    func getSpots(completion: @escaping (Result<[Landmark], Error>) -> Void){
       
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
               
                let landmarks = try! JSONDecoder().decode([Landmark].self, from: data!)
             
                completion(.success(landmarks))
               
               
            }
        }
        .resume()
    }
}
