//
//  View.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 06/08/25.
//

import UIKit

class Screen: UIView {
    
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Email"
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.placeholder = "Digite seu email"
        textfield.layer.cornerRadius = 15
        textfield.clipsToBounds = true
        textfield.layer.borderColor = UIColor.red.cgColor
        textfield.layer.borderWidth = 2
        return textfield
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Password"
        return label
    }()
    
    lazy var passwordTextField: UITextField = {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.placeholder = "Digite sua Senha"
        textfield.layer.cornerRadius = 15
        textfield.clipsToBounds = true
        textfield.layer.borderColor = UIColor.red.cgColor
        textfield.layer.borderWidth = 2
        return textfield
    }()
    
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
        setupElements()
        setupConstrainsts()
        backgroundColor = .darkGray
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupElements(){
        addSubview(emailLabel)
        addSubview(emailTextField)
        addSubview(passwordLabel)
        addSubview(passwordTextField)
        addSubview(forgotPasswordButton)
        addSubview(loginButton)
        addSubview(registerButton)
    }
    
    
    private func setupConstrainsts() {
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
            registerButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            
            
            
            
            
        ])
    }
    
}

