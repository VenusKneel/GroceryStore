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
    
    private var searchViewModel: SearchViewModel!
    private var searchDataSource: SearchDataSource!
    private var searchSegControl: SearchSegControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        config()
    }
    
    func config() {
        searchViewModel = SearchViewModel(with: self)
        searchDataSource = SearchDataSource(with: collectView)
        searchSegControl = SearchSegControl(with: segmentedControl)
    }
    
    @IBAction func segmentedChanged(_ sender: UISegmentedControl) {
    }
}

extension SearchViewController: UISearchBarDelegate {
}
