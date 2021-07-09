//
//  SignInViewModel.swift
//  Auth
//
//  Created by Ilia Tsikelashvili on 08.07.21.
//

import Foundation

protocol SignInViewModelProtocol: AnyObject {
    func login(passcode: String, username: String, completion: @escaping ((Bool) -> Void))
    
    init(with usersManager: UsersManagerProtocol)
}

final class SignInViewModel: SignInViewModelProtocol {
    
    private let usersManager: UsersManagerProtocol
    
    init(with usersManager: UsersManagerProtocol) {
        self.usersManager = usersManager
    }
    
    func login(passcode: String, username: String, completion: @escaping ((Bool) -> Void)) {
        usersManager.login(with: passcode,with: username, completion: completion)
    }
    
}
