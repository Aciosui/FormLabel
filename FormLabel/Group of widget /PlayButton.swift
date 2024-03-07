//
//  PlayButton.swift
//  FormLabel
//
//  Created by MD  on 3/6/24.
//

import SwiftUI

struct PlayButton: View {
    @Binding var isPlaying: Bool
    var body: some View {
        Button("Please Enroll"){
            isPlaying.toggle()
        }
        .accessibilityValue(isPlaying ? "Selected" : "Unselected")
        
    }
}

#Preview {
    PlayButton(isPlaying: .constant(false))
}
