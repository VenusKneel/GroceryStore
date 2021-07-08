//
//  CoordinatorDelegate.swift
//  GroceryStore
//
//  Created by Beqa Tabunidze on 08.07.21.
//

import UIKit

protocol CoordinatorDelegate: UIViewController {
    var coordinator: CoordinatorProtocol? { get set }
}
