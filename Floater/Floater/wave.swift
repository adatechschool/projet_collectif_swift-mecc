//
//  wave.swift
//  Floater
//
//  Created by Esther Vilpique on 02/05/2022.
//

import SwiftUI

struct wave: View {
    var body: some View {
        Image("wave")
            .resizable()
            .frame(width: 250, height: 250)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.gray, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct wave_Previews: PreviewProvider {
    static var previews: some View {
        wave()
    }
}
