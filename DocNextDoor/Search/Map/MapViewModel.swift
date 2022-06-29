////
////  MapViewModel.swift
////  DocNextDoor
////
////  Created by apprenant55 on 21/06/2022.
////
//
//import MapKit
//import CoreLocation
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
//
//
