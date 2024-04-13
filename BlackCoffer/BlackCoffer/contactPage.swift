//
//  contactPage.swift
//  BlackCoffer
//
//  Created by Aditya Pandey on 09/04/24.
//

import SwiftUI

struct contactPage: View {
    let purpose = ["Coffee", "Business", "Hobbies", "Friendship" , "Movies" , "Dining" , "Dating" , "Matrimony"]
      
      @State private var selectedPurposeIndexes: [Int] = []
      
      var body: some View {
          VStack(alignment: .leading) {
              ForEach(0..<purpose.count, id: \.self) { index in
                  if index % 3 == 0 {
                      HStack(spacing: 10) {
                          ForEach(index..<min(index + 3, purpose.count), id: \.self) { innerIndex in
                              ZStack {
                                  RoundedRectangle(cornerRadius: 20)
                                      .stroke(Color.black, lineWidth: 0.5)
                                      .frame(width: 120, height: 60)
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


#Preview {
    contactPage()
}
