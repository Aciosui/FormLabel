//
//  ImageButton.swift
//  FormLabel
//
//  Created by MD  on 3/7/24.
//

import SwiftUI

struct ImageButton: View {
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
    @State private var selectedPictures = Int.random(in: 0...2)
    
    var body: some View {
        Button {
            selectedPictures = Int.random(in: 0...2)
        } label: {
            Image(pictures[selectedPictures])
                .resizable()
                .scaledToFit()
        }
        .accessibilityLabel(labels[selectedPictures])
    }
}

#Preview {
    ImageButton()
}
