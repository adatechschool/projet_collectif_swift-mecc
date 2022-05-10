//
//  welcome.swift
//  Floater
//
//  Created by Esther Vilpique on 10/05/2022.
//

import SwiftUI

struct welcome: View {

@State var isActive:Bool = false

    var body: some View {
        VStack {
        if self.isActive {
            LandmarkList()
            } else {
        Text("Floater")
            .font(.title)
            .fontWeight(.black)
            .foregroundColor(Color.teal)
            }
        }
        
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct welcome_Previews: PreviewProvider {
    static var previews: some View {
        welcome()
    }
}
