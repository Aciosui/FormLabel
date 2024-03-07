//
//  ContentView.swift
//  FormLabel
//
//  Created by MD  on 3/3/24.
//

import SwiftUI



struct ContentView: View {
    @State private var isPlaying = false
    var body: some View {
      GroupButton()
        ImageTwo()
//       ImageOne()
//        VStack {
//            PlayButton(
//                isPlaying: $isPlaying
//            )
//            .onTapGesture {
//                isPlaying.toggle()
//                if !isPlaying {
//                    isPlaying = true
//                }else{
//                    isPlaying = false
//                }
//                
//            }
//            Button("Submit"){
//                
//            }
//            .disabled(true)
//            
//        }
    }
}

#Preview {
    ContentView()
}
