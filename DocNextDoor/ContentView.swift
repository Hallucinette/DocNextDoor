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
            
            AdDiscoverUIView()
                .tabItem {
                    Label("Offers", systemImage: "map")
                }
                .tag("Offers")
           
            AdDiscoverUIView()
                .onTapGesture {
                    selectedTab = "Discover"
                }
                .tabItem {
                    Label("Discover", systemImage: "list.bullet.rectangle.portrait")
                }
                .tag("Discover")
            
            AdDiscoverUIView()
                .tabItem {
                    Label("Favorites", systemImage: "star.fill")
                }
                .tag("Favorites")
            
            AdDiscoverUIView()
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
        ContentView()    }
}
