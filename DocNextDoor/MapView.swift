//
//  MapView.swift
//  DocNextDoor
//
//  Created by apprenant55 on 20/06/2022.
//

// On importe le framework MapKit et CoreLocation pour récupérer les updates de la postion user

import SwiftUI
import MapKit
import CoreLocation

// Structure de donnée pour les points GPS à afficher sur la Map

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let color: Color
    let coordinate: CLLocationCoordinate2D
}

// Propriété StateObject observable appelle le ViewModel MapViewModel()



struct MapView: View {
    
    @StateObject var viewModel = MapViewModel()
    
    
    let computeLocations: [String] = + + // concatenate (and compute) all Strings arrays to display on Map
    let locations = [
        Location(name: "DoctorOnVacation", color: .red, coordinate: CLLocationCoordinate2D(latitude: 40.005514, longitude: -105.192256))
        // boycker for userLocation in Location Ads.location || Users.location
    ]
    
    var body: some View {
        Map(coordinateRegion: $mapRegion, showsUserLocation = true, annotationsItems: computeLocations/locations) { computeLocation / location
            MapMarker(coordinate: computeLocation.coordinate / location.coordinate, tint: computeLocation.color / location.color)
        }
        .ignoresSafeArea()
        .accentColor(Color(.systemBlue))
        .onAppear {
            viewModel.checkUserLocationAuthorization()
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
