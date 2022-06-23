//
//  GaleryOwn.swift
//  DocNextDoor
//
//  Created by apprenant55 on 23/06/2022.
//

import SwiftUI

struct GaleryOwn: View {
    @State var photoItem: PhotosPickerItem?
    
    var body: some View {
        PhotosPicker("Ma photothèque", selection: $photoItem)
    }
}

struct GaleryOwn_Previews: PreviewProvider {
    static var previews: some View {
        GaleryOwn()
    }
}
