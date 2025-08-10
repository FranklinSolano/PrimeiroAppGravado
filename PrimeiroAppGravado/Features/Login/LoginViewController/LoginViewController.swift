//
//  ViewController.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 06/08/25.
//

import UIKit

//MARK: - LoginViewControllerDisplay
protocol LoginViewControllerDisplay: AnyObject {
    
}

//MARK: - LoginViewController
final class LoginViewController: UIViewController {
    
    //MARK: - Properties
    var viewScreen: LoginScreen?
    let interactor: LoginInteracting
    
    //MARK: - init
    init(interactor: LoginInteracting) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Lifecycle
    override func loadView() {
        viewScreen = LoginScreen()
        view = viewScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewScreen?.delegate = self
    }
}

//MARK: - LoginViewControllerDisplay
extension LoginViewController: LoginViewControllerDisplay {
    
}

//MARK: - LoginScreenProtocol
extension LoginViewController: LoginScreenProtocol {
    func actionForgotPasswrodBuuton() {
        
    }
    
    func actionLoginButton() {
        
    }
    
    func actionRegisterButton() {
        interactor.navigationRegisterinteractor()
    }
}
