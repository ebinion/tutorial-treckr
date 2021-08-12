//
//  ContentView.swift
//  Trekr
//
//  Created by Zeke Binion on 8/11/21.
//

import SwiftUI

struct ContentView: View {
  var location: Location
  
  var body: some View {
    ScrollView {
      Image(location.heroPicture)
        .resizable()
        .ignoresSafeArea()
        .scaledToFit()
      
      VStack {
        Text(location.name)
          .font(.largeTitle)
          .fontWeight(.bold)
          .multilineTextAlignment(.center)

        Text(location.country)
          .font(.title)
          .fontWeight(.bold)
          .multilineTextAlignment(.center)
          .foregroundColor(.secondary)
          .padding(.bottom)

        Text(location.description)
        
        Text("Did you know?")
          .font(.title2)
          .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
          .padding(.vertical)
        
        Text(location.more)
        }
        .padding()

      Spacer()

    }
    .navigationTitle("Discover")
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      ContentView(location: Location.example)
    }
  }
}
