//
//  testPDF.swift
//  DocNextDoor
//
//  Created by Apprenant 11 on 23/06/2022.
//

import SwiftUI
import PDFKit
/*
struct PDFUIView: View {
    let pdfDoc: PDFDocument
    var pdfName = "CV"
    init() {
        let url = Bundle.main.url(forResource: pdfName, withExtension: "pdf")!
                pdfDoc = PDFDocument(url: url)!
        
}
    var body: some View {
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



struct testPDF: View {
    var body: some View {
        NavigationView {
            /*NavigationLink {
                 PDFUIView()
            } label: {
                 Image(systemName: "doc.richtext")
            }*/
            HStack {
                NavigationLink(destination: PDFUIView()) {
                    ZStack {
                        Color(.white)
                        HStack {
                            Image(systemName: "doc.richtext").resizable().frame(width: 30, height: 35).foregroundColor(Color("Lightblue")).padding(.leading, 15)
                            Text("Curriculum Vitæ").font(.body).foregroundColor(Color(.black)).padding(5)
                            Spacer()
                            Image(systemName: "chevron.right").foregroundColor(Color("Txtgrey")).padding(.trailing, 10)
                        }//fin Hstack contenu CV
                    }.frame(width: 350, height: 60, alignment: .center).cornerRadius(18)
                }//fin NavigationLink
            }//fin Hstack CV*
 
        }
        
    }

}

struct testPDF_Previews: PreviewProvider {
    static var previews: some View {
        testPDF()
    }
}
*/
