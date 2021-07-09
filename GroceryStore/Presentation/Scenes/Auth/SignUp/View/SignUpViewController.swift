//
//  SignUpViewController.swift
//  GroceryStore
//
//  Created by Ilia Tsikelashvili on 09.07.21.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var registerOutlet: UIButton!
    @IBOutlet weak var labelPassword: UITextField!
    @IBOutlet weak var labelSurname: UITextField!
    @IBOutlet weak var labelName: UITextField!
    @IBOutlet weak var labelUsername: UITextField!
    @IBOutlet weak var labelPhone: UITextField!
    
    private var persistentManager: PersistentManagerProtocol!
    private var usersManager:      UsersManagerProtocol!
    private var viewModel:         SignUpViewModelProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerOutlet.layer.cornerRadius = 20
        labelUsername.layer.cornerRadius  = 20
        labelName.layer.cornerRadius      = 20
        labelPhone.layer.cornerRadius     = 20
        labelSurname.layer.cornerRadius   = 20
        labelPassword.layer.cornerRadius  = 20

        configureViewModel()
    }
    
    @IBAction func register(_ sender: Any) {
        viewModel.register(with: labelPassword.text ?? "", with: labelName.text ?? "", with: labelSurname.text ?? "", with: labelUsername.text ?? "") { success in
             if success {
                let alertController1 = UIAlertController (title: "Valid ", message: "Sucess ", preferredStyle: .alert)
                alertController1.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alertController1, animated: true, completion: nil)
                print("OK")
             } else{
                let alertController1 = UIAlertController (title: "Registration Is Not Valid", message: "Try Again", preferredStyle: .alert)
                alertController1.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alertController1, animated: true, completion: nil)

             }
        }
    }
    
    private func configureViewModel() {
        persistentManager = PersistentManager()
        usersManager      = UsersManager(with: persistentManager)
        viewModel         = SignUpViewModel(with: usersManager)
    }
}
