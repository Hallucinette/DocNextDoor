//
//  DocNextDoorApp.swift
//  DocNextDoor
//
//  Created by apprenant59 on 16/06/2022.
//

import SwiftUI

@main
struct DocNextDoorApp: App {
    @StateObject var profilControl = ProfileControl()
    var body: some Scene {
        WindowGroup {
            BubbleTabBarView().environmentObject(profilControl)
        }
    }
}
