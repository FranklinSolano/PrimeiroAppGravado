//
//  ViewController.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 06/08/25.
//

import UIKit

protocol LoginViewControllerDisplay: AnyObject {
    
}

class LoginViewController: UIViewController {
    
    var viewScreen: LoginScreen?
    let interactor: LoginInteracting
    
    override func loadView() {
        viewScreen = LoginScreen()
        view = viewScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewScreen?.delegate = self
    }
    

    init(interactor: LoginInteracting) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


extension LoginViewController: LoginViewControllerDisplay {
    
}

extension LoginViewController: LoginScreenProtocol {
    func actionForgotPasswrodBuuton() {
        
    }
    
    func actionLoginButton() {
        
    }
    
    func actionRegisterButton() {
        interactor.navigationRegisterinteractor()
    }
    
    
}
