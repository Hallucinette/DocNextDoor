//
//  DataFile.swift
//  DocNextDoor
//
//  Created by Apprenant 91 on 17/06/2022.
//

import SwiftUI
import MapKit


// Create Advertisement, then show them in a list.


// Create Advertisement, then show them in a list.
let ads: [Advertisement] = [Advertisement( title: "Médecin généraliste à Plumebec (51420)", town: "Plumebec", zipCode: "51420", description: "En Morbihan Sud, la commune de Plumelec se situant à 20 min de Vannes,1 heure de Rennes et 1heure30 de Nantes recherche un médecin généraliste. Cette commune de 2750 habitants concilie tranquillité de la campagne, vitalité économique et touristique . En effet Plumelec regroupe tous les services nécessaire pour bien y vivre : nombreux artisans et commerces; nombreuses associations; nombreux équipements sportifs et culturels; un nouveau centre de secours comptant 33 pompiers volontaires ainsi qu'un pôle médical regroupant plusieurs professionnels de la santé : 1 médecin, un pédicure podologue, 4 infirmières, 3 kinés et un orthophoniste. Hors pôle médical la commune compte également un dentiste, un ostéopathe, un service associatif de soins et de maintien à domicile, un service", contact: .init(name:  "Annie lhation", mail: "monmail@gg.com"), pict: ["Plumebec"], speciality: "", patientsList: true, accomodationProvided: true),
    Advertisement( title: "Recherche Médecin Généraliste", town: "La Capelle", zipCode: "02260", description: "Recherche 3ème Médecin Généraliste dans Maison de Santé ouverte depuis 01/2017.Primes à l\'installation par l'ARS et par la commune.Cadre de vie et d'exercice très agréable", contact: .init(name:  "SOYEZ Fabrice", mail: "soyezfa@orange.fr", phone: "0781426761"), pict: ["Grande-synthe"], speciality: "", patientsList: false, accomodationProvided: true),
    Advertisement( title: "Médecin Généraliste Rechercher", town: "Grande-synthe", zipCode: "59760", description: "Suite au depart a la retraite de notre medecin generaliste, nous cherchons une personne qui pourrait reprendre le cabinet avec sa patientel. Tous les docteurs des alentours sont complets. Nous avons vraiment besoin d'un medecin generaliste", contact: .init(name:  "Dufour", mail: "Maman-noumi@outlook.fr", phone: "0664558042"), pict: ["Grande-synthe"], speciality: "", patientsList: false, accomodationProvided: true)]


//Profile User data
var profilUser : ProfilUser  = ProfilUser(isDoc: true, name: "Isabella Zoe", pp: "Female3", speciality: "Médecin généraliste", description: "J'ai fait l'école de médecine de Marseille, dont je suis diplomée depuis 2020.", contact: Contact(name:  "Isabella Zoe", mail: "isabella.zoe@gmail.com", phone: "06 62 80 75 18"), allowContact: true, allowNotif: true, adsApplied: [], adsFav: [Advertisement.init( title: "Médecin à Plumebec", town: "Plumebec", zipCode: "51420", description: "", contact: .init(name: "Mairie de PLUMELEC", mail: ""), pict: [""], speciality: "Médecin généraliste", patientsList: true, accomodationProvided: true), Advertisement.init( title: "Médecin à Tours", town: "Tours", zipCode: "XXXXX", description: "", contact: .init(name: "Mairie de ", mail: ""), pict: [""], speciality: "Médecin généraliste", patientsList: true, accomodationProvided: true)])
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   