//
//  AccessibilityElement.swift
//  FormLabel
//
//  Created by MD  on 3/6/24.
//

import SwiftUI

struct AccessibilityElement: View {
    
    @State private var isActive: Bool = false
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Toggle("volume", isOn: $isActive)
                    
                    HStack {
                        Text("Volume")
                        Spacer()
                        Text(isActive ? "ON" : "OFF")
                    }
                    .background(Color.black.opacity(0.001))
                    .onTapGesture {
                        isActive.toggle()
                    }
                    .accessibilityElement(children: .combine)
                    .accessibilityAddTraits(.isButton)
                    .accessibilityValue(isActive ? "is on" : "is off")
                    .accessibilityAction {
                        isActive.toggle()
                    }
                }header: {
                    Text("PREFENCES")
                        .accessibilityAddTraits(.isHeader)
                }
                
            }
           
            .navigationTitle("Settings")
        }
       
        
    }
}

#Preview {
    AccessibilityElement()
}
