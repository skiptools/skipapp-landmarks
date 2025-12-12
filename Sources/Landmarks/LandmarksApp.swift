/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
The main app declaration.
*/

import SwiftUI
#if canImport(SkipFuse)
import SkipFuse
#else
import OSLog
#endif

/// A logger for the Landmarks module.
let logger: Logger = Logger(subsystem: "landmarks", category: "Landmarks")

/// The shared top-level view for the app, loaded from the platform-specific App delegates below.
///
/// The default implementation merely loads the `ContentView` for the app and logs a message.
/* SKIP @bridge */public struct LandmarksRootView : View {
    /// An object that manages the app's data and state.
    @State var modelData = ModelData()

    /* SKIP @bridge */public init() {
    }

    public var body: some View {
        LandmarksSplitView()
            .environment(modelData)
            .frame(minWidth: 375.0, minHeight: 375.0)
            // Keeps the current window's size for use in scrolling header calculations.
            #if !os(Android)
            .onGeometryChange(for: CGSize.self) { geometry in
                geometry.size
            } action: {
                modelData.windowSize = $0
            }
            #endif
    }
}

/// Global application delegate functions.
///
/// These functions can update a shared observable object to communicate app state changes to interested views.
/* SKIP @bridge */public final class LandmarksAppDelegate : Sendable {
    /* SKIP @bridge */public static let shared = LandmarksAppDelegate()

    private init() {
    }

    /* SKIP @bridge */public func onInit() {
        logger.debug("onInit")
    }

    /* SKIP @bridge */public func onLaunch() {
        logger.debug("onLaunch")
    }

    /* SKIP @bridge */public func onResume() {
        logger.debug("onResume")
    }

    /* SKIP @bridge */public func onPause() {
        logger.debug("onPause")
    }

    /* SKIP @bridge */public func onStop() {
        logger.debug("onStop")
    }

    /* SKIP @bridge */public func onDestroy() {
        logger.debug("onDestroy")
    }

    /* SKIP @bridge */public func onLowMemory() {
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
