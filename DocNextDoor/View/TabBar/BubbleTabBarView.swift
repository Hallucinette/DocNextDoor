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
        BubbleTabBarView().environmentObject(ProfileControl())
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
    @EnvironmentObject var profilControl : ProfileControl
    var body: some View {
        GeometryReader { proxy in
            ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
                TabView(selection: $selectedtab){
                    
                    AdDiscoverUIView(ads: ads)
                        .tag("list.bullet.circle")
                    Color.blue
                        .tag("map")
                    SavedAds()
                        .tag("bookmark")
                    Profile()
                        .tag("person.circle")
                }
                
                
                // Custom tab Bar...
                
                HStack(spacing: 0){
                    
                    ForEach(tabs, id: \.self){image in
                        VStack{
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
                                        .foregroundColor(selectedtab == image ? Color("Darkblue") : Color.gray) // couleurs gris si pas selectionné
                                        .padding(selectedtab == image ? 15 : 0)
                                        .background(Color.white.opacity(selectedtab == image ? 1 : 0) .clipShape(Circle()))
                                        .matchedGeometryEffect(id: image, in:animation)
                                        .offset(x: selectedtab == image ? (reader.frame(in: .global).minX+24 - reader.frame(in: .global).midX+20) : 20,y: selectedtab == image ? -50 : 0)
                                })
                                .onAppear(perform: {
                                    
                                    if image == tabs.first{
                                        xAxis = reader.frame(in: .global).minX
                                    }
                                    
                                })
                            }
                            .frame(width: 75, height: 40).ignoresSafeArea()
                            Text(selectedtab == image ? getNom(image: image) : getNom(image: image)).font(.footnote).foregroundColor(Color("Txtgrey")).padding(.bottom, 4)
                            
                            
                        }
                        //On rajoute un spacer quand on a finit de parcourir le tableau image.
                        if image != tabs.last{Spacer(minLength: 10)}
                    }
                }
                .padding(.horizontal, 34)
                .frame(width: proxy.size.width) //force la largeur pour faire la même que l'écran
                .padding(.vertical) // sa position hauteur
                .background(Color.white.clipShape(CustomShape(xAxis: xAxis)).cornerRadius(12)) // rounded rectangle blanc derriere la tab bar
            }
            .ignoresSafeArea(.all, edges: .bottom)
        }
    }
    
    
    // Permet de choisir le nom de l'icone quand elle est active.
    
    func getNom(image: String)->String {
        
        switch image {
            case "list.bullet.circle":
                return "A découvrir"
            case "map":
                return "Recherche"
            case "bookmark":
                return "Favoris"
            case "person.circle":
                return "Profil"
            default:
                return ""
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
            
            let center = xAxis+35
            
            path.move(to: CGPoint(x: center - 70, y: 0))
            
            //cote gauche
            let to1 = CGPoint(x: center, y: 35)
            let control1 = CGPoint(x: center - 25, y: 0)
            let control2 = CGPoint(x: center - 25, y: 35)
            
            //cote droit
            let to2 = CGPoint(x: center + 70, y: 0)
            let control3 = CGPoint(x: center + 25, y: 35)
            let control4 = CGPoint(x: center + 25, y: 0)
            
            path.addCurve(to: to1, control1: control1, control2: control2)
            path.addCurve(to: to2, control1: control3, control2: control4)
        }
    }
}


