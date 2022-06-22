//
//  DetailedAdUIView.swift
//  DocNextDoor
//
//  Created by Apprenant 91 on 21/06/2022.
//

import SwiftUI

struct DetailedAdUIView: View {
   // var ad: Advertisement
    
    var body: some View {
        ScrollView {
                VStack(alignment: .leading) {
                    ForEach(0..<100) {
                        Text("Row \($0)")
                            .frame(maxWidth: .infinity)
                    }
                }
            }
    }
}

struct DetailedAdUIView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedAdUIView()
    }
}
