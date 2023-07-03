//
//  ContentView.swift
//  Unbound Travel
//
//  Created by Victor Chandra on 30/06/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var searchText = ""
    @State private var showUserSettings = false
    
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .center, spacing: 0) {  }
                .padding(0)
                .frame(width: 285, height: 376, alignment: .center)
                .background(Color(red: 0.94, green: 0.94, blue: 0.94))
                .cornerRadius(8)
                .overlay(
                  RoundedRectangle(cornerRadius: 8)
                    .inset(by: 1)
                    .stroke(Color(red: 0.69, green: 0.69, blue: 0.71), lineWidth: 2)
                )
                Text("Accessibility")
                  .font(
                    Font.custom("Cabin", size: 45)
                      .weight(.bold)
                  )
                  .multilineTextAlignment(.center)
                  .foregroundColor(.black)
                  .frame(width: 262, height: 55, alignment: .top)
                
                Text("Traveling should not be a problem for anyone, and we hear you.")
                  .font(Font.custom("Cabin", size: 18))
                  .multilineTextAlignment(.center)
                  .foregroundColor(Color(red: 0.59, green: 0.59, blue: 0.59))
                  .frame(width: 285, height: 44, alignment: .top)
                ZStack {
                    Button(action: {
                    print("Mwah mwah mwah")
                                }) {
                    Text("Continue")
                     .frame(width: 185, height: 65)
                      .background(Color.blue)
                        .foregroundColor(Color.white)
                            .cornerRadius(30)
                    }
                }
                .frame(width: 185, height: 70)
            }
        }
    }
}

struct SearchBar: View {
    @Binding var text: String
    var placeholder: String
    
    var body: some View {
        HStack {
            TextField(placeholder, text: $text)
                .padding(.leading, 24)
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(8)
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DetailView: View {
    var body: some View {
        Text("Details for location")
    }
}

struct UserProfileView: View {
    var body: some View {
        Text("User settings")
    }
}
