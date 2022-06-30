//
//  specialtiesList.swift
//  DocNextDoor
//
//  Created by apprenant55 on 27/06/2022.
//

import SwiftUI

struct specialtiesList: View {
    
  //  @AppStorage var storeValuesOne = String<selectSpecialty>()
    @State var selectSpecialty: String?

    
    let specialties = [
        "MedGen",
        "Autres",
    ]
    
    var body: some View {
        
        List(specialties, id: \.self, selection: $selectSpecialty) { specialty in
            Text(specialty)
        }
        .navigationTitle("Spécialité")
        .toolbar {
            EditButton()
        }
        
    }
}

struct specialtiesList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            specialtiesList()
        }
    }
}
