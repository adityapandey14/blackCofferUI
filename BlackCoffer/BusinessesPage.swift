//
//  BusinessesPage.swift
//  BlackCoffer
//
//  Created by Aditya Pandey on 14/04/24.
//

import SwiftUI

struct BusinessesPage: View {
    var body: some View {
        VStack {
            searchView()
            ScrollView{
                profileCard(name: "Aditya ", location: "Chennai", progress: 44.0)
                profileCard(name: "Ritwatz ", location: "Patna", progress: 33.0)
                profileCard(name: "Aditya ", location: "Gorakhpur", progress: 23.0)
            }
            .padding()
        }
    }
}
#Preview {
    BusinessesPage()
}

struct profileCard : View {
    var name : String
    var location : String
    var progress : Double
    
    var body: some View {
        VStack {
            VStack {
              
                    
                ZStack(alignment : .leading) {
                   
                        
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.gray) // Adding gray background
                            .frame(width: 100, height: 100)
                            .padding(.bottom, 95)
                            .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                    
                    
                  
                        
                        ZStack {
                            
                            
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 0.5)
                                .frame(width: 100, height: 100)
                                .padding(.bottom, 95)
                                .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                            
                            Image(systemName: "person.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 80, height: 80)
                                .foregroundColor(.white)
                                .padding(.bottom, 95)
                                .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                            
                            
                        }
                        .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                
                       
                        
                    ZStack(alignment: .top) {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.black, lineWidth: 0.5)
                                .frame(width: 250, height: 190)
                        VStack(alignment : .leading){
                          
                            VStack (alignment : .leading){
                                Text("\(name)")
                                    .bold()
                                Text("\(location) | Job Seeker")
                                Text("within 2.9 KM")
                                HStack {
                                    PercentageBar(progress: progress)
                                    Text("score \(Int(progress))%")
                                        .font(.footnote)
                                    
                                }
                                .padding(.bottom , 5)
                                
                            }
                            .padding(.leading , 49)
                            .padding(.top)
                            .foregroundStyle(.blue)
                            
                                
                            HStack(spacing : 20){
                                Image(systemName: "phone.fill")
                                Image(systemName: "person.crop.circle.fill.badge.plus")
                                Image(systemName: "location.north.fill")
                            }
                            .padding(.leading, 40)
                            .padding(.bottom, 5)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        
                                
                            Text("Hi community! We have great deals for you. Checkus out!!")
                                .frame(width : 240)
                                .lineLimit(2) // Set the maximum number of lines
                                .truncationMode(.tail)
                                .foregroundStyle(.blue)
                                .font(.footnote)
                             
                                
                            }

                     
                        }
                        .padding(.leading, 50)
                      
                    } // end of z stack of person circle fill
                  
            }
        }
        .padding()
    }
}
