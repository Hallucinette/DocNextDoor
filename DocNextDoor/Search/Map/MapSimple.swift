//
//  MapSimple.swift
//  DocNextDoor
//
//  Created by apprenant55 on 01/07/2022.
//

import SwiftUI
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String // ads.title
    let coordinate: CLLocationCoordinate2D
    let color: String
}

let locations = [
    Location(name: "Médecin généraliste", coordinate: CLLocationCoordinate2D(latitude: 43.658347, longitude: 1.355913), color: "Darkblue"),
    Location(name: "Ophtalmologue", coordinate: CLLocationCoordinate2D(latitude: 43.560025, longitude: 6.048027), color: "Lightblue")
]

struct MapSimple: View {
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 43.60554, longitude: 1.44746),
                                                      span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    var ads: [Advertisement]
    var body: some View {
        VStack {
            Map(coordinateRegion: $mapRegion, annotationItems: locations) { location in
                MapAnnotation(coordinate: location.coordinate) { // , tint: location.color
                    NavigationLink {
                        DetailedAdUIView(ad: ads[0]) //Text(location.name)
                    } label: {
                        Circle()
                            .stroke(.red, lineWidth: 3)
                            .frame(width: 44, height: 44)
                        //                        .onTapGesture {
                        //                            print("Tapped on \(location.name)")
                    }
                } //.navigationTitle(location.name)
            }
        }

        //        }
    }
}


struct MapSimple_Previews: PreviewProvider {
    static var previews: some View {
        MapSimple(ads: ads)
    }
}
