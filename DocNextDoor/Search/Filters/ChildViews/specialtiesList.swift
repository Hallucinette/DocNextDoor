////
////  specialtiesList.swift
////  DocNextDoor
////
////  Created by apprenant55 on 27/06/2022.
////
//
//import SwiftUI
//
//
//struct TaskRow: View {
//    var arrayhealthLabel: [String]
//    //    @AppStorage var storeValuesOne = String<selectSpecialty>()
//    @State var selectSpecialty: String?
//    
//    //    func parseArray(arrayhealthLabel: [String]) {
//    //        for item in arrayhealthLabel[String] {
//    //            return Text(item)
//    //    }
//    
//    var body: some View {
//        
//        List(arrayhealthLabel, id: \.self, selection: $selectSpecialty) { specialty in
//            VStack {
//                Text(specialty)
//                
//            }
//            //                ForEach(arrayhealthLabel[]) { items in
//            //                    Speciality[0]
//            //                }
//            //            arrayhealthLabel[arrayhealthLabel]
////        }
//    }.navigationTitle("Spécialité")
//        .toolbar {
//            EditButton()
//            
//        }
//}
//}
//struct specialtiesList: View {
//    
//    
//    //    Array specialties by category
//    //    var arrayhealthLabel: [Speciality]
//    var chir = ["ANESTHESISTE", "CHIRURGIEN DE LA FACE ET DU COU", "CHIRURGIEN GENERALE", "CHIRURGIEN INFANTILE", "CHIRURGIEN MAXILLO-FACIALE", "CHIRURGIEN MAXILLO-FACIALE ET STOMATOLOGIE", "CHIRURGIEN ORALE", "CHIRURGIEN ORTHOPEDIQUE ET TRAUMATOLOGIQUE", "CHIRURGIEN PEDIATRIQUE OPTION", "CHIRURGIEN PEDIATRIQUE OPTION ORTHOPEDIE PEDIATRIQUE", "CHIRURGIEN PLASTIQUE, RECONSTRUCTRICE ET ESTHETIQUE", "CHIRURGIEN THORACIQUE ET CARDIO-VASCULAIRE", "CHIRURGIEN UROLOGIQUE", "CHIRURGIEN VASCULAIRE", "CHIRURGIEN VISCERALE ET DIGESTIVE", "CHIRURGIE VISCERALE PEDIATRIQUE"] // "Chirurgie & anesthesie"
//    //    var organ = ["CARDIOLOGUE", "GASTRO-ENTEROLOGGUE", "MEDECINE CARDIOVASCULAIRE", "NEPHROLOGUE", "PNEUMOLOGUE", "RHUMATOLOGUE", "STOMATOLOGUE", "UROLOGUE"] //"Médecine des organes & rhumatologie",
//    //    var skin = ["DERMATOLOGISTE", "DERMATOPATHOLOGISTE"] // "Médecine de la peau"
//    //    var brain = ["NEUROCHIRURGIEN", "NEUROLOGUE", "NEUROPATHOLOGISTE"]// "Médecine du cerveau"
//    //    var daily = ["ACUPUNCTEUR", "ALLERGOLOGUE", "MEDECIN GENERALISTE", "MEDECIN DU SPORT", "MEDECIN DU TRAVAIL", "PEDIATRE"] // "Médecine du quotidien"
//    //    var faceSens = ["OPHTALMOLOGUE", "ORL", "ORTHOPEDISTE DENTO-MAXILLO-FACIALE", "OTO-RHINO-LARYNGOLOGUE"] //"Médecine du visage et des sens"
//    //    var reproductive = ["ANDROLOGUE", "GYNECOLOGUE MEDICALE", "GYNECOLOGUE-OBSTETRICIEN", "MEDECIN DE LA REPRODUCTION & GYNECOLOGIE MEDICALE"] //"Médecine génitale & reproduction"
//    //    var psycho = ["ADDICTOLOGUE", "PSYCHIATRE", "PSYCHIATRE DE L'ENFANT ET DE L'ADOLESCENT", "PSYCHOLOGUE"]// "Psychiatrie & addictologie"
//    //    var radio = ["RADIOLOGUE", "RADIO-THERAPEUTE", "RADIOPHARMACIEN ET RADIOBIOLOGISTE"]// "Radiologie & imagerie médicale"
//    //    var emergency = ["MEDECIN D'URGENCE", "MEDECIN INTERNE ET IMMUNOLOGIE CLINIQUE", "REANIMATION", "MEDECIN INTERNE", "MEDECIN DE LA DOULEUR ET MEDECINE PALLIATIVE", "GERIATRIE / GERONTOLOGIE", "MEDECIN PHYSIQUE ET DE READAPTATION"]//"Urgence & clinique"
//    //
//    //
//    
//    var body: some View {
//        
//        VStack(alignment: .leading) {
//            List {
//                
//                Section(header: SpecialtyHeaderRowView(headerIcon: "surgeryC", headerLabel: "Chirurgie & anesthesie")) {
//                    TaskRow(arrayhealthLabel: chir)
//                }
//                
//            }
//            //            Section(header: SpecialtyHeaderRowView(headerIcon: "heartC", headerLabel: "Médecine des organes & rhumatologie")) {
//            //                TaskRow(arrayhealthLabel: organ)
//            //            }
//            //            Section(header: SpecialtyHeaderRowView(headerIcon: "dermaC", headerLabel: "Médecine de la peau")) {
//            //                TaskRow(arrayhealthLabel: skin)
//            //            }
//            //            Section(header: SpecialtyHeaderRowView(headerIcon: "brainC", headerLabel: "Médecine du cerveau")) {
//            //                TaskRow(arrayhealthLabel: brain)
//            //            }
//            //            Section(header: SpecialtyHeaderRowView(headerIcon: "generalC", headerLabel: "Médecine du quotidien")) {
//            //                TaskRow(arrayhealthLabel: daily)
//            //
//            //            }
//            //            Section(header: SpecialtyHeaderRowView(headerIcon: "headC", headerLabel: "Médecine du visage et des sens")) {
//            //                TaskRow(arrayhealthLabel: faceSens)
//            //
//            //            }
//            //            Section(header: SpecialtyHeaderRowView(headerIcon: "gynecoC", headerLabel: "Médecine génitale & reproduction")) {
//            //                TaskRow(arrayhealthLabel: reproductive)
//            //
//            //            }
//            //            Section(header: SpecialtyHeaderRowView(headerIcon: "psyC", headerLabel: "Psychiatrie & addictologie")) {
//            //                TaskRow(arrayhealthLabel: psycho)
//            //
//            //            }
//            //            Section(header: SpecialtyHeaderRowView(headerIcon: "radioC", headerLabel: "Radiologie & imagerie médicale")) {
//            //                TaskRow(arrayhealthLabel: radio)
//            //
//            //            }
//            //            Section(header: SpecialtyHeaderRowView(headerIcon: "urgenceC", headerLabel: "Urgence & clinique")) {
//            //                TaskRow(arrayhealthLabel: emergency)
//            //
//            //            }
//        }.padding()
//    }
//}
//
//struct specialtiesList_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationView {
//            specialtiesList()
//        }
//    }
//}
