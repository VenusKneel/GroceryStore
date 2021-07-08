//
//  AppCoordinator.swift
//  GroceryStore
//
//  Created by Beqa Tabunidze on 08.07.21.
//

import UIKit

final class AppCoordinator: CoordinatorProtocol {
    
    // MARK: - Variables
    private var window: UIWindow?
    private var navigationController: UINavigationController?
    
    // MARK: - Initialisation
    init(_ window: UIWindow?, navigationController: UINavigationController?) {
        self.window = window
        self.navigationController = navigationController
        
    }
    
    func start() {
        let vc = MainViewController.instantiateFromStoryboard()
        vc.coordinator = self
        navigationController?.navigationBar.isHidden = true
        navigationController?.pushViewController(vc, animated: true)
        
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
    
    func proceedToSearch() {
        let vc = SearchViewController.instantiateFromStoryboard()
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func popViewController() {
        navigationController?.popViewController(animated: true)
    }
    
}
