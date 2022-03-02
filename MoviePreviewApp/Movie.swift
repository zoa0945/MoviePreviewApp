//
//  Movie.swift
//  MoviePreviewApp
//
//  Created by Mac on 2022/03/01.
//

import UIKit

struct Movie: Codable {
    let resCount: Int
    let response: [Response]
    
    enum CodingKeys: String, CodingKey {
        case resCount = "resultCount"
        case response = "results"
    }
}

struct Response: Codable {
    let thumbnail: String
    let preview: String
    
    enum CodingKeys: String, CodingKey {
        case thumbnail = "artworkUrl100"
        case preview = "previewUrl"
    }
}

struct SampleMovie {
    let thumbnail: UIImage
}
