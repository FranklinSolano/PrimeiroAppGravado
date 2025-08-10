//
//  View.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 06/08/25.
//

import UIKit

//MARK: - LoginScreenProtocol
protocol LoginScreenProtocol: AnyObject {
    func actionForgotPasswrodBuuton()
    func actionLoginButton()
    func actionRegisterButton()
}

//MARK: - LoginScreen
final class LoginScreen: UIView {
    
    // MARK: - Properties
    weak var delegate: LoginScreenProtocol?
    
    lazy var emailLabel: Labeling = DSLabelAdapter()
    lazy var emailTextField:  TextFielding = DSTextFieldAdapter()
    lazy var passwordLabel:  Labeling = DSLabelAdapter()
    lazy var passwordTextField: TextFielding = DSTextFieldAdapter()
    lazy var forgotPasswordButton: Buttoning = DSButtonTitlesAdapter()
    lazy var loginButton: Buttoning = DSButtonAdapter()
    lazy var registerButton: Buttoning = DSButtonTitlesAdapter()
    lazy var imageLoginBackGroud: ImageViewing = DSImageViewAdapter(image: UIImage(named: "imageLogin1"))
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Outher Methods
    private func configureLabel() {
        emailLabel.setDTO(.init(text: "Email"))
        passwordLabel.setDTO(.init(text: "Password"))
    }
    
    private func configureTextField(){
        emailTextField.setDTO(.init(placeholder: "Digite o seu email", isSecureText: false))
        passwordTextField.setDTO(.init(placeholder: "Digite o sua senha", isSecureText: true))
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    private func configureButton(){
        forgotPasswordButton.setDTO(.init(title: "Forgot Password?", isEnable: true, font: DSFonts.titleSemiBold16))
        forgotPasswordButton.onClick { [weak self] in
            self?.delegate?.actionForgotPasswrodBuuton()
        }
        
        loginButton.setDTO(.init(title: "Login", isEnable: true, font: DSFonts.titleBold18))
        loginButton.onClick { [weak self] in
            self?.delegate?.actionLoginButton()
        }
        
        registerButton.setDTO(.init(title: "Nao tem conta? Cadastre-se", isEnable: true, font: DSFonts.titleSemiBold16))
        registerButton.onClick { [weak self] in
            self?.delegate?.actionRegisterButton()
        }
        
    }
}

//MARK: - ViewCodeProtocol
extension LoginScreen: ViewCodeProtocol {
    func setupElements() {
        addSubview(imageLoginBackGroud)
        addSubview(emailLabel)
        addSubview(emailTextField)
        addSubview(passwordLabel)
        addSubview(passwordTextField)
        addSubview(forgotPasswordButton)
        addSubview(loginButton)
        addSubview(registerButton)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            imageLoginBackGroud.topAnchor.constraint(equalTo: topAnchor),
            imageLoginBackGroud.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageLoginBackGroud.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageLoginBackGroud.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            emailLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 60),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 10),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwordLabel.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 10),
            passwordTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            
            forgotPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor,constant: 7),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -28),
            
            loginButton.topAnchor.constraint(equalTo: forgotPasswordButton.bottomAnchor,constant: 60),
            loginButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            loginButton.widthAnchor.constraint(equalToConstant: 195),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            
            registerButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor,constant: -10),
            registerButton.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    func setupAdditionalConfiguration() {
        configureLabel()
        configureTextField()
        configureButton()
    }
}

//MARK: - UITextFieldDelegate
extension LoginScreen: UITextFieldDelegate {
    
}
