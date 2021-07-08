//
//  NewsResponse.swift
//  GroceryStore
//
//  Created by Beqa Tabunidze on 08.07.21.
//

import Foundation

struct NewsResponse: Codable {
    
    let newsList: [News]
    
    enum CodingKeys: String, CodingKey {
        case newsList = "List"
    }
}
