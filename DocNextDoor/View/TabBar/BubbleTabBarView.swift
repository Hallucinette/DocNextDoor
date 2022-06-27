//
//  BubbleTabBarView.swift
//  DocNextDoor
//
//  Created by apprenant59 on 24/06/2022.
//

//
//  BubbleTabbarView.swift
//  DocNextDoor
//
//  Created by apprenant59 on 17/06/2022.
//

import SwiftUI


// Ici on cree la tab bar et ces effets.

struct BubbleTabBarView: View {
    var body: some View {
            Home()
        
    }
}

struct BubbleTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        BubbleTabBarView()
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
                    
                    Color.red //mettre ici la page
                        .ignoresSafeArea(.all, edges: .all)
                        .tag("list.bullet.circle")
                AdDiscoverUIView(ads: ads)
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
                            //permet l'effet de "glisade" de la vague d'une icone a l'autre
                            withAnimation(.spring()){
                                selectedtab = image
                                xAxis = reader.frame(in: .global).minX
                            }
                        }, label: {
                            // fait apparait chaque icone contenue dans tabs. Leurs donne les meme contraintes.
                            Image(systemName: image)
                                .resizable()
                                .renderingMode(.template)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25)
                                .foregroundColor(selectedtab == image ? getColor(image: image) : Color.gray) // couleurs gris si pas selectionné
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
                    
                    //On rajoute un spacer quand on a finit de parcourir le tableau image.
                    if image != tabs.last{Spacer(minLength: 0)}
                }
            }
            // rectangle blanc derriere la tab bar
            .padding(.horizontal,34) // sa position horizontal
            .padding(.vertical) // sa position hauteur
            .background(Color.white.clipShape(CustomShape(xAxis: xAxis)).cornerRadius(12)) // rounded
            .padding(.horizontal)
            // Bottom Edge...
            .padding(.bottom,34)
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
    
// Permet de choisir la couleur de l'icone quand elle est active. ici on passe du gris par default a la couleur choisi. par exemple map = blue
    
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

//ici je cree un tableau de mes icone. elle me permet d'en quitter un ou d 'en mettre plus sans trop impacteer le reste du cote
    var tabs = ["list.bullet.circle", "map", "bookmark", "person.circle"]

//Curve...

struct CustomShape : Shape {
    
    var xAxis: CGFloat
    
    // Animation Path...
    
    var animatableData: CGFloat{
        get{return xAxis}
        set{xAxis = newValue}
    }
    
    //cette fonction permet de cree l'effet du creux dans la tab bar.
    func path(in rect: CGRect) -> Path {
        
        return Path{path in
            
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            
            let center = xAxis
            
            path.move(to: CGPoint(x: center - 50, y: 0))
            
            //cote gauche
            let to1 = CGPoint(x: center, y: 35)
            let control1 = CGPoint(x: center - 25, y: 0)
            let control2 = CGPoint(x: center - 25, y: 35)
            
            //cote droit
            let to2 = CGPoint(x: center + 50, y: 0)
            let control3 = CGPoint(x: center + 25, y: 35)
            let control4 = CGPoint(x: center + 25, y: 0)
            
            path.addCurve(to: to1, control1: control1, control2: control2)
            path.addCurve(to: to2, control1: control3, control2: control4)
        }
    }
}
