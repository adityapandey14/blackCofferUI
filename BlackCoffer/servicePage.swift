//
//  servicePage.swift
//  BlackCoffer
//
//  Created by Aditya Pandey on 13/04/24.
//

import SwiftUI

struct servicePage: View {
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
                                .frame(width: 250, height: 170)
                        VStack(alignment : .leading){
                          
                            VStack (alignment : .leading){
                                Text("\(name)")
                                Text("\(location) | Job Seeker")
                                Text("within 2.9 KM")
                                HStack {
                                    PercentageBar(progress: progress)
                                    Text("score \(Int(progress))%")
                                        .font(.footnote)
                                       
                                        
                                }
                                
                            }
                            .padding(.leading , 49)
                            .padding(.top)
                            
                                
                                HStack {
                                    Text("Bussiness")
                                    Text("Friendship")
                                    
                                }
                            Text("Hi community | I am ..")
                            }

                     
                        }
                        .padding(.leading, 50)
                      
                    } // end of z stack of person circle fill
                  
            }
        }
        .padding()
    }
}

#Preview {
    servicePage(name: "Aditya ", location: "Mysuru", progress: 24)
}

struct PercentageBar : View {
    @State  var progress : Double // Initialize progress as a @State variable

    var body : some View {
        VStack(alignment : .trailing) {
            // Add a spacer to push the bar to the center
           
                VStack {
                    ZStack(alignment: .leading) {
                        Rectangle()
                            .frame(width: 100, height: 10)
                            .opacity(0.3)
                            .foregroundColor(Color.gray)
                        
                        Rectangle()
                            .frame(width: CGFloat(self.progress), height: 10)
                            .foregroundColor(Color.blue)
                        
                    }
                    
                }
                .frame(height: 10)
                          .cornerRadius(10)
          
             // Add another spacer to push the bar to the center
        }
    }
}

