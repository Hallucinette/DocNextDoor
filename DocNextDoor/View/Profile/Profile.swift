//
//  Profile.swift
//  DocNextDoor
//
//  Created by Apprenant 11 on 22/06/2022.
//

import SwiftUI
import PDFKit

struct PDFUIView : View {
    let pdfDoc: PDFDocument
    var pdfName = "CV3"
    init() {
        let url = Bundle.main.url(forResource: pdfName, withExtension: "pdf")!
                pdfDoc = PDFDocument(url: url)!
        
}
    var body: some View {
        Text("Curriculum Vitæ").font(.title2).bold().foregroundColor(Color(.black)).padding(5)
        PDFKitView(showing: pdfDoc)
    }
}
struct PDFKitView: UIViewRepresentable {
    let pdfDocument: PDFDocument
    init(showing pdfDoc: PDFDocument) {
        self.pdfDocument = pdfDoc
    }
    func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()
        pdfView.document = pdfDocument
        pdfView.autoScales = true
        return pdfView
    }
    func updateUIView(_ pdfView: PDFView, context: Context) {
        pdfView.document = pdfDocument
    }
}

struct Profile: View {
    @EnvironmentObject var profilControl : ProfileControl
    var body: some View {
        ZStack { //background
            Color("BackG").ignoresSafeArea()
            VStack {
                HStack {
                    Spacer()
                    NavigationLink(destination: Settings()){ //add param profilUser
                        Image(systemName: "gearshape").foregroundColor(Color("Darkblue")).font(.system(size: 30))
                    }//fin navigation view
                }.frame(width: 370)//fin Hstack param
                HStack {
                    Image(profilControl.profilUser.pp).resizable().overlay(Circle().stroke(Color("Darkblue"), lineWidth: 7)).clipShape(Circle())
                        .foregroundColor(Color("Lightblue")).frame(width: 100, height: 100).padding(3)
                    VStack {
                        Text(profilControl.profilUser.name).font(.title2).bold().padding(1)
                        Text(profilControl.profilUser.speciality ?? "").font(.callout).italic().bold()
                            .foregroundColor(Color("Darkblue")).padding(1)
                    }.padding(20)
                }//fin Hstack PP et nom
                Rectangle().frame(width: 400, height: 3, alignment: .center).foregroundColor(Color("Lightblue")).padding(15)
                VStack {
                    Text("Coordonnées").font(.body).bold().frame(
                        maxWidth: .infinity,
                        alignment: .leading).padding(1)
                    Text(profilControl.profilUser.contact.mail).font(.callout).italic().underline().frame(
                        maxWidth: .infinity,
                        alignment: .leading).padding(1)
                    Text(profilControl.profilUser.contact.phone ?? "").font(.callout).frame(
                        maxWidth: .infinity,
                        alignment: .leading).padding(1)
                    Text("Biographie").font(.body).bold().frame(
                        maxWidth: .infinity,
                        alignment: .leading).padding(1)
                    Text(profilControl.profilUser.description).font(.callout).frame(
                        maxWidth: .infinity,
                        alignment: .leading).padding(1)
                }.frame(width: 350)//Fin Vstcak coord + biographie
                HStack {
                    NavigationLink(destination: PDFUIView()) {
                        ZStack {
                            Color(.white)
                            HStack {
                                Image(systemName: "doc.append").resizable().frame(width: 30, height: 35).foregroundColor(Color("Lightblue")).padding(.leading, 15)
                                Text("Curriculum Vitæ").font(.body).bold().foregroundColor(Color(.black)).padding(5)
                                Spacer()
                                Image(systemName: "chevron.right").foregroundColor(Color("Txtgrey")).padding(.trailing, 10)
                            }//fin Hstack contenu CV
                        }.frame(width: 350, height: 60, alignment: .center).cornerRadius(18)
                    }//fin NavigationLink
                }.padding(20)//fin Hstack CV
                Spacer()
            }//fin VSTACK full view
        }//fin ZStack background
    }//fin body
}//fin Profile view
/*
struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile(profilUser: profilUser).previewDevice(PreviewDevice(rawValue: "iPhone 13"))
    }
}
*/
