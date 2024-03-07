//
//  ButtonStyle .swift
//  FormLabel
//
//  Created by MD  on 3/5/24.
//

import SwiftUI

struct ButtonStyle_: View {
    @State private var isSelected = false

    var body: some View {
       
        Button(action: {
            //Execute action
            
            isSelected = true
            
        }, label: {
            Image("ally")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .accessibilityLabel("Accessibility")
                .accessibilityHint("Image of accessibility")
        })
        
        Button(action: {
            //Execute Action
      
        }, label: {
            Image(systemName: "square.and.arrow.up")
                .accessibilityLabel("Share Cart")
            
        })
        Button("Hello"){
            //Execute action
        }
        .buttonStyle(.bordered)
        
        Button("Hello") {
            //Execute action
            
        }
        .buttonStyle(.borderedProminent)
        .tint(.green)
        
        Button("Hello"){
            //Execute action
        }
        .buttonStyle(.automatic)
   
        Button(action: {
            
        }, label: {
            
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            
        })
//
    }
}

#Preview {
    ButtonStyle_()
}
