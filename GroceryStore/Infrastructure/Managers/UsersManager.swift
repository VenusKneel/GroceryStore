//
//  UsersManager.swift
//  homework 49
//
//  Created by Ilia Tsikelashvili on 17.06.21.
//

import Foundation
import CoreData

protocol UsersManagerProtocol: BasePersistentProtocol {
    func login(with passcode: String, with username: String, completion: @escaping ((Bool) -> Void))
    func register(with passcode: String,with name: String, with surname: String, with username: String, completion: @escaping ((Bool) -> Void))
    
    init(with persistentManager: PersistentManagerProtocol)
}


final class UsersManager: UsersManagerProtocol {
    
    private let persistentManager: PersistentManagerProtocol
    
    init(with persistentManager: PersistentManagerProtocol) {
        self.persistentManager = persistentManager
    }
    
    func register(with passcode: String, with name: String, with surname: String, with username: String, completion: @escaping ((Bool) -> Void)) {
        guard let context = context else { return }
        let user = User(context: context)
        user.name     = name
        user.surname  = surname
        user.username = username
        user.password = passcode
        persistentManager.create(with: user, completion: completion)
    }
    
    func login(with passcode: String, with username: String, completion: @escaping ((Bool) -> Void)) {
        guard let context = context else { return }
        
        let user = User(context: context)
        
        let usernamePredicate = NSPredicate(format: "%K = %@", "username", username)
        let passwordPredicate = NSPredicate(format: "%K = %@", "password", passcode)

        persistentManager.read(with: user, using: passwordPredicate, using: usernamePredicate, completion: completion)
    }
    
}
