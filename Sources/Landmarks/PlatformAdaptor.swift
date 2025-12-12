// Platform-specific customization for Landmarks App

#if os(Android)
import SwiftUI

extension String {
    init(localized: LocalizedStringResource) {
        self = "TODOLOC"
    }

    init(localized: String, comment: String) {
        self = "TODOLOC"
    }
}

extension View {
    func fixedSize(horizontal: Bool = false, vertical: Bool = true) -> some View {
        self
    }

    func imageScale(_ scale: Image.Scale) -> some View {
        self
    }

    func menuIndicator(_ visibility: Visibility) -> some View {
        self
    }

    func backgroundExtensionEffect() -> some View {
        self
    }

    func symbolVariant(_ variant: SymbolVariants) -> some View {
        self
    }

}

typealias CLLocationDegrees = Double
typealias CLLocationAccuracy = Double
typealias CLLocationSpeed = Double
typealias CLLocationSpeedAccuracy = Double
typealias CLLocationDirection = Double
typealias CLLocationDirectionAccuracy = Double

struct CLLocationCoordinate2D {
    let latitude, longitude: CLLocationDegrees
}

enum CLAuthorizationStatus {
    case authorizedWhenInUse
    case authorizedAlways
    case notDetermined
}

let kCLLocationAccuracyKilometer: CLLocationDirectionAccuracy = 1.0

class CLLocationManager {
    var desiredAccuracy: CLLocationAccuracy = 0.0
    var delegate: CLLocationManagerDelegate?

    var authorizationStatus: CLAuthorizationStatus {
        .authorizedWhenInUse
    }

    init() {
    }

    func requestLocation() {
    }

    func requestWhenInUseAuthorization() {
    }

    func stopUpdatingLocation() {
    }
}

protocol CLLocationManagerDelegate {

}

struct CLLocation {
}

typealias MapContentBuilder = ViewBuilder

struct Map: View {
    init<C>(position: Binding<MapCameraPosition>, bounds: MapCameraBounds? = nil, interactionModes: MapInteractionModes = .all, @MapContentBuilder content: () -> C) {
    }

    init<SelectedValue, C>(bounds: MapCameraBounds? = nil, interactionModes: MapInteractionModes = .all, selection: Binding<SelectedValue?>, @MapContentBuilder content: () -> C) {
    }


    func mapStyle(_ value: MapStyle) -> some View {
        self
    }
}

struct MapStyle {
    struct Elevation {
        static let automatic: MapStyle.Elevation = Elevation()
        static let flat: MapStyle.Elevation = Elevation()
        static let realistic: MapStyle.Elevation = Elevation()
    }

    struct StandardEmphasis {
        static let automatic: MapStyle.StandardEmphasis = MapStyle.StandardEmphasis()
        static let muted: MapStyle.StandardEmphasis = MapStyle.StandardEmphasis()
    }

    static let standard: MapStyle = MapStyle()
    static let imagery: MapStyle = MapStyle()
    static let hybrid: MapStyle = MapStyle()

    static func standard(elevation: MapStyle.Elevation = .automatic, emphasis: MapStyle.StandardEmphasis = .automatic, pointsOfInterest: PointOfInterestCategories = .all, showsTraffic: Bool = false) -> MapStyle {
        MapStyle()
    }
}

struct PointOfInterestCategories {
    static let all: PointOfInterestCategories = PointOfInterestCategories()
    static let excludingAll: PointOfInterestCategories = PointOfInterestCategories()
}


struct MapInteractionModes: OptionSet {
    static let all = MapInteractionModes(rawValue: UInt(1))

    let rawValue: UInt

    init(rawValue: UInt) {
        self.rawValue = rawValue
    }
}

struct MapCameraBounds {
}

struct MapCameraPosition: Equatable {
    static let automatic: MapCameraPosition = MapCameraPosition()

    static func region(_ region: MKCoordinateRegion) -> MapCameraPosition {
        MapCameraPosition()
    }
}

struct Marker<Label> : MapContent where Label : View {
    init(item: MKMapItem) where Label == Text {
    }
}

struct MKMapItem: Identifiable, Hashable {
    struct Identifier: RawRepresentable, Hashable {
        var rawValue: String

        init?(rawValue: String) {
            self.rawValue = rawValue
        }
    }

    var id: Identifier

    init(id: Identifier) {
        self.id = id
    }
}

