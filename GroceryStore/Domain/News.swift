//
//  News.swift
//  GroceryStore
//
//  Created by Beqa Tabunidze on 08.07.21.
//

import Foundation

struct News: Codable {
    let title: String?
    let content: String?
    let date: String?
    let pictureUrl: String?
    
    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case content = "Content"
        case date = "Date"
        case pictureUrl = "MediumCoverPhotoUrl"
    }
}
