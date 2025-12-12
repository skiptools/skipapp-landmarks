/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A view that establishes split view navigation for the app.
*/

import SwiftUI

/// A view that establishes split view navigation for the app.
struct LandmarksSplitView: View {
    @Environment(ModelData.self) var modelData
    #if !os(Android)
    @State var preferredColumn: NavigationSplitViewColumn = .detail
    #endif

    var body: some View {
        @Bindable var modelData = modelData
        
        #if os(Android)
        Text("TODO: Android")
        #else
        NavigationSplitView(preferredCompactColumn: $preferredColumn) {
            List {
                Section {
                    ForEach(NavigationOptions.mainPages) { page in
                        NavigationLink(value: page) {
                            Label(page.name, systemImage: page.symbolName)
                        }
                    }
                }
            }
            .navigationDestination(for: NavigationOptions.self) { page in
                NavigationStack(path: $modelData.path) {
                    page.viewForPage()
                }
                .navigationDestination(for: Landmark.self) { landmark in
                    LandmarkDetailView(landmark: landmark)
                }
                .navigationDestination(for: LandmarkCollection.self) { collection in
                    CollectionDetailView(collection: collection)
                }
                .showsBadges()
            }
            .frame(minWidth: 150)
        } detail: {
            NavigationStack(path: $modelData.path) {
                NavigationOptions.landmarks.viewForPage()
            }
            .navigationDestination(for: Landmark.self) { landmark in
                LandmarkDetailView(landmark: landmark)
            }
            .showsBadges()
        }
        // Adds global search, where the system positions the search bar automatically
        // in content views.
        .searchable(text: $modelData.searchString, prompt: "Search")
        // Adds the inspector, which the landmark detail view uses to display
        // additional information.
        #if !os(Android)
        .inspector(isPresented: $modelData.isLandmarkInspectorPresented) {
            if let landmark = modelData.selectedLandmark {
                LandmarkDetailInspectorView(landmark: landmark, inspectorIsPresented: $modelData.isLandmarkInspectorPresented)
            } else {
                EmptyView()
            }
        }
        #endif
        #endif
    }
}

#if !os(Android)
#Preview {
    @Previewable @State var modelData = ModelData()

    LandmarksSplitView()
        .environment(modelData)
        .onGeometryChange(for: CGSize.self) { geometry in
            geometry.size
        } action: {
            modelData.windowSize = $0
        }
}
#endif
