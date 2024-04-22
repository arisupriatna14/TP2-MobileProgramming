//
//  MapView.swift
//  Rilabs
//
//  Created by Ari Supriatna on 21/04/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    @AppStorage("name") private var name = ""
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 51.507222,
            longitude: -0.1275
        ),
        span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
    )
    
    var body: some View {
        NavigationStack {
            Map(
                coordinateRegion: $region,
                showsUserLocation: true,
                userTrackingMode: .constant(.follow)
            )
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Text("Hi, \(name)")
                }
            }
            .navigationTitle(Text("Map"))
        }
    }
}

#Preview {
    MapView()
}
