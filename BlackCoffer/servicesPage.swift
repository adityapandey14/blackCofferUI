//
//  servicesPage.swift
//  BlackCoffer
//
//  Created by Aditya Pandey on 15/04/24.
//

import SwiftUI

struct servicesPage: View {
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
#Preview {
    servicesPage()
}
