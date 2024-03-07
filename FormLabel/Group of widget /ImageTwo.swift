//
//  ImageTwo.swift
//  FormLabel
//
//  Created by MD  on 3/7/24.
//

import SwiftUI

struct ImageTwo: View {
    let pictures = [
        "Fantasy",
        "Horror",
        "Kids"
    ]
    let labels = [
        "Fantasy",
        "Horror",
        "Kids"
    ]
    @State private var selectedPicture = Int.random(in: 0...2)
    var body: some View {
        Image(pictures[selectedPicture])
            .resizable()
            .scaledToFit()
            .onTapGesture {
                selectedPicture = Int.random(in: 0...2)
            }
            .accessibilityLabel(labels[selectedPicture])
            .accessibilityAddTraits(.isButton)
        
    
       
    }
}

#Preview {
    ImageTwo()
}
