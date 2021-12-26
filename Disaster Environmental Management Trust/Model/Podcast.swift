//
//  Podcast.swift
//  Disaster Environmental Management Trust
//
//  Created by Simbarashe Dombodzvuku on 12/26/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct Podcast: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    //var park: String
    var province: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool

    var category: Category
    enum Category: String, CaseIterable, Codable {
        case environment = "Environment"
        case community = "Community"
        //case mountains = "Mountains"
    }

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var featureImage: Image? {
        isFeatured ? Image(imageName) : nil
        //isFeatured ? Image(imageName + "_feature") : nil
    }

    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
