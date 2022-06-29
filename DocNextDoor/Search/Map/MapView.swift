//
//  MapView.swift
//  DocNextDoor
//
//  Created by apprenant55 on 20/06/2022.
//
//
// On importe le framework MapKit et CoreLocation pour récupérer les updates de la postion user
//
//import SwiftUI
//import MapKit
//import CoreLocation
//
// Structure de donnée pour les points GPS à afficher sur la Map
//
//struct Location: Identifiable {
//    let id = UUID()
//    let name: String
//    let color: Color
//    let coordinate: CLLocationCoordinate2D
//}
//
// Propriété StateObject observable appelle le ViewModel MapViewModel()
//
//
//
//struct MapView: View {
//
//    @StateObject var viewModel = MapViewModel()
//
//
//    var computeLocations: [String] = ads + contacts // concatenate all Strings arrays to display on Map.
//    let locations = [
//        Location(name: "DoctorOnVacation", color: .red, coordinate: CLLocationCoordinate2D(latitude: 40.005514, longitude: -105.192256))
//        // boucler for userLocation in Location Ads.location || Users.location
//    ]
//
//    var body: some View {
//        Map(coordinateRegion: $viewModel.mapRegion, showsUserLocation = true, annotationsItems: computeLocations) { computeLocation
//            MapMarker(coordinate: computeLocation.coordinate / location.coordinate, tint: computeLocations.color / location.color)
//        }
//        .ignoresSafeArea()
//        .accentColor(Color(.systemRed))
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
