//
//  BasePersistentProtocol.swift
//  homework 49
//
//  Created by Ilia Tsikelashvili on 17.06.21.
//

import UIKit
import CoreData

protocol BasePersistentProtocol: AnyObject {
    var context: NSManagedObjectContext? { get }
}

extension BasePersistentProtocol {
    var context: NSManagedObjectContext? {
        return (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    }
}