struct MKCoordinateSpan {
    init(latitudeDelta: CLLocationDegrees, longitudeDelta: CLLocationDegrees) {
    }
}

struct MKCoordinateRegion {
    var center: CLLocationCoordinate2D?
    var span: MKCoordinateSpan?

    init() {
    }

    init(center: CLLocationCoordinate2D, span: MKCoordinateSpan) {
    }
}

class MKMapItemRequest {
    var mapItemIdentifier: MKMapItem.Identifier

    init(mapItemIdentifier: MKMapItem.Identifier) {
        self.mapItemIdentifier = mapItemIdentifier
    }

    var mapItem: MKMapItem {
        get async {
            MKMapItem(id: mapItemIdentifier)
        }
    }
}

extension ForEach: MapContent where Self: View {
}

protocol MapContent: View {
}

extension MapContent {
    func mapItemDetailSelectionAccessory(/*_ style: MapItemDetailSelectionAccessoryStyle? = .automatic*/) -> some MapContent {
        self
    }
}

struct UserAnnotation<Content>: MapContent where Content : View {
    init() where Content == DefaultUserAnnotationContent {
    }
}

struct DefaultUserAnnotationContent: View {
}

protocol Transferable {
}

protocol TransferRepresentation {
}

struct ProxyRepresentation: TransferRepresentation {

}

struct SharePreview {
}


//
// GeneratedStringSymbols_LandmarkCollectionData.swift
// Auto-Generated symbols for localized strings defined in “LandmarkCollectionData.xcstrings”.
//

//#if SWIFT_PACKAGE
//private let resourceBundle = Foundation.Bundle.module
//@available(macOS 13, iOS 16, tvOS 16, watchOS 9, *)
//private let resourceBundleDescription = LocalizedStringResource.BundleDescription.atURL(resourceBundle.bundleURL)
//#else
//
//private class ResourceBundleClass {}
//@available(macOS 13, iOS 16, tvOS 16, watchOS 9, *)
//private let resourceBundleDescription = LocalizedStringResource.BundleDescription.forClass(ResourceBundleClass.self)
//#endif

private let resourceBundle = Bundle.module
//@available(macOS 13, iOS 16, tvOS 16, watchOS 9, *)
private let resourceBundleDescription = LocalizedStringResource.BundleDescription.atURL(resourceBundle.bundleURL)


