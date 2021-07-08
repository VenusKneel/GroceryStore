//
//  NewsManager.swift
//  GroceryStore
//
//  Created by Beqa Tabunidze on 08.07.21.
//

import Foundation

protocol NewsManagerProtocol: AnyObject {
    func fetchNewsList(completion: @escaping ((Result<[News], Error>) -> Void))
}

class NewsManager: NewsManagerProtocol {
    func fetchNewsList(completion: @escaping ((Result<[News], Error>) -> Void)) {
        let url = "https://imedinews.ge/ge/~/api/getnews/get?skipCount=28&portion=20&categoryId=17&pageId=59"
        NetworkManager.shared.get(url: url) { (result: Result<NewsResponse, Error>) in
            switch result {
            case .success(let response):
                completion(.success(response.newsList))
            case .failure(let err):
                completion(.failure(err))
            }
        }
    }
}


