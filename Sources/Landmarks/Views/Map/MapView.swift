/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A view that presents all the landmarks in a global map.
*/

import SwiftUI
#if canImport(MapKit)
import MapKit
#endif

/// A view that presents all the landmarks in a global map.
struct MapView: View {
    @Environment(ModelData.self) var modelData
    
    @State var selection: MKMapItem?
    @State var landmarkMapItems: [MKMapItem] = []
    
    var body: some View {
        @Bindable var modelData = modelData
        
        Map(selection: $selection) {
            ForEach(modelData.mapItemsForLandmarks, id: \.self) { landmarkMapItem in
                Marker(item: landmarkMapItem)
            }
            .mapItemDetailSelectionAccessory()
            
            if modelData.locationFinder?.currentLocation != nil {
                UserAnnotation()
            }
        }
        .mapStyle(.standard(pointsOfInterest: .excludingAll))
        .onAppear {
            if modelData.locationFinder == nil {
                modelData.locationFinder = LocationFinder()
            }
        }
        #if !os(Android)
        .toolbar(removing: .title)
        #endif
    }
}

#if !os(Android)
#Preview {
    MapView()
        .environment(ModelData())
}
#endif
