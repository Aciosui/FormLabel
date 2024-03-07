//
//  AlertDialog .swift
//  FormLabel
//
//  Created by MD  on 3/5/24.
//

import SwiftUI

struct AlertDialog_: View {
    @State private var showingAlert: Bool = false
    @State private var count: Int = 0
    var body: some View {
        VStack {
        Text("\(count)")
            .padding().font(.system(size: 40, weight: .bold))
            
            Button("Increment") {
                showingAlert = true
            }
            .alert(isPresented: $showingAlert) {
                Alert(
                    title: Text("Are you sure?"),
                    message: Text("Are you sure you want to add 1 to count?"),
                    primaryButton: .default(Text("Add one")){
                        self.count += 1
                    },
                    secondaryButton: .cancel(){
                        print("Cancelling action...")
                    }
                )
            }
    }
  }
}

#Preview {
    AlertDialog_()
}
