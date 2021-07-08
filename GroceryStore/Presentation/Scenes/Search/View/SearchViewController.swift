//
//  SearchViewController.swift
//  GroceryStore
//
//  Created by Ladolado3911 on 08.07.21.
//

import UIKit

class SearchViewController: BaseViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self

    }
}

extension SearchViewController: UISearchBarDelegate {
}
