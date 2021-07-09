//
//  SignInViewController.swift
//  GroceryStore
//
//  Created by Ilia Tsikelashvili on 09.07.21.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var registerOutlet: UIButton!
    @IBOutlet weak var logInOutlet: UIButton!
    @IBOutlet weak var labelPassword: UITextField!
    @IBOutlet weak var labelGmail: UILabel!
    @IBOutlet weak var labelUsername: UITextField!
    
    private var persistentManager: PersistentManagerProtocol!
    private var usersManager:      UsersManagerProtocol!
    private var viewModel:         SignInViewModelProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInOutlet.layer.cornerRadius    = 20
        registerOutlet.layer.cornerRadius = 20
        labelPassword.layer.cornerRadius = 20
        labelUsername.layer.cornerRadius = 20
        labelGmail.layer.cornerRadius    = 20
        labelGmail.layer.borderWidth = 1
        labelGmail.layer.borderColor = UIColor.lightGray.cgColor
        configureViewModel()
    }
    
    @IBAction func signIn(_ sender: Any) {
        viewModel.login(passcode: labelPassword.text ?? "", username: labelUsername.text ?? "") { success in
            if success {
                let sb : UIStoryboard = UIStoryboard(name: "MainViewController", bundle:nil)
                let vc = sb.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
                self.navigationController?.pushViewController(vc, animated: true)
                print("OK")

            } else {
                let alertController1 = UIAlertController (title: "No User Found ", message: "Incorrect Username Or Password", preferredStyle: .alert)
                alertController1.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alertController1, animated: true, completion: nil)
            }
        }
    }
    @IBAction func register(_ sender: Any) {
        let sb : UIStoryboard = UIStoryboard(name: "SignUpViewController", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    private func configureViewModel() {
        persistentManager = PersistentManager()
        usersManager      = UsersManager(with: persistentManager)
        viewModel         = SignInViewModel(with: usersManager)
    }
}
