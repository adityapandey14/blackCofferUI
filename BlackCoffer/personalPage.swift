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
            VStack {
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.black, lineWidth: 0.5)
                        .frame(width: 100, height: 100)
                        .padding(.bottom, 55)
                    
                    VStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.gray) // Adding gray background
                                .frame(width: 100, height: 100)
                                .padding(.bottom, 55)
                            
                            Image(systemName: "person.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 80, height: 80)
                                .foregroundColor(.white)
                                .padding(.bottom, 55)
                        }
                    }
                    Spacer()
                    
                    VStack(alignment: .leading ) {
        
                        ZStack(alignment : .top) {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 0.5)
                                .frame(width: 250, height: 160)
                                
                            VStack {
                                Text("Aditya")
                                    
                            }
                            .padding()
                          
                        }
                    }
                    .padding(.horizontal, 55)
                }
            }
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

