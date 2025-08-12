//
//  ForgotPasswordScreen.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 10/08/25.
//

import UIKit

protocol ForgotPasswordScreenProtocol: AnyObject{
    func actionBackButton()
    func actionForgotButton()
}
 
//MARK: - ForgotPasswordScreen
final class ForgotPasswordScreen: UIView {
    
    weak var delegate: ForgotPasswordScreenProtocol?
    
    lazy var backGorundimage: ImageViewing = DSImageViewAdapter(image: UIImage(named: "imageForgot"))
    lazy var backButton: Buttoning = DSButtonTitlesAdapter()
    lazy var titleLabel: Labeling = DSLabelAdapter()
    lazy var emailLabel: Labeling = DSLabelAdapter()
    lazy var emailTextField: TextFielding = DSTextFieldAdapter()
    lazy var forgotButton: Buttoning = DSButtonAdapter()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureLabel() {
        titleLabel.setDTO(.init(text: "Informe o seu email !"))
        emailLabel.setDTO(.init(text: "Email"))
    }
    
    private func configureTextField(){
        emailTextField.setDTO(.init(placeholder: "Digite seu email", isSecureText: false))
        emailTextField.delegate = self
    }
    
    private func configureButton(){
        forgotButton.setDTO(.init(title: "Enviar", isEnable: true, font: DSFonts.titleBold18))
        forgotButton.onClick { [weak self] in
            self?.delegate?.actionForgotButton()
        }
        
        backButton.setDTO(.init(title: "<-- Back", isEnable: true, font: DSFonts.titleBold18))
        backButton.onClick { [weak self] in
            self?.delegate?.actionBackButton()
        }
    }
    
    private func configureTapGesture(){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard) )
        addGestureRecognizer(tapGesture)
    }
    
    @objc private func dismissKeyboard(){
        endEditing(true)
    }
    
}

//MARK: - ViewCodeProtocol
extension ForgotPasswordScreen: ViewCodeProtocol {
    func setupElements() {
        addSubview(backGorundimage)
        addSubview(backButton)
        addSubview(titleLabel)
        addSubview(emailLabel)
        addSubview(emailTextField)
        addSubview(forgotButton)
        
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            backGorundimage.topAnchor.constraint(equalTo: topAnchor),
            backGorundimage.leadingAnchor.constraint(equalTo: leadingAnchor),
            backGorundimage.trailingAnchor.constraint(equalTo: trailingAnchor),
            backGorundimage.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 25),
            
            titleLabel.topAnchor.constraint(equalTo: backButton.topAnchor,constant: 70),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            
            emailLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 10),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            
            forgotButton.topAnchor.constraint(equalTo: emailTextField.bottomAnchor,constant: 45),
            forgotButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            forgotButton.widthAnchor.constraint(equalToConstant: 195),
            forgotButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func setupAdditionalConfiguration() {
        configureLabel()
        configureButton()
        configureTextField()
        configureTapGesture()
    }
}

extension ForgotPasswordScreen: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}
