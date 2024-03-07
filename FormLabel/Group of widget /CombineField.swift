//
//  CombineField.swift
//  FormLabel
//
//  Created by MD  on 3/7/24.
//

import SwiftUI

struct CombineField: View {
    var body: some View {
        HStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.title)
            Text("123456")
                .font(.title)
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Your scroe is the best score")
       
    }
}

#Preview {
    CombineField()
}
