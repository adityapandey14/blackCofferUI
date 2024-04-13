//
//  ContentView.swift
//  BlackCoffer
//
//  Created by Aditya Pandey on 09/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, SwiftUI!")
                 .padding()
                 .font(.title)
                 .foregroundColor(.white)
                 .background(Color.blue)
                 .cornerRadius(20) // Adjust the corner radius to your preference
                 .padding(10)
                 .border(Color.black, width: 2) // Change color and width as needed
    }
}

#Preview {
    Homepage()
}
