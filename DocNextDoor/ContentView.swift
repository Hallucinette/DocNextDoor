//
//  ContentView.swift
//  DocNextDoor
//
//  Created by apprenant59 on 16/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = "Discover"
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            DetailedAdUIView()
                .tabItem {
                    Label("Offers", systemImage: "map")
                }
                .tag("Offers")
           
            CreationAdUIView()
                .onTapGesture {
                    selectedTab = "Discover"
                }
                .tabItem {
                    Label("Discover", systemImage: "list.bullet.rectangle.portrait")
                }
                .tag("Discover")
            
            CreationAdUIView()
                .tabItem {
                    Label("Favorites", systemImage: "star.fill")
                }
                .tag("Favorites")
            
            CreationAdUIView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
                .tag("Profile")
        }// .tabViewStyle(PageTabViewStyle())
        .accentColor(.cyan)
       
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
