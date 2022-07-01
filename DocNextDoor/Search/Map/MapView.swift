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
//final class MapViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
//
//    @Published var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 43.60554, longitude: 1.44746),
//                                                  span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
//
//    var locationManager: CLLocationManager?
//
//    func checkUserLocationTurnedOn() {
//        if CLLocationManager.locationServicesEnabled() {
//            locationManager = CLLocationManager()
//            // checkUserLocationAuthorization()
//            locationManager!.delegate = self // forced unwrapping alert !
//        } else {
//            print("Alert message") // "Votre localisation est indisponible. Activez là dans Paramètres et réessayez."
//        }
//    }
//
//    private func checkUserLocationAuthorization() {
//
//        guard let locationManager = locationManager else {return}
//
//        switch locationManager.authorizationStatus {
//
//        case .notDetermined:
//            locationManager.requestWhenInUseAuthorization()
//        case .restricted:
//            print("Votre localisation semble restreinte. Vérifiez si un contrôle parental empêche la localisation.")
//        case .denied:
//            print("Vous n'avez pas donné les droits d'accès à votre position pour cette application. Vérifiez vos paramètres.")
//        case .authorizedAlways, .authorizedWhenInUse:
//            mapRegion = MKCoordinateRegion(center: locationManager.location!.coordinate,
//                                           span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
//        @unknown default:
//            break
//        }
//    }
//
//    func locationManagerDidChangeAuthorization(_manager:CLLocationManager) {
//        checkUserLocationAuthorization()
//    }
//
//}
