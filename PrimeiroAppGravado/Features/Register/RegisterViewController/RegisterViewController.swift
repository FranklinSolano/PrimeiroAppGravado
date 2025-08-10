//
//  RegisterViewController.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 09/08/25.
//

import UIKit

//MARK: - RegisterViewControllerDisplay
protocol RegisterViewControllerDisplay: AnyObject {
    
}

//MARK: - RegisterViewController
final class RegisterViewController: UIViewController {
    
    //MARK: - Properties
    var screen: RegisterScreen?
    let interactor: RegisterInteracting
    
    //MARK: - init
    init(interactor: RegisterInteracting) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: -  Lifecycle
    override func loadView() {
        screen = RegisterScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//MARK: - RegisterViewControllerDisplay
extension RegisterViewController: RegisterViewControllerDisplay {
    
}
