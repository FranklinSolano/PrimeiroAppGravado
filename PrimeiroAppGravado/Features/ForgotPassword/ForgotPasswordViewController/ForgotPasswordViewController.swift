//
//  ForgotPasswordViewController.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 10/08/25.
//

import UIKit

//MARK: - ForgotPasswordViewControllerDisplay
protocol ForgotPasswordViewControllerDisplay: AnyObject {
    
}

//MARK: - ForgotPasswordViewController
final class ForgotPasswordViewController: UIViewController {

    let interactor: ForgotPasswordInteracting
    var screen: ForgotPasswordScreen?
    
    init(interactor: ForgotPasswordInteracting) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        screen = ForgotPasswordScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate = self
    }
}

//MARK: - ForgotPasswordViewControllerDisplay

extension ForgotPasswordViewController: ForgotPasswordViewControllerDisplay {
    
}

extension ForgotPasswordViewController: ForgotPasswordScreenProtocol {
    func actionBackButton() {
        interactor.navigationBackButtonInteractor()
    }
    
    func actionForgotButton() {
        
    }
    
    
}
