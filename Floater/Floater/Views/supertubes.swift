//
//  supertubes.swift
//  Floater
//
//  Created by Esther Vilpique on 02/05/2022.
//

import SwiftUI

struct supertubes: View {
    var body: some View {
        Image("supertubes")
        .resizable()
        .frame(width: 150, height: 150)
        .clipShape(Circle())
        .overlay {
            Circle().stroke(.gray, lineWidth: 4)
        }
        .shadow(radius: 7)
    }
}

struct supertubes_Previews: PreviewProvider {
    static var previews: some View {
        supertubes()
    }
}
