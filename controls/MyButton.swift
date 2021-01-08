//
//  MyButton.swift
//  SwiftUIControllers
//
//  Created by admin on 04/09/2020.
//  Copyright © 2020 Signe. All rights reserved.
//

import SwiftUI

struct MyButton: View {
    // Når der oprettes en variabel, så laver Swift selv en constructor
    var message:String
    var body: some View {
        Button(action: {
            // self er et objekt og skal bruges til at pege specifikt på message variablen og ikke nogle andre message
            // self objektet er det samme som this i Java. Fortæller constructoren at det
            print(self.message)
        }) {
            VStack {
                Text("save")
            }
        }
    }
}

struct MyButton_Previews: PreviewProvider {
    static var previews: some View {
        MyButton(message: "Hello")
    }
}
