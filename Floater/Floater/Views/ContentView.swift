//
//  ContentView.swift
//  Floater

//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            SpotList()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
