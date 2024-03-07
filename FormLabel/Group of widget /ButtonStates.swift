//
//  ButtonStates.swift
//  FormLabel
//
//  Created by MD  on 3/5/24.
//

import SwiftUI

struct ButtonStates: View {
    @State private var isPlaying: Bool = false
    
    var body: some View {
   
        
//        Button(action: {
//            self.isPlaying.toggle()
//        }) {
//            Image(systemName: isPlaying ? "pause.circle" : "play.circle")
//        }
        Button(isPlaying ? "Pause" : "Play") {
            isPlaying.toggle()
        }
        .accessibilityValue(isPlaying ? "Selected" : "Not Selected")
    }
}

#Preview {
    ButtonStates()
}
