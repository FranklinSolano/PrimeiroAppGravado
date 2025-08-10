//
//  RegisterViewController.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 09/08/25.
//

import UIKit

protocol RegisterViewControllerDisplay: AnyObject {
    
}

final class RegisterViewController: UIViewController {
    
    var screen: RegisterScreen?
    let interactor: RegisterInteracting
    
    override func loadView() {
        screen = RegisterScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    init(interactor: RegisterInteracting) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

extension RegisterViewController: RegisterViewControllerDisplay {
    
}
