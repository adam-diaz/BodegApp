//
//  AppError.swift
//  BodegApp
//
//  Created by Adam Diaz on 1/7/20.
//  Copyright © 2020 Adam Diaz. All rights reserved.
//

import Foundation

enum AppError: Error, CustomStringConvertible {
    case badURL(String)
    case noResponse
    case networkClientError(Error)
    case noData
    case decodingError(Error)
    case encodingError(Error)
    case badStatusCode(Int)
    case badMimeType(String)
    
    var description: String {
        switch self {
        case .badURL(let url):
            return "\(url) is a bad url link."
        case .noResponse:
            return "No response returned from web api"
        case .networkClientError(let error):
            return "Network Error: \(error)"
        case .noData:
            return "No data returned from web api."
        case .decodingError(let error):
            return "Decoding Error: \(error)"
        case .encodingError(let error):
            return "Encoding Error: \(error)"
        case .badStatusCode(let code):
            return "Bad status code of (\(code)) return from web api."
        case .badMimeType(let mimeType):
            return "Verify your mime type, found a (\(mimeType)) mime type."
            
        }
    }
}
