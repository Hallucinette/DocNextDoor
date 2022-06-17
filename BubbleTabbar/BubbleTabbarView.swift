//
//  BubbleTabbarView.swift
//  DocNextDoor
//
//  Created by apprenant59 on 17/06/2022.
//

import SwiftUI

struct BubbleTabbarView: View {
    var body: some View {
            Home()
        
    }
}

struct BubbleTabbarView_Previews: PreviewProvider {
    static var previews: some View {
        BubbleTabbarView()
    }
}

struct Home: View{
    
    @State var selectedtab = "liste"
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    var body: some View{
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            TabView(selection: $selectedtab){
                    
                    Color.red
                        .ignoresSafeArea(.all, edges: .all)
                        .tag("liste")
                    
                    Color.blue
                        .ignoresSafeArea(.all, edges: .all)
                        .tag("map")
                    Color.pink
                        .ignoresSafeArea(.all, edges: .all)
                        .tag("bookmark")
                    Color.purple
                        .ignoresSafeArea(.all, edges: .all)
                        .tag("profil")
            }
            
            // Custom tab Bar...
            
            HStack(spacing: 0){
                
                ForEach(tabs, id: \.self){image in
                    Button(action: {}, label: {
                        Image(systemName: image)
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                    })
                    if image != tabs.last{Spacer(minLength: 0)}
                }
            }
        }
    }
}

    var tabs = ["list.bullet.circle", "map", "bookmark", "person.circle"]