@available(macOS 13, iOS 16, tvOS 16, watchOS 9, *)
extension LocalizedStringResource {
    /// Namespace for strings in file “LandmarkData.xcstrings”.
    enum LandmarkData {
        /**
         Description of the ‘Alps’ landmark.

         Localized string for key “ALPS_DESCRIPTION” in table “LandmarkData.xcstrings”.
         */
        static var alpsDescription: LocalizedStringResource {
            LocalizedStringResource("ALPS_DESCRIPTION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Location of the ‘Alps’ landmark.

         Localized string for key “ALPS_LOCATION” in table “LandmarkData.xcstrings”.
         */
        static var alpsLocation: LocalizedStringResource {
            LocalizedStringResource("ALPS_LOCATION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Name of the ‘Alps’ landmark.

         Localized string for key “ALPS_NAME” in table “LandmarkData.xcstrings”.
         */
        static var alpsName: LocalizedStringResource {
            LocalizedStringResource("ALPS_NAME", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Description of the ‘Amazon Rainforest’ landmark.

         Localized string for key “AMAZON_RAINFOREST_DESCRIPTION” in table “LandmarkData.xcstrings”.
         */
        static var amazonRainforestDescription: LocalizedStringResource {
            LocalizedStringResource("AMAZON_RAINFOREST_DESCRIPTION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Location of the ‘Amazon Rainforest’ landmark.

         Localized string for key “AMAZON_RAINFOREST_LOCATION” in table “LandmarkData.xcstrings”.
         */
        static var amazonRainforestLocation: LocalizedStringResource {
            LocalizedStringResource("AMAZON_RAINFOREST_LOCATION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Name of the ‘Amazon Rainforest’ landmark.

         Localized string for key “AMAZON_RAINFOREST_NAME” in table “LandmarkData.xcstrings”.
         */
        static var amazonRainforestName: LocalizedStringResource {
            LocalizedStringResource("AMAZON_RAINFOREST_NAME", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Description of the ‘Deadvlei’ landmark.

         Localized string for key “DEADVLEI_DESCRIPTION” in table “LandmarkData.xcstrings”.
         */
        static var deadvleiDescription: LocalizedStringResource {
            LocalizedStringResource("DEADVLEI_DESCRIPTION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Location of the ‘Deadvlei’ landmark.

         Localized string for key “DEADVLEI_LOCATION” in table “LandmarkData.xcstrings”.
         */
        static var deadvleiLocation: LocalizedStringResource {
            LocalizedStringResource("DEADVLEI_LOCATION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Name of the ‘Deadvlei’ landmark.

         Localized string for key “DEADVLEI_NAME” in table “LandmarkData.xcstrings”.
         */
        static var deadvleiName: LocalizedStringResource {
            LocalizedStringResource("DEADVLEI_NAME", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Description of the ‘Grand Canyon’ landmark.

         Localized string for key “GRAND_CANYON_DESCRIPTION” in table “LandmarkData.xcstrings”.
         */
        static var grandCanyonDescription: LocalizedStringResource {
            LocalizedStringResource("GRAND_CANYON_DESCRIPTION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Location of the ‘Grand Canyon’ landmark.

         Localized string for key “GRAND_CANYON_LOCATION” in table “LandmarkData.xcstrings”.
         */
        static var grandCanyonLocation: LocalizedStringResource {
            LocalizedStringResource("GRAND_CANYON_LOCATION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Name of the ‘Grand Canyon’ landmark.

         Localized string for key “GRAND_CANYON_NAME” in table “LandmarkData.xcstrings”.
         */
        static var grandCanyonName: LocalizedStringResource {
            LocalizedStringResource("GRAND_CANYON_NAME", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Description of the ‘Great Barrier Reef’ landmark.

         Localized string for key “GREAT_BARRIER_REEF_DESCRIPTION” in table “LandmarkData.xcstrings”.
         */
        static var greatBarrierReefDescription: LocalizedStringResource {
            LocalizedStringResource("GREAT_BARRIER_REEF_DESCRIPTION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Location of the ‘Great Barrier Reef’ landmark.

         Localized string for key “GREAT_BARRIER_REEF_LOCATION” in table “LandmarkData.xcstrings”.
         */
        static var greatBarrierReefLocation: LocalizedStringResource {
            LocalizedStringResource("GREAT_BARRIER_REEF_LOCATION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Name of the ‘Great Barrier Reef’ landmark.

         Localized string for key “GREAT_BARRIER_REEF_NAME” in table “LandmarkData.xcstrings”.
         */
        static var greatBarrierReefName: LocalizedStringResource {
            LocalizedStringResource("GREAT_BARRIER_REEF_NAME", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Description of the ‘Joshua Tree’ landmark.

         Localized string for key “JOSHUA_TREE_DESCRIPTION” in table “LandmarkData.xcstrings”.
         */
        static var joshuaTreeDescription: LocalizedStringResource {
            LocalizedStringResource("JOSHUA_TREE_DESCRIPTION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Location of the ‘Joshua Tree’ landmark.

         Localized string for key “JOSHUA_TREE_LOCATION” in table “LandmarkData.xcstrings”.
         */
        static var joshuaTreeLocation: LocalizedStringResource {
            LocalizedStringResource("JOSHUA_TREE_LOCATION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Name of the ‘Joshua Tree’ landmark.

         Localized string for key “JOSHUA_TREE_NAME” in table “LandmarkData.xcstrings”.
         */
        static var joshuaTreeName: LocalizedStringResource {
            LocalizedStringResource("JOSHUA_TREE_NAME", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Description of the ‘Kirkjufell Mountain’ landmark.

         Localized string for key “KIRKJUFELL_MOUNTAIN_DESCRIPTION” in table “LandmarkData.xcstrings”.
         */
        static var kirkjufellMountainDescription: LocalizedStringResource {
            LocalizedStringResource("KIRKJUFELL_MOUNTAIN_DESCRIPTION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Location of the ‘Kirkjufell Mountain’ landmark.

         Localized string for key “KIRKJUFELL_MOUNTAIN_LOCATION” in table “LandmarkData.xcstrings”.
         */
        static var kirkjufellMountainLocation: LocalizedStringResource {
            LocalizedStringResource("KIRKJUFELL_MOUNTAIN_LOCATION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Name of the ‘Kirkjufell Mountain’ landmark.

         Localized string for key “KIRKJUFELL_MOUNTAIN_NAME” in table “LandmarkData.xcstrings”.
         */
        static var kirkjufellMountainName: LocalizedStringResource {
            LocalizedStringResource("KIRKJUFELL_MOUNTAIN_NAME", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Description of the ‘Lençóis Maranhenses’ landmark.

         Localized string for key “LENÇÓIS_MARANHENSES_DESCRIPTION” in table “LandmarkData.xcstrings”.
         */
        static var lençóisMaranhensesDescription: LocalizedStringResource {
            LocalizedStringResource("LENÇÓIS_MARANHENSES_DESCRIPTION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Location of the ‘Lençóis Maranhenses’ landmark.

         Localized string for key “LENÇÓIS_MARANHENSES_LOCATION” in table “LandmarkData.xcstrings”.
         */
        static var lençóisMaranhensesLocation: LocalizedStringResource {
            LocalizedStringResource("LENÇÓIS_MARANHENSES_LOCATION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Name of the ‘Lençóis Maranhenses’ landmark.

         Localized string for key “LENÇÓIS_MARANHENSES_NAME” in table “LandmarkData.xcstrings”.
         */
        static var lençóisMaranhensesName: LocalizedStringResource {
            LocalizedStringResource("LENÇÓIS_MARANHENSES_NAME", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Description of the ‘Monument Valley’ landmark.

         Localized string for key “MONUMENT_VALLEY_DESCRIPTION” in table “LandmarkData.xcstrings”.
         */
        static var monumentValleyDescription: LocalizedStringResource {
            LocalizedStringResource("MONUMENT_VALLEY_DESCRIPTION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Location of the ‘Monument Valley’ landmark.

         Localized string for key “MONUMENT_VALLEY_LOCATION” in table “LandmarkData.xcstrings”.
         */
        static var monumentValleyLocation: LocalizedStringResource {
            LocalizedStringResource("MONUMENT_VALLEY_LOCATION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Name of the ‘Monument Valley’ landmark.

         Localized string for key “MONUMENT_VALLEY_NAME” in table “LandmarkData.xcstrings”.
         */
        static var monumentValleyName: LocalizedStringResource {
            LocalizedStringResource("MONUMENT_VALLEY_NAME", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Description of the ‘Mount Everest’ landmark.

         Localized string for key “MOUNT_EVEREST_DESCRIPTION” in table “LandmarkData.xcstrings”.
         */
        static var mountEverestDescription: LocalizedStringResource {
            LocalizedStringResource("MOUNT_EVEREST_DESCRIPTION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Location of the ‘Mount Everest’ landmark.

         Localized string for key “MOUNT_EVEREST_LOCATION” in table “LandmarkData.xcstrings”.
         */
        static var mountEverestLocation: LocalizedStringResource {
            LocalizedStringResource("MOUNT_EVEREST_LOCATION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Name of the ‘Mount Everest’ landmark.

         Localized string for key “MOUNT_EVEREST_NAME” in table “LandmarkData.xcstrings”.
         */
        static var mountEverestName: LocalizedStringResource {
            LocalizedStringResource("MOUNT_EVEREST_NAME", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Description of the ‘Mount Fuji’ landmark.

         Localized string for key “MOUNT_FUJI_DESCRIPTION” in table “LandmarkData.xcstrings”.
         */
        static var mountFujiDescription: LocalizedStringResource {
            LocalizedStringResource("MOUNT_FUJI_DESCRIPTION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Location of the ‘Mount Fuji’ landmark.

         Localized string for key “MOUNT_FUJI_LOCATION” in table “LandmarkData.xcstrings”.
         */
        static var mountFujiLocation: LocalizedStringResource {
            LocalizedStringResource("MOUNT_FUJI_LOCATION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Name of the ‘Mount Fuji’ landmark.

         Localized string for key “MOUNT_FUJI_NAME” in table “LandmarkData.xcstrings”.
         */
        static var mountFujiName: LocalizedStringResource {
            LocalizedStringResource("MOUNT_FUJI_NAME", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Description of the ‘Muir Woods’ landmark.

         Localized string for key “MUIR_WOODS_DESCRIPTION” in table “LandmarkData.xcstrings”.
         */
        static var muirWoodsDescription: LocalizedStringResource {
            LocalizedStringResource("MUIR_WOODS_DESCRIPTION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Location of the ‘Muir Woods’ landmark.

         Localized string for key “MUIR_WOODS_LOCATION” in table “LandmarkData.xcstrings”.
         */
        static var muirWoodsLocation: LocalizedStringResource {
            LocalizedStringResource("MUIR_WOODS_LOCATION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Name of the ‘Muir Woods’ landmark.

         Localized string for key “MUIR_WOODS_NAME” in table “LandmarkData.xcstrings”.
         */
        static var muirWoodsName: LocalizedStringResource {
            LocalizedStringResource("MUIR_WOODS_NAME", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Description of the ‘Niagara Falls’ landmark.

         Localized string for key “NIAGARA_FALLS_DESCRIPTION” in table “LandmarkData.xcstrings”.
         */
        static var niagaraFallsDescription: LocalizedStringResource {
            LocalizedStringResource("NIAGARA_FALLS_DESCRIPTION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Location of the ‘Niagara Falls’ landmark.

         Localized string for key “NIAGARA_FALLS_LOCATION” in table “LandmarkData.xcstrings”.
         */
        static var niagaraFallsLocation: LocalizedStringResource {
            LocalizedStringResource("NIAGARA_FALLS_LOCATION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Name of the ‘Niagara Falls’ landmark.

         Localized string for key “NIAGARA_FALLS_NAME” in table “LandmarkData.xcstrings”.
         */
        static var niagaraFallsName: LocalizedStringResource {
            LocalizedStringResource("NIAGARA_FALLS_NAME", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Description of the ‘Rocky Mountains’ landmark.

         Localized string for key “ROCKY_MOUNTAINS_DESCRIPTION” in table “LandmarkData.xcstrings”.
         */
        static var rockyMountainsDescription: LocalizedStringResource {
            LocalizedStringResource("ROCKY_MOUNTAINS_DESCRIPTION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Location of the ‘Rocky Mountains’ landmark.

         Localized string for key “ROCKY_MOUNTAINS_LOCATION” in table “LandmarkData.xcstrings”.
         */
        static var rockyMountainsLocation: LocalizedStringResource {
            LocalizedStringResource("ROCKY_MOUNTAINS_LOCATION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Name of the ‘Rocky Mountains’ landmark.

         Localized string for key “ROCKY_MOUNTAINS_NAME” in table “LandmarkData.xcstrings”.
         */
        static var rockyMountainsName: LocalizedStringResource {
            LocalizedStringResource("ROCKY_MOUNTAINS_NAME", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Description of the ‘Sahara Desert’ landmark.

         Localized string for key “SAHARA_DESERT_DESCRIPTION” in table “LandmarkData.xcstrings”.
         */
        static var saharaDesertDescription: LocalizedStringResource {
            LocalizedStringResource("SAHARA_DESERT_DESCRIPTION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Location of the ‘Sahara Desert’ landmark.

         Localized string for key “SAHARA_DESERT_LOCATION” in table “LandmarkData.xcstrings”.
         */
        static var saharaDesertLocation: LocalizedStringResource {
            LocalizedStringResource("SAHARA_DESERT_LOCATION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Name of the ‘Sahara Desert’ landmark.

         Localized string for key “SAHARA_DESERT_NAME” in table “LandmarkData.xcstrings”.
         */
        static var saharaDesertName: LocalizedStringResource {
            LocalizedStringResource("SAHARA_DESERT_NAME", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Description of the ‘Serengeti’ landmark.

         Localized string for key “SERENGETI_DESCRIPTION” in table “LandmarkData.xcstrings”.
         */
        static var serengetiDescription: LocalizedStringResource {
            LocalizedStringResource("SERENGETI_DESCRIPTION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Location of the ‘Serengeti’ landmark.

         Localized string for key “SERENGETI_LOCATION” in table “LandmarkData.xcstrings”.
         */
        static var serengetiLocation: LocalizedStringResource {
            LocalizedStringResource("SERENGETI_LOCATION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Name of the ‘Serengeti’ landmark.

         Localized string for key “SERENGETI_NAME” in table “LandmarkData.xcstrings”.
         */
        static var serengetiName: LocalizedStringResource {
            LocalizedStringResource("SERENGETI_NAME", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Description of the ‘South Shetland Islands’ landmark.

         Localized string for key “SOUTH_SHETLAND_ISLANDS_DESCRIPTION” in table “LandmarkData.xcstrings”.
         */
        static var southShetlandIslandsDescription: LocalizedStringResource {
            LocalizedStringResource("SOUTH_SHETLAND_ISLANDS_DESCRIPTION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Location of the ‘South Shetland Islands’ landmark.

         Localized string for key “SOUTH_SHETLAND_ISLANDS_LOCATION” in table “LandmarkData.xcstrings”.
         */
        static var southShetlandIslandsLocation: LocalizedStringResource {
            LocalizedStringResource("SOUTH_SHETLAND_ISLANDS_LOCATION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Name of the ‘South Shetland Islands’ landmark.

         Localized string for key “SOUTH_SHETLAND_ISLANDS_NAME” in table “LandmarkData.xcstrings”.
         */
        static var southShetlandIslandsName: LocalizedStringResource {
            LocalizedStringResource("SOUTH_SHETLAND_ISLANDS_NAME", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Description of the ‘Uyuni Salt Flat’ landmark.

         Localized string for key “UYUNI_SALT_FLAT_DESCRIPTION” in table “LandmarkData.xcstrings”.
         */
        static var uyuniSaltFlatDescription: LocalizedStringResource {
            LocalizedStringResource("UYUNI_SALT_FLAT_DESCRIPTION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Location of the ‘Uyuni Salt Flat’ landmark.

         Localized string for key “UYUNI_SALT_FLAT_LOCATION” in table “LandmarkData.xcstrings”.
         */
        static var uyuniSaltFlatLocation: LocalizedStringResource {
            LocalizedStringResource("UYUNI_SALT_FLAT_LOCATION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Name of the ‘Uyuni Salt Flat’ landmark.

         Localized string for key “UYUNI_SALT_FLAT_NAME” in table “LandmarkData.xcstrings”.
         */
        static var uyuniSaltFlatName: LocalizedStringResource {
            LocalizedStringResource("UYUNI_SALT_FLAT_NAME", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Description of the ‘White Cliffs of Dover’ landmark.

         Localized string for key “WHITE_CLIFFS_OF_DOVER_DESCRIPTION” in table “LandmarkData.xcstrings”.
         */
        static var whiteCliffsOfDoverDescription: LocalizedStringResource {
            LocalizedStringResource("WHITE_CLIFFS_OF_DOVER_DESCRIPTION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Location of the ‘White Cliffs of Dover’ landmark.

         Localized string for key “WHITE_CLIFFS_OF_DOVER_LOCATION” in table “LandmarkData.xcstrings”.
         */
        static var whiteCliffsOfDoverLocation: LocalizedStringResource {
            LocalizedStringResource("WHITE_CLIFFS_OF_DOVER_LOCATION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Name of the ‘White Cliffs of Dover’ landmark.

         Localized string for key “WHITE_CLIFFS_OF_DOVER_NAME” in table “LandmarkData.xcstrings”.
         */
        static var whiteCliffsOfDoverName: LocalizedStringResource {
            LocalizedStringResource("WHITE_CLIFFS_OF_DOVER_NAME", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Description of the ‘Wulingyuan’ landmark.

         Localized string for key “WULINGYUAN_DESCRIPTION” in table “LandmarkData.xcstrings”.
         */
        static var wulingyuanDescription: LocalizedStringResource {
            LocalizedStringResource("WULINGYUAN_DESCRIPTION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Location of the ‘Wulingyuan’ landmark.

         Localized string for key “WULINGYUAN_LOCATION” in table “LandmarkData.xcstrings”.
         */
        static var wulingyuanLocation: LocalizedStringResource {
            LocalizedStringResource("WULINGYUAN_LOCATION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Name of the ‘Wulingyuan’ landmark.

         Localized string for key “WULINGYUAN_NAME” in table “LandmarkData.xcstrings”.
         */
        static var wulingyuanName: LocalizedStringResource {
            LocalizedStringResource("WULINGYUAN_NAME", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Description of the ‘Yellowstone National Park’ landmark.

         Localized string for key “YELLOWSTONE_NATIONAL_PARK_DESCRIPTION” in table “LandmarkData.xcstrings”.
         */
        static var yellowstoneNationalParkDescription: LocalizedStringResource {
            LocalizedStringResource("YELLOWSTONE_NATIONAL_PARK_DESCRIPTION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Location of the ‘Yellowstone National Park’ landmark.

         Localized string for key “YELLOWSTONE_NATIONAL_PARK_LOCATION” in table “LandmarkData.xcstrings”.
         */
        static var yellowstoneNationalParkLocation: LocalizedStringResource {
            LocalizedStringResource("YELLOWSTONE_NATIONAL_PARK_LOCATION", table: "LandmarkData", bundle: resourceBundleDescription)
        }

        /**
         Name of the ‘Yellowstone National Park’ landmark.

         Localized string for key “YELLOWSTONE_NATIONAL_PARK_NAME” in table “LandmarkData.xcstrings”.
         */
        static var yellowstoneNationalParkName: LocalizedStringResource {
            LocalizedStringResource("YELLOWSTONE_NATIONAL_PARK_NAME", table: "LandmarkData", bundle: resourceBundleDescription)
        }
    }
}

@available(macOS 13, iOS 16, tvOS 16, watchOS 9, *)
extension LocalizedStringResource {
    /// Namespace for strings in file “LandmarkCollectionData.xcstrings”.
    enum LandmarkCollectionData {
        /**
         Description of the ‘2023 Trip’ landmark collection.

         Localized string for key “2023_TRIP_DESCRIPTION” in table “LandmarkCollectionData.xcstrings”.
         */
        static var _2023TripDescription: LocalizedStringResource {
            LocalizedStringResource("2023_TRIP_DESCRIPTION", table: "LandmarkCollectionData", bundle: resourceBundleDescription)
        }

        /**
         Name of the ‘2023 Trip’ landmark collection.

         Localized string for key “2023_TRIP_NAME” in table “LandmarkCollectionData.xcstrings”.
         */
        static var _2023TripName: LocalizedStringResource {
            LocalizedStringResource("2023_TRIP_NAME", table: "LandmarkCollectionData", bundle: resourceBundleDescription)
        }

        /**
         Description of the ‘Favorites’ landmark collection.

         Localized string for key “FAVORITES_NAME” in table “LandmarkCollectionData.xcstrings”.
         */
        static var favoritesName: LocalizedStringResource {
            LocalizedStringResource("FAVORITES_NAME", table: "LandmarkCollectionData", bundle: resourceBundleDescription)
        }

        /**
         Description of the ‘Icy Wonderland’ landmark collection.

         Localized string for key “ICY_WONDERLAND_DESCRIPTION” in table “LandmarkCollectionData.xcstrings”.
         */
        static var icyWonderlandDescription: LocalizedStringResource {
            LocalizedStringResource("ICY_WONDERLAND_DESCRIPTION", table: "LandmarkCollectionData", bundle: resourceBundleDescription)
        }

        /**
         Name of the ‘Icy Wonderland’ landmark collection.

         Localized string for key “ICY_WONDERLAND_NAME” in table “LandmarkCollectionData.xcstrings”.
         */
        static var icyWonderlandName: LocalizedStringResource {
            LocalizedStringResource("ICY_WONDERLAND_NAME", table: "LandmarkCollectionData", bundle: resourceBundleDescription)
        }

        /**
         Description of the ‘Sweet Deserts’ landmark collection.

         Localized string for key “SWEET_DESERTS_DESCRIPTION” in table “LandmarkCollectionData.xcstrings”.
         */
        static var sweetDesertsDescription: LocalizedStringResource {
            LocalizedStringResource("SWEET_DESERTS_DESCRIPTION", table: "LandmarkCollectionData", bundle: resourceBundleDescription)
        }

        /**
         Name of the ‘Sweet Deserts’ landmark collection.

         Localized string for key “SWEET_DESERTS_NAME” in table “LandmarkCollectionData.xcstrings”.
         */
        static var sweetDesertsName: LocalizedStringResource {
            LocalizedStringResource("SWEET_DESERTS_NAME", table: "LandmarkCollectionData", bundle: resourceBundleDescription)
        }

        /**
         Description of the ‘Towering Peaks’ landmark collection.

         Localized string for key “TOWERING_PEAKS_DESCRIPTION” in table “LandmarkCollectionData.xcstrings”.
         */
        static var toweringPeaksDescription: LocalizedStringResource {
            LocalizedStringResource("TOWERING_PEAKS_DESCRIPTION", table: "LandmarkCollectionData", bundle: resourceBundleDescription)
        }

        /**
         Name of the ‘Towering Peaks’ landmark collection.

         Localized string for key “TOWERING_PEAKS_NAME” in table “LandmarkCollectionData.xcstrings”.
         */
        static var toweringPeaksName: LocalizedStringResource {
            LocalizedStringResource("TOWERING_PEAKS_NAME", table: "LandmarkCollectionData", bundle: resourceBundleDescription)
        }
    }
}
#endif
