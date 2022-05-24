//
//  SwiftUIView.swift
//  Floater

//

import SwiftUI

struct SpotList: View {
    
    @State var Spots = [Spot]()
    
    var body: some View {
        NavigationView {
            List(Spots, id: \.self) { spot in
                HStack {
                    NavigationLink {
                        spotDetail(spot: spot)
                    } label: {
                        SpotRow(spot: spot)
                    }
                }
            }
            .navigationTitle("Spots de surf")
        }
        .onAppear(){
            getSpotData()
        }
        }
    }


extension SpotList {
    func getSpotData(){
        ModelData().getSpots {(result) in
            print(result)
        switch result {
        case .success(let spots): DispatchQueue.main.async {
            self.Spots = spots
            print(spots)
        }
        case .failure(let error):
            print(error.localizedDescription)
        }
        }
    }
}
