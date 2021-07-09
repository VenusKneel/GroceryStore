//
//  PersistentManager.swift
//  homework 49
//
//  Created by Ilia Tsikelashvili on 17.06.21.
//

import UIKit
import CoreData

protocol Fetchable where Self: NSManagedObject {}

extension User: Fetchable {}

protocol PersistentManagerProtocol: BasePersistentProtocol {
    func create<T: NSManagedObject>(with object: T, completion: @escaping ((Bool) -> Void))
    func read<T: NSManagedObject>(with object: T, using passwordPredicate: NSPredicate?,using usernamePredicate: NSPredicate?, completion: @escaping ((Bool) -> Void))
    func update()
    func delete()
}

final class PersistentManager: PersistentManagerProtocol {

    func create<T>(with object: T, completion: @escaping ((Bool) -> Void)) where T : NSManagedObject {
        guard let context = context else { return }
        
        do {
            try context.save()
        } catch {
            print(error)
        }
    }

    func read<T>(with object: T, using passwordPredicate: NSPredicate? = nil, using usernamePredicate: NSPredicate? = nil, completion: @escaping ((Bool) -> Void)) where T : NSManagedObject {
        guard let context = context else { return }
        
        do {
            
            let request = NSFetchRequest<NSManagedObject>(entityName: "User")
            request.predicate = passwordPredicate
            request.predicate = usernamePredicate
            let result = try context.fetch(request)

            completion(!result.isEmpty)
            
        } catch {
            print(error)
        }
    }
    
    func update() {
     //   guard let context = context else { return }
    }
    
    func delete() {
      //  guard let context = context else { return }
    }
}
