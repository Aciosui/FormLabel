//
//  ImageOne.swift
//  FormLabel
//
//  Created by MD  on 3/6/24.
//

import SwiftUI

struct ImageOne: View {
    var body: some View {
        
        Image(decorative: "princess")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .accessibilityLabel("Ruba Princess")
            .accessibilityHidden(true)
        Image("birthday")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .accessibilityLabel("Rubab's birthday cake")
           
    }
}

#Preview {
    ImageOne()
}
