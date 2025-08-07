//
//  View.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 06/08/25.
//

import UIKit

class LoginScreen: UIView {
    
    lazy var emailLabel: Labeling = DSLabelAdapter()
    lazy var emailTextField:  TextFielding = DSTextFieldAdapter()
    lazy var passwordLabel:  Labeling = DSLabelAdapter()
    lazy var passwordTextField: TextFielding = DSTextFieldAdapter()
    
    lazy var forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Esqueceu sua senha?", for: .normal)
        return button
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.layer.cornerRadius = 15
        button.clipsToBounds = true
        button.layer.borderColor = UIColor.red.cgColor
        button.layer.borderWidth = 2
        button.backgroundColor = .red
        return button
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Nao tem conta ? Registre-se?", for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
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
    
}

extension LoginScreen: ViewCodeProtocol {
    func setupElements() {
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
            loginButton.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            
            registerButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor,constant: -10),
            registerButton.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .darkGray
        configureLabel()
        configureTextField()
    }
    
    
}

extension LoginScreen: UITextFieldDelegate {
    
}
