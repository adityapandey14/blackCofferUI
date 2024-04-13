//
//  refinePage.swift
//  BlackCoffer
//
//  Created by Aditya Pandey on 09/04/24.
//

import SwiftUI

struct refinePage: View {
    let options = ["Available | Hey Lets Connect", "Away | Stay Discreet And Watch", "Busy | Do Not Disturb | Will Catch Up Later", "SOS | Emergency! Need Assistance! HELP"]
    let purpose = ["Coffee", "Business", "Hobbies", "Friendship" , "Movies" , "Dining" , "Dating" , "Matrimony"]
    @State private var selectedOption = "Available | Hey Lets Connect"
    @State private var isMenuVisible = false
    @State private var status: String = "Hi community, I am open to new connections ☺️"
    @State private var value: Double = 50
    @State private var selectedPurposeIndexes: [Int] = []
    
    var body: some View {
        NavigationView {
          
            ZStack(alignment: .top) {
                Color.blue.frame(height: 120) // Blue background up to height 100
                    .padding(.bottom)
                
               
                    VStack {
                        VStack {
                            Text("Refine")
                                .font(.title)
                                .bold()
                                .frame(width: 394, height: 80)
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .padding(.top , 40)
                        }
                        ScrollView {
                        VStack(alignment: .leading) {
                          
                              
                            
                            Text("Select Your Availability")
                                .font(.title2)
                                .padding(.horizontal)
                            
                            Button(action: {
                                withAnimation {
                                    self.isMenuVisible.toggle()
                                }
                            }) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black, lineWidth: 0.5) // Adjust line width as needed
                                        .frame(width: 360, height: 70)
                                    HStack {
                                        Text(selectedOption)
                                            .padding()
                                            .lineLimit(1) // Ensure the text stays within a single line
                                            .bold()
                                        Image(systemName: "arrowtriangle.down.fill")
                                    }
                                    .padding()
                                }
                            }
                            .frame(maxWidth: .infinity)
                            
                            if isMenuVisible {
                                MenuList(options: options, selectedOption: $selectedOption, isMenuVisible: $isMenuVisible)
                                    .transition(.slide)
                            }
                        }
                        .padding()
                        
                        VStack(alignment: .leading) {
                            Text("Add your Status")
                                .font(.title2)
                                .padding(.horizontal)
                            
                            ZStack(alignment: .top) {
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.black, lineWidth: 0.5)
                                    .frame(width: 350, height: 130)
                                
                                VStack(alignment: .leading) {
                                    // Spacer to push the TextField to the top
                                    TextField("Status", text: $status , axis: .vertical)
                                        .font(.title3)
                                        .lineLimit(nil)
                                        .padding(.horizontal)
                                }
                                .padding()
                            }
                            
                            
                            Text("Select Hyperlocal Distance")
                                .font(.title2)
                                .padding()
                            
                            //Slider
                            VStack {
                             sliderPage()
                            }
                            .padding()
                            
                            Text("Select Purpose")
                                .font(.title3)
                                .padding(.horizontal)
                            
                            //Select Purpose
                            VStack(alignment: .leading) {
                                ForEach(0..<purpose.count, id: \.self) { index in
                                    if index % 3 == 0 {
                                        HStack(spacing: 10) {
                                            ForEach(index..<min(index + 3, purpose.count), id: \.self) { innerIndex in
                                                ZStack {
                                                    RoundedRectangle(cornerRadius: 20)
                                                        .stroke(Color.black, lineWidth: 0.5)
                                                        .frame(width: 110, height: 40)
                                                        .background(self.isSelected(index: innerIndex) ? Color.blue : Color.clear)
                                                        .cornerRadius(20)
                                                    Text(purpose[innerIndex])
                                                }
                                                .onTapGesture {
                                                    self.toggleSelection(index: innerIndex)
                                                }
                                            }
                                        }
                                    }
                                }
                          
                            }
                            .padding()
                        }
                     Spacer()
                            Button(action: {
                                // Add your action here
                            }) {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.black, lineWidth: 0.5)
                                        .frame(width: 180, height: 40)
                                        .background(Color.blue)
                                        .cornerRadius(20)
                                    
                                    Text("Save & Explore")
                                        .foregroundColor(.white) // Change text color to white
                                        .padding()
                                }
                            }

                    }
                        .padding(.bottom, 100)
                }

            }
            .ignoresSafeArea()
        }
    }
    
    //function
    private func isSelected(index: Int) -> Bool {
        return selectedPurposeIndexes.contains(index)
    }
    
    private func toggleSelection(index: Int) {
        if let selectedIndex = selectedPurposeIndexes.firstIndex(of: index) {
            selectedPurposeIndexes.remove(at: selectedIndex)
        } else {
            selectedPurposeIndexes.append(index)
        }
    }
}


struct MenuList: View {
    let options: [String]
    @Binding var selectedOption: String
    @Binding var isMenuVisible: Bool
    
    var body: some View {
        
        VStack {
            ForEach(options, id: \.self) { option in
                Button(action: {
                    // Set the selected option
                    self.selectedOption = option
                    
                    // Close menu after selection
                    withAnimation {
                        self.isMenuVisible.toggle()
                    }
                }) {
                    Text(option)
                        .padding()
                }
            }
        }
        .background(Color.white)
        .cornerRadius(10)
        .padding()
        .shadow(radius: 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        refinePage()
    }
}





