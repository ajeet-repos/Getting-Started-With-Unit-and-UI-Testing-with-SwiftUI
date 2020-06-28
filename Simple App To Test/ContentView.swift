//
//  ContentView.swift
//  Simple App To Test
//
//  Created by Ajeet Kumar on 28/06/20.
//  Copyright © 2020 DigitalCurry. All rights reserved.
//

import SwiftUI

var counter = 0

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


func calculateRandomString() -> String {
    
    counter += 1
    
    return "Random text " + String(counter)
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
