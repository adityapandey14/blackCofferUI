//
//  Homepage.swift
//  BlackCoffer
//
//  Created by Aditya Pandey on 09/04/24.
//

import SwiftUI

struct Homepage: View {
    var body: some View {
        NavigationStack {
            TabView {
                
                refinePage()
                    .tabItem {
                        Label("Refine" , systemImage: "calendar")
                    }
//                explorePage()
//                    .tabItem {
//                        Label("Explore" , systemImage: "eye.fill")
//                    }
                NetworkPage()
                    .tabItem {
                        Label("Network" , systemImage: "calendar")
                    }
                chatPage()
                    .tabItem {
                        Label("chatPage" , systemImage: "message.circle.fill")
                    }
                contactPage()
                    .tabItem {
                        Label("contactPage" , systemImage: "person.crop.rectangle")
                    }
            } // TabView
        }
    }
}

#Preview {
    Homepage()
}
