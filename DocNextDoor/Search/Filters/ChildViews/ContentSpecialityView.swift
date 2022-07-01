//
//  ContentSpecialityView.swift
//  DocNextDoor
//
//  Created by apprenant55 on 01/07/2022.
//

import SwiftUI

struct TaskSpecialityRow: View {
    var specility : Speciality

    var body: some View {
        
        
        ForEach(specility.subCategory, id: \.self) { category in
            Text(category)
        }

    }
}
struct ContentSpecialityView: View {
    var specilities : [Speciality]
   @State private var selectSpecialty = Set<String>()
    
    var body: some View {
        NavigationView{
            List(selection: $selectSpecialty) {
                ForEach(specilities) { specility in
                    Section(header: Text(specility.nameCategory)) {
                        TaskSpecialityRow(specility:specility)
                        
                    }.headerProminence(.increased)
                }
                
            }.navigationTitle("List Selection")
                .toolbar {
                    EditButton()
                }
        }
    }
}
struct ContentSpecialityView_Previews: PreviewProvider {
    static var previews: some View {
        ContentSpecialityView(specilities: specilities)
    }
}
