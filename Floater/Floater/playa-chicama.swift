//
//  playa-chicama.swift
//  Floater
//
//  Created by Esther Vilpique on 02/05/2022.
//

import SwiftUI

struct playa_chicama: View {
    var body: some View {
        Image("playa")
        .resizable()
        .frame(width: 150, height: 150)
        .clipShape(Circle())
        .overlay {
            Circle().stroke(.gray, lineWidth: 4)
        }
        .shadow(radius: 7)
    }
}

struct playa_chicama_Previews: PreviewProvider {
    static var previews: some View {
        playa_chicama()
    }
}
