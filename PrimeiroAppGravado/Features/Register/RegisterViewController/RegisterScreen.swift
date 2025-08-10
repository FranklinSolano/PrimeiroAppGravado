//
//  RegisterView.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 09/08/25.
//

import UIKit

//MARK: - RegisterScreenProtocol
protocol RegisterScreenProtocol: AnyObject {
    func actionBackButton()
    func actionRegisterButton()
}

//MARK: - RegisterScreen
final class RegisterScreen: UIView {
   
    // MARK: - Properties
    weak var delegate: RegisterScreenProtocol?
    
    lazy var backGroudImage: ImageViewing = DSImageViewAdapter(image: UIImage(named: "imageRegister"))
    lazy var backButton: Buttoning = DSButtonTitlesAdapter()
    lazy var nameLabel: Labeling = DSLabelAdapter()
    lazy var nameTextField: TextFielding = DSTextFieldAdapter()
    lazy var emailLabel: Labeling = DSLabelAdapter()
    lazy var emailTextField: TextFielding = DSTextFieldAdapter()
    lazy var passwordLabel: Labeling = DSLabelAdapter()
    lazy var passwordTextField: TextFielding = DSTextFieldAdapter()
    lazy var confirmedPasswordLabel: Labeling = DSLabelAdapter()
    lazy var confirmedPasswordTextField: TextFielding = DSTextFieldAdapter()
    lazy var registerButton: Buttoning = DSButtonAdapter()
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Outher Methods
    private func configureLabel(){
        nameLabel.setDTO(.init(text: "Name"))
        emailLabel.setDTO(.init(text: "Email"))
        passwordLabel.setDTO(.init(text: "Password"))
        confirmedPasswordLabel.setDTO(.init(text: "Confirmed Password"))
    }
    
    private func configureButton(){
        backButton.setDTO(.init(title: "<-- Back", isEnable: true, font: DSFonts.titleBold18))
        backButton.onClick { [weak self] in
            self?.delegate?.actionBackButton()
        }
        
        registerButton.setDTO(.init(title: "Register", isEnable: true, font: DSFonts.titleBold18))
        registerButton.onClick { [weak self] in
            self?.delegate?.actionRegisterButton()
        }
    }
    
    private func configureTextField(){
        nameTextField.setDTO(.init(placeholder: "Digite seu nome", isSecureText: false))
        emailTextField.setDTO(.init(placeholder: "Digite seu email", isSecureText: false))
        passwordTextField.setDTO(.init(placeholder: "Digite sua senha", isSecureText: true))
        confirmedPasswordTextField.setDTO(.init(placeholder: "Digite sua senha novamente", isSecureText: true))
    }
    
    
}

//MARK: - ViewCodeProtocol
extension RegisterScreen: ViewCodeProtocol {
    func setupElements() {
        addSubview(backGroudImage)
        addSubview(backButton)
        addSubview(nameLabel)
        addSubview(nameTextField)
        addSubview(emailLabel)
        addSubview(emailTextField)
        addSubview(passwordLabel)
        addSubview(passwordTextField)
        addSubview(confirmedPasswordLabel)
        addSubview(confirmedPasswordTextField)
        addSubview(registerButton)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            backGroudImage.topAnchor.constraint(equalTo: topAnchor),
            backGroudImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            backGroudImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            backGroudImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 25),
            
            nameLabel.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 30),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            nameTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
            nameTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            nameTextField.heightAnchor.constraint(equalToConstant: 50),
            
            emailLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 20),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 10),
            emailTextField.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            emailTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwordLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 10),
            passwordTextField.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            
            confirmedPasswordLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            confirmedPasswordLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            confirmedPasswordTextField.topAnchor.constraint(equalTo: confirmedPasswordLabel.bottomAnchor, constant: 10),
            confirmedPasswordTextField.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            confirmedPasswordTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
            confirmedPasswordTextField.heightAnchor.constraint(equalToConstant: 50),
            
            registerButton.topAnchor.constraint(equalTo: confirmedPasswordTextField.bottomAnchor,constant: 45),
            registerButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            registerButton.widthAnchor.constraint(equalToConstant: 195),
            registerButton.heightAnchor.constraint(equalToConstant: 50),
        ])
        
        
    }
    
    func setupAdditionalConfiguration() {
        configureLabel()
        configureButton()
        configureTextField()
    }
}
