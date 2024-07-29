//
//  GroupButton.swift
//  FormLabel
//
//  Created by MD  on 3/7/24.
//

import SwiftUI

struct GroupButton: View {
    @State private var value = 10
    
    var body: some View {
        VStack {
            Text("Value: \(value)")
            Button("Increment") {
                value += 1
            }
            Button("Decrement") {
                value -= 1
            }
        }
        .accessibilityElement()
        .accessibilityLabel("Value")
        .accessibilityValue(String(value))        /* provide dynamic label */
        .accessibilityAdjustableAction { direction in       /* modifier, you provide a way for VoiceOver users to change the page by using swipe up or down gestures */
            switch direction {
            case .increment:
                value += 1
            case .decrement:
                value -= 1
            default:
                print("Not handled")
            }
        }
    }
}

#Preview {
    GroupButton()
}
