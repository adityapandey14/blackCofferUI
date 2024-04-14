////
////  explorePage.swift
////  BlackCoffer
////
////  Created by Aditya Pandey on 09/04/24.
////
//


import SwiftUI

struct explorePage: View {
  

    var body: some View {
        NavigationStack {
            VStack {
                topBar()
                searchView()
            
            }
        }
    }
}



struct explorePage_Previews: PreviewProvider {
    static var previews: some View {
    
        
         explorePage()
    }
}


struct topBar : View {
    var body : some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Howdy Aditya!!")
                    .font(.title)
                Spacer()
                Text("Refine")
            }
            .padding(.top)
            HStack {
                Text("Kattankulthur, Nandivaram Guduvancheri")
                    .font(.subheadline)
                    .padding(.bottom)
                Spacer()
                
            }
        }
        .padding()
        .background(Color.blue)
        
    }
}


struct searchView : View {
    @State private var searchText = ""
    var body: some View {
        VStack {
            HStack{
            Image(systemName: "magnifyingglass")
                    .padding(.horizontal,5)
                  
            TextField("Search", text: $searchText)
                .padding(6)
                .background(Color.white)
                .textFieldStyle(PlainTextFieldStyle())
                .cornerRadius(8)
                .frame(maxWidth: .infinity)
               
        }
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
            .cornerRadius(4.0)
            
        }
        .padding()
    }
}
