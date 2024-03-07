//
//  FormView.swift
//  FormLabel
//
//  Created by MD  on 3/3/24.
//

import SwiftUI

enum FocusText {
    case username, password, submit
}

struct FormView: View {
    @FocusState private var focusField: FocusText?
    @State private var usernameText = ""
    @State private var password = ""
    @State private var submittedText = "This will display your credentials."
    var body: some View {
        Form {
            Section("Credentials") {
                TextField("Enter a Username", text: $usernameText)
                    .focused($focusField, equals: .username)
                    .submitLabel(.next)
                    .onSubmit {
                        focusField = .password
                    }
                    .accessibilityHint("This is hint username")
                TextField("Enter a Password", text: $password)
                    .focused($focusField, equals: .password)
                    .submitLabel(.next)
                    .onSubmit {
                        submitData()        
                    }
                    .accessibilityHint("This is hint password")
//                Button("Submit"){
//                    
//                    .focused($focusField,equals: .submit)
//                    .onSubmit {
//                        submitData()
//                    }
//                }
            }
            Section("Submitted") {
                Text(submittedText)
            }
            .accessibilityHint("Submitted")
               
        }
      
    }
    func submitData() {
        focusField = nil
        submittedText = "\(usernameText), \(password)"
    }
}

#Preview {
    FormView()
}
