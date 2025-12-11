/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
The main app declaration.
*/

import SwiftUI
import OSLog

/// A logger for the Landmarks module.
let logger: Logger = Logger(subsystem: "landmarks", category: "Landmarks")

/// The shared top-level view for the app, loaded from the platform-specific App delegates below.
///
/// The default implementation merely loads the `ContentView` for the app and logs a message.
public struct LandmarksRootView : View {
    /// An object that manages the app's data and state.
    @State private var modelData = ModelData()

    public init() {
    }

    public var body: some View {
        LandmarksSplitView()
            .environment(modelData)
            .frame(minWidth: 375.0, minHeight: 375.0)
            // Keeps the current window's size for use in scrolling header calculations.
            .onGeometryChange(for: CGSize.self) { geometry in
                geometry.size
            } action: {
                modelData.windowSize = $0
            }
    }
}

/// Global application delegate functions.
///
/// These functions can update a shared observable object to communicate app state changes to interested views.
public final class LandmarksAppDelegate : Sendable {
    public static let shared = LandmarksAppDelegate()

    private init() {
    }

    public func onInit() {
        logger.debug("onInit")
    }

    public func onLaunch() {
        logger.debug("onLaunch")
    }

    public func onResume() {
        logger.debug("onResume")
    }

    public func onPause() {
        logger.debug("onPause")
    }

    public func onStop() {
        logger.debug("onStop")
    }

    public func onDestroy() {
        logger.debug("onDestroy")
    }

    public func onLowMemory() {
        logger.debug("onLowMemory")
    }
}

// MARK: Legacy non-Skip App implementation

/// The main app declaration.
//@main
//struct LandmarksApp: App {
//    /// An object that manages the app's data and state.
//    @State private var modelData = ModelData()
//
//    var body: some Scene {
//        WindowGroup {
//            LandmarksSplitView()
//                .environment(modelData)
//                .frame(minWidth: 375.0, minHeight: 375.0)
//                // Keeps the current window's size for use in scrolling header calculations.
//                .onGeometryChange(for: CGSize.self) { geometry in
//                    geometry.size
//                } action: {
//                    modelData.windowSize = $0
//                }
//        }
//    }
//}
