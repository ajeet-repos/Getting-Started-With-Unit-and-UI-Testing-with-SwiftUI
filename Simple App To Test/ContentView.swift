//
//  ContentView.swift
//  Simple App To Test
//
//  Created by Ajeet Kumar on 28/06/20.
//  Copyright © 2020 DigitalCurry. All rights reserved.
//

import SwiftUI

// Just a counter variable
var counter = 0


// This is the method responsible for creating the UI for the app
struct ContentView: View {
    
    @State var placeholderText: String = "Placeholder Text"
    
    var body: some View {
        VStack {
            Button(action: {
                
                self.placeholderText = calculateRandomString()
                
                }, label: {
                    HStack {
                        Text("Click Me!")
                            .fontWeight(.semibold)
                            .font(.title)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(20)
                })
            Text(placeholderText)
            .padding(20)
        }
    }
}

// Return a string along with counter attached to it.
func calculateRandomString() -> String {
    
    counter += 1
    
    return "Random text " + String(counter)
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
