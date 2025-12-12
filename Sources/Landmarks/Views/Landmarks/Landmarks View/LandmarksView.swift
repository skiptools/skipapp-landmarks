/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
A view that shows a featured landmark, and other landmarks organized by continent.
*/

import SwiftUI

/// A view that shows a featured landmark, and other landmarks organized by continent.
struct LandmarksView: View {
    @Environment(ModelData.self) var modelData
    @Environment(\.isSearching) var isSearching
    
    var body: some View {
        @Bindable var modelData = modelData

        ScrollView(showsIndicators: false) {
            LazyVStack(alignment: .leading, spacing: Constants.standardPadding) {

                LandmarkFeaturedItemView(landmark: modelData.featuredLandmark!)
                    .flexibleHeaderContent()

                #if !os(Android)
                ForEach(ModelData.orderedContinents, id: \.self) { continent in
                    Group {
                        ContinentTitleView(title: continent.name)
                        if let landmarkList = modelData.landmarksByContinent[continent] {
                            LandmarkHorizontalListView(landmarkList: landmarkList)
                                .containerRelativeFrame(.vertical) { height, axis in
                                    let proposedHeight = height * Constants.landmarkListPercentOfHeight
                                    if proposedHeight > Constants.landmarkListMinimumHeight {
                                        return proposedHeight
                                    }
                                    return Constants.landmarkListMinimumHeight
                                }
                        }
                    }
                }
                #endif
            }
        }
        .flexibleHeaderScrollView()
        .ignoresSafeArea(.keyboard)
        .ignoresSafeArea(edges: .top)
        #if !os(Android)
        .toolbar(removing: .title)
        #endif
        .navigationDestination(for: Landmark.self) { landmark in
            LandmarkDetailView(landmark: landmark)
        }
    }
}

struct ContinentTitleView: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .bold()
            .padding(.top, Constants.titleTopPadding)
            .padding(.bottom, Constants.titleBottomPadding)
            .padding(.leading, Constants.leadingContentInset)
    }
}

#if !os(Android)
#Preview {
    @Previewable @State var modelData = ModelData()

    LandmarksView()
        .environment(modelData)
        .onGeometryChange(for: CGSize.self) { geometry in
            geometry.size
        } action: {
            modelData.windowSize = $0
        }
}
#endif
