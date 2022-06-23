//
//  DataFile.swift
//  DocNextDoor
//
//  Created by Apprenant 91 on 17/06/2022.
//

import SwiftUI
import MapKit

// A struct to store exactly one Advertisement's data.
struct ContactData {
    // Create Advertisement, then show them in a list.
    let contacts: [Contact] = [
        Contact(name: "Mairie de PLUMELEC", mail: "fg.mairie@plumelec.fr")
    ]
}

// A struct to store exactly one Advertisement's data.
struct AdvertisementData {
    // Create Advertisement, then show them in a list.
    let ads: [Advertisement] = [
<<<<<<< HEAD
        Advertisement( title: "Médecin généraliste à Plumebec (51420)", town: "Plumebec", zipCode: 51420, description: "En Morbihan Sud, la commune de Plumelec se situant à 20 min de Vannes,1 heure de Rennes et 1heure30 de Nantes recherche un médecin généraliste. Cette commune de 2750 habitants concilie tranquillité de la campagne, vitalité économique et touristique . En effet Plumelec regroupe tous les services nécessaire pour bien y vivre : nombreux artisans et commerces; nombreuses associations; nombreux équipements sportifs et culturels; un nouveau centre de secours comptant 33 pompiers volontaires ainsi qu'un pôle médical regroupant plusieurs professionnels de la santé : 1 médecin, un pédicure podologue, 4 infirmières, 3 kinés et un orthophoniste. Hors pôle médical la commune compte également un dentiste, un ostéopathe, un service associatif de soins et de maintien à domicile, un service", contact: .init(name:  "Annie lhation", mail: "monmail@gg.com"), pict: [""], speciality: "", patientsList: true, accomodationProvided: true, adLocation : CLLocationCoordinate2D(latitude: 43.60554, longitude: 1.44746))
=======
        Advertisement( title: "Médecin généraliste à Plumebec (51420)", town: "Plumebec", zipCode: "51420", description: "En Morbihan Sud, la commune de Plumelec se situant à 20 min de Vannes,1 heure de Rennes et 1heure30 de Nantes recherche un médecin généraliste. Cette commune de 2750 habitants concilie tranquillité de la campagne, vitalité économique et touristique . En effet Plumelec regroupe tous les services nécessaire pour bien y vivre : nombreux artisans et commerces; nombreuses associations; nombreux équipements sportifs et culturels; un nouveau centre de secours comptant 33 pompiers volontaires ainsi qu'un pôle médical regroupant plusieurs professionnels de la santé : 1 médecin, un pédicure podologue, 4 infirmières, 3 kinés et un orthophoniste. Hors pôle médical la commune compte également un dentiste, un ostéopathe, un service associatif de soins et de maintien à domicile, un service", contact: .init(name:  "Annie lhation", mail: "monmail@gg.com"), pict: ["Plumebec"], speciality: "", patientsList: true, accomodationProvided: true),
        Advertisement( title: "Recherche Médecin Généraliste", town: "La Capelle", zipCode: "02260", description: "Recherche 3ème Médecin Généraliste dans Maison de Santé ouverte depuis 01/2017.Primes à l\'installation par l'ARS et par la commune.Cadre de vie et d'exercice très agréable", contact: .init(name:  "SOYEZ Fabrice", mail: "soyezfa@orange.fr", phone: "0781426761"), pict: ["Grande-synthe"], speciality: "", patientsList: false, accomodationProvided: true),
        Advertisement( title: "Recherche Médecin Généraliste", town: "Grande-synthe", zipCode: "59760", description: "Suite au depart a la retraite de notre medecin generaliste, nous cherchons une personne qui pourrait reprendre le cabinet avec sa patientel. Tous les docteurs des alentours sont complets. Nous avons vraiment besoin d'un medecin generaliste", contact: .init(name:  "Dufour", mail: "Maman-noumi@outlook.fr", phone: "0664558042"), pict: ["Grande-synthe"], speciality: "", patientsList: false, accomodationProvided: true)
>>>>>>> 169fe2f0b29bebf88aa5e4dba647caf0baf6eaea
    ]
    
}
