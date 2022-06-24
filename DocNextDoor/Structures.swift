//
//  Structures.swift
//  DocNextDoor
//
//  Created by Apprenant 11 on 17/06/2022.
//

import Foundation
import MapKit

struct ColoredIcons {
    
    let nameIcon : String

    let nameIconColored : String

    var isColored : Bool //si True alors = icon coloré, si False alors = icon grisé
}

struct Contact {
    
    var name  : String

    var mail : String

    var phone : String?
}

struct Speciality {
    
    let nameCategory: String

    let subCategory: [String]
}

struct Advertisement : Identifiable {
    
    var id = UUID()
    
    var title : String

    var town : String

    var zipCode : String

    var description : String

    var benefits : String?

    var contact :  Contact

    var icons : [String]? //nom image : logo école, vie culturelle…

    var transport : [ColoredIcons]? //avec [Bool = True]

    var zone : [ColoredIcons]? //avec [Bool =  True]

    var pict : [String] //tableau de noms image de l'annonce

    var speciality : String //Speciality.nameCategory ou Speciality.subCategory[n]
    
    var patientsList : Bool //si True alors cede la patientèle
    
    var accomodationProvided : Bool //si True alors logement compris
    
//    var adLocation : CLLocationCoordinate2D? // coordonnees GPS pour MapKit
    
//    var adShowing: Bool = true
}

struct ProfilUser : Identifiable {
    var id = UUID()
    
    let isDoc : Bool //gérer le double profil commune/docteur ??

    let name : String

    var pp : String //nom image de profil

    var speciality : String?

    var description : String

    var contact : Contact

    var adsPublished : [Advertisement]?
    
    var cv : String? //nom du fichier ?? a voir au niveau implementation

    var allowContact : Bool

    var allowNotif : Bool
        
    var adsApplied : [Advertisement]
    
    var adsFav : [Advertisement]
    
 //   var userPosition : CLLocationCoordinate2D? // coordonnees GPS pour MapKit
    

 //  var userShowing: Bool = true


}
