//
//  servicePage.swift
//  BlackCoffer
//
//  Created by Aditya Pandey on 13/04/24.
//

import SwiftUI

struct servicePage: View {
    var body: some View {
        VStack {
            VStack {
              
                    
                ZStack(alignment : .leading) {
                   
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.gray) // Adding gray background
                            .frame(width: 100, height: 100)
                            .padding(.bottom, 65)
                            .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                    
                  
                        
                        ZStack {
                            
                            
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 0.5)
                                .frame(width: 100, height: 100)
                                .padding(.bottom, 65)
                                .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                            
                            Image(systemName: "person.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 80, height: 80)
                                .foregroundColor(.white)
                                .padding(.bottom, 65)
                                .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                            
                            
                        }
                        .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                
                       
                        
                    ZStack(alignment: .top) {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 0.5)
                                .frame(width: 250, height: 160)
                        VStack(alignment : .leading){
                                Text("Aditya Pandey")
                                    
                                Text("Mysuru | Job Seeker")
                            Text("within 2.9 KM")
                            
                            }
                        .padding()
                        }
                        .padding(.leading, 60)
                      
                    } // end of z stack of person circle fill
                  
                
                
                
            }
        }
    }
}

#Preview {
    servicePage()
}
