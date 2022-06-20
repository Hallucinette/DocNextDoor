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
    
    @State var selectedtab = "list.bullet.circle"
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    // Location For each Curve...
    @State var xAxis: CGFloat = 0
    
    @Namespace var animation
    
    var body: some View{
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            TabView(selection: $selectedtab){
                    
                    Color.red
                        .ignoresSafeArea(.all, edges: .all)
                        .tag("list.bullet.circle")
                    
                    Color.blue
                        .ignoresSafeArea(.all, edges: .all)
                        .tag("map")
                    Color.yellow
                        .ignoresSafeArea(.all, edges: .all)
                        .tag("bookmark")
                    Color.brown
                        .ignoresSafeArea(.all, edges: .all)
                        .tag("person.circle")
            }
            
            // Custom tab Bar...
            
            HStack(spacing: 0){
                
                ForEach(tabs, id: \.self){image in
                    
                    GeometryReader {reader in
                        Button(action: {
                            withAnimation(.spring()){
                                selectedtab = image
                                xAxis = reader.frame(in: .global).minX
                            }
                        }, label: {
                            Image(systemName: image)
                                .resizable()
                                .renderingMode(.template)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                                .foregroundColor(selectedtab == image ? getColor(image: image) : Color.gray)
                                .padding(selectedtab == image ? 15 : 0)
                                .background(Color.white.opacity(selectedtab == image ? 1 : 0) .clipShape(Circle()))
                                .matchedGeometryEffect(id: image, in:animation)
                                .offset(x: selectedtab == image ? (reader.frame(in: .global).minX - reader.frame(in: .global).midX) : 0,y: selectedtab == image ? -50 : 0)
                        })
                        .onAppear(perform: {
                                    
                            if image == tabs.first{
                                xAxis = reader.frame(in: .global).minX
                            }
                            
                        })
                    }
                    .frame(width: 25, height: 25)
                    
                    if image != tabs.last{Spacer(minLength: 0)}
                }
            }
            .padding(.horizontal,30)
            .padding(.vertical)
            .background(Color.white.clipShape(CustomShape(xAxis: xAxis)).cornerRadius(12))
            .padding(.horizontal)
            // Bottom Edge...
            .padding(.bottom,34)
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
    
        // getting Image Color
    
    func getColor(image: String)->Color{
        
        switch image {
        case "list.bullet.circle":
            return Color.red
        case "map":
            return Color.blue
        case "bookmark":
            return Color.yellow
        case "person.circle":
            return Color.brown
        default:
            return Color.blue
        }
    }
}

    var tabs = ["list.bullet.circle", "map", "bookmark", "person.circle"]

//Curve...

struct CustomShape : Shape {
    
    var xAxis: CGFloat
    
    // Animation Path...
    
    var animatableData: CGFloat{
        get{return xAxis}
        set{xAxis = newValue}
    }
    
    func path(in rect: CGRect) -> Path {
        
        return Path{path in
            
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            
            let center = xAxis
            
            path.move(to: CGPoint(x: center - 50, y: 0))
            
            let to1 = CGPoint(x: center, y: 35)
            let control1 = CGPoint(x: center - 25, y: 0)
            let control2 = CGPoint(x: center - 25, y: 35)
            
            let to2 = CGPoint(x: center + 50, y: 0)
            let control3 = CGPoint(x: center + 25, y: 35)
            let control4 = CGPoint(x: center + 25, y: 0)
            
            path.addCurve(to: to1, control1: control1, control2: control2)
            path.addCurve(to: to2, control1: control3, control2: control4)
        }
    }
}
