//
//  FloaterApp.swift
//  Floater
//
//  Created by Esther Vilpique on 02/05/2022.
//

import SwiftUI

@main
struct FloaterApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
            welcome()
                .tabItem{
                    Label("Menu", systemImage: "house.fill")
                }
            SurfingTortoise()
                    .tabItem{
                        Label("Tortue?", systemImage: "tortoise.fill")
            }
        }
    }
}
}
