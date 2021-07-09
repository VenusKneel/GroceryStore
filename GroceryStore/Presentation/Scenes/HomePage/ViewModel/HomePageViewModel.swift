//
//  HomePageViewModel.swift
//  GroceryStore
//
//  Created by Baxva Jakeli on 08.07.21.
//

import UIKit

protocol HomePageViewModelProtocol: AnyObject {
    func fetchNews(completion: @escaping (([News]) -> Void))
    init(with newsManager: NewsManagerProtocol)
}

final class HomePageViewModel: HomePageViewModelProtocol {

    private var newsManager: NewsManagerProtocol!
    
    
    init(with newsManager: NewsManagerProtocol) {
        self.newsManager = newsManager
    }
    
    func fetchNews(completion: @escaping (([News]) -> Void)) {
        newsManager.fetchNewsList { result in
            switch result {
            case.success(let news):
                completion(news)
            case.failure(let error):
                print(error.localizedDescription)
                
            }
            
        }
    }
}
