//
//  SearchViewController.swift
//  GroceryStore
//
//  Created by Ladolado3911 on 08.07.21.
//

import UIKit

class SearchViewController: BaseViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var collectView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
    }
    
    @IBAction func segmentedChanged(_ sender: UISegmentedControl) {
    }
}

extension SearchViewController: UISearchBarDelegate {
}
