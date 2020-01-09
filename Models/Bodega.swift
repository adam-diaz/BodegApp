//
//  Bodega.swift
//  BodegApp
//
//  Created by Adam Diaz on 1/7/20.
//  Copyright © 2020 Adam Diaz. All rights reserved.
//

import Foundation

struct Bodega: Codable {
    let name: String
    let location: [LocationInfo]
    let bodegaImage: [imageInfo]
    let phone: String
    let hours: HoursInfo
}

struct LocationInfo: Codable {
    let address: String
    let lat: String
    let lon: String
}

struct imageInfo: Codable {
    let image: String
}

struct HoursInfo: Codable {
    let monday: String
    let tuesday: String
    let wednesday: String
    let thursday: String
    let friday: String
    let saturday: String
    let sunday: String
    
    private enum CodingKeys: String, CodingKey {
        case monday = "Monday"
        case tuesday = "Tuesday"
        case wednesday = "Wednesday"
        case thursday = "Thursday"
        case friday = "Friday"
        case saturday = "Saturday"
        case sunday = "Sunday"
    }
}
