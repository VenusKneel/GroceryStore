//
//  SignUpViewModel.swift
//  Auth
//
//  Created by Ilia Tsikelashvili on 08.07.21.
//

import Foundation
import UIKit
import CoreData

protocol SignUpViewModelProtocol: AnyObject {
    func register(with passcode: String, with name: String, with surname: String, with username: String, completion: @escaping ((Bool) -> Void))
    init(with usersManager: UsersManagerProtocol)
}

final class SignUpViewModel: SignUpViewModelProtocol {
    
    
    private let usersManager: UsersManagerProtocol
    
    init(with usersManager: UsersManagerProtocol) {
        self.usersManager = usersManager
    }
    
    func register(with passcode: String, with name: String, with surname: String, with username: String, completion: @escaping ((Bool) -> Void)) {
        usersManager.register(with: passcode, with: name, with: surname, with: username, completion: completion)
    }
}
