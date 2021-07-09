//
//  HomePageViewController.swift
//  GroceryStore
//
//  Created by Baxva Jakeli on 08.07.21.
//

import UIKit

class HomePageViewController: BaseViewController {

    @IBOutlet weak var tableView: UITableView!
    private var dataSource: HomePageDataSource!
    private var viewModel: HomePageViewModelProtocol!
    private var newsManager: NewsManagerProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureDataSource()
        configireTableView()
        self.navigationController?.isNavigationBarHidden = true
    }
    
    private func configureDataSource() {
        newsManager = NewsManager()
        viewModel = HomePageViewModel(with: newsManager)
        dataSource = HomePageDataSource(with: tableView, viewModel: viewModel)
        dataSource.refresh()
        
    }
    
    private func configireTableView() {
        tableView.separatorStyle = .none
        tableView.registerNib(class: BestSellerCell.self)
        tableView.registerNib(class: GenresCell.self)
        tableView.registerNib(class: TopPicksCell.self)
    }
    
}
