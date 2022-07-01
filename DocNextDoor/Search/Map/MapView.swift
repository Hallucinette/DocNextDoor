////
////  MapView.swift
////  DocNextDoor
////
////  Created by apprenant55 on 20/06/2022.
//
//
//// On importe le framework MapKit et CoreLocation pour récupérer les updates de la postion user
//
//import SwiftUI
//import MapKit
//import CoreLocation
//
//// Structure de donnée pour les points GPS à afficher sur la Map
//
//struct Location: Identifiable {
//    let id = UUID()
//    let name: String
//    let color: Color
//    let coordinate: CLLocationCoordinate2D
//}
//
//
//struct MapView: View {
//    
//    // Propriété StateObject observable appelle le ViewModel MapViewModel()
//    @StateObject var viewModel = MapViewModel()
//
//    let locations = [ads]
//
//    var body: some View {
//        Map(coordinateRegion: $viewModel.mapRegion, showsUserLocation = true, annotationsItems: locations) { location
//            MapMarker(coordinate: location.coordinate, tint: location.color)
//        }
//        .ignoresSafeArea()
//        .accentColor(Color("Darkblue"))
//        .onAppear {
//            viewModel.checkUserLocationAuthorization()
//        }
//
//        /* func distance(to b: MKMapPoint) -> CLLocationDistance
//
//        Parameters
//
//        a
//
//            The first map point.
//        b
//
//            The second map point.
//        */
//
//
//    }
//}
//
//struct MapView_Previews: PreviewProvider {
//    static var previews: some View {
//        MapView()
//    }
//}
//
