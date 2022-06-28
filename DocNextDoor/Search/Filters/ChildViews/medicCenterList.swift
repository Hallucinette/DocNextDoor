//
//  medicCenterList.swift
//  DocNextDoor
//
//  Created by apprenant55 on 27/06/2022.
//

import SwiftUI

struct medicCenterList: View {
    @State private var selectWorkPlaceType = Set<String>()
    
    let medicCenters = [
        "Cabinet libéral",
        "Groupement médical",
        "Clinique",
        "Hôpital"
    ]
    var body: some View {
        List(medicCenters, id: \.self, selection: $selectWorkPlaceType) { medicCenter in
            Text(medicCenter)
        }
        .navigationTitle("Type de Structure")
        .toolbar {
            EditButton()
        }
    }
}


struct medicCenterList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            medicCenterList()
        }
    }
}
