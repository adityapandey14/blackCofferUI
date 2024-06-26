//
//  personalPage.swift
//  BlackCoffer
//
//  Created by Aditya Pandey on 13/04/24.
//

import SwiftUI

struct PersonalPage: View {
    var body: some View {
        VStack {
            searchView()
            ScrollView{
                servicePage(name: "Aditya ", location: "Chennai", progress: 44.0)
                servicePage(name: "Ritwatz ", location: "Patna", progress: 33.0)
                servicePage(name: "Aditya ", location: "Gorakhpur", progress: 23.0)
            }
            .padding()
        }
    }
}

#if DEBUG
struct PersonalPage_Previews: PreviewProvider {
    static var previews: some View {
        PersonalPage()
    }
}
#endif

