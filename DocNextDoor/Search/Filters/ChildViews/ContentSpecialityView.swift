//
//  ContentSpecialityView.swift
//  DocNextDoor
//
//  Created by apprenant55 on 01/07/2022.
//

import SwiftUI

struct TaskSpecialityRow: View {
    var specility : Speciality
    
    @State private var selectSpecialty = Set<String>()
    
    var body: some View {
        
        
                ForEach((0..<specility.subCategory.count)) { index in
                    Text(specility.subCategory[index])
                }
    }
}
struct ContentSpecialityView: View {
    var specilities : [Speciality]
    var body: some View {
        NavigationView{
            List {
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
