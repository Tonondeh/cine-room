//
//  LoginView.swift
//  cine-room
//
//  Created by Alexandre Cardoso on 09/10/22.
//

import UIKit

final class LoginView: UIView {

    private lazy var backgroundImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "filmVPalmer"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.alpha = 0.30
        return imageView
    }()

    private lazy var logoImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "LogoApp-Parceria"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    private lazy var welcomeStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [welcomeLabel, cineRoomLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.distribution = .fillProportionally
        stackView.spacing = 1
        return stackView
    }()

    private lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Bem Vindo ao"
        label.font = .systemFont(ofSize: 20, weight: .semibold)
        label.textColor = .white
        label.numberOfLines = 1
        return label
    }()

    private lazy var cineRoomLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Cine Room"
        label.font = .systemFont(ofSize: 30, weight: .bold)
        label.textColor = UIColor(named: "mainColor")
        label.numberOfLines = 1
        return label
    }()

    private lazy var emailStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [emailLabel, emailTextField])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.distribution = .fillProportionally
        stackView.spacing = 1
        return stackView
    }()

    private lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Email"
        label.font = .systemFont(ofSize: 17, weight: .regular)
        label.textColor = .white
        label.numberOfLines = 1
        return label
    }()

    private lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "cineroom@cineroom.com"
        textField.textColor = .black
        textField.backgroundColor = .white
        textField.font = .systemFont(ofSize: 15, weight: .regular)
        textField.keyboardType = .emailAddress
        textField.layer.cornerRadius = 5

        let view = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        textField.leftView = view
        textField.leftViewMode = .always

        return textField
    }()

    private lazy var passwordStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [passwordLabel, passwordTextField])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.distribution = .fillProportionally
        stackView.spacing = 1
        return stackView
    }()

    private lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Senha"
        label.font = .systemFont(ofSize: 17, weight: .regular)
        label.textColor = .white
        label.numberOfLines = 1
        return label
    }()

    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Digite sua senha"
        textField.textColor = .black
        textField.backgroundColor = .white
        textField.font = .systemFont(ofSize: 15, weight: .regular)
        textField.keyboardType = .emailAddress
        textField.layer.cornerRadius = 5

        let view = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        textField.leftView = view
        textField.leftViewMode = .always

        return textField
    }()

    private lazy var forgotPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Esqueceu a senha?", for: .normal)
        button.setTitleColor(UIColor(named: "thirdColor"), for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .bold)
        button.contentHorizontalAlignment = .trailing
        return button
    }()

    private lazy var accountButtonsStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [createAccountButton, connectAccountButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.spacing = 1
        return stackView
    }()

    private lazy var createAccountButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Criar conta", for: .normal)
        button.setTitleColor(UIColor(named: "backgroundColor"), for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15, weight: .bold)
        button.backgroundColor = UIColor(named: "secondColor")
        button.layer.cornerRadius = 5
        return button
    }()

    private lazy var connectAccountButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Conectar", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15, weight: .bold)
        button.backgroundColor = UIColor(named: "mainColor")
        button.layer.cornerRadius = 5
        return button
    }()

    init() {
        super.init(frame: .zero)
        setupView()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension LoginView: ViewCodable {

    func buildHierarchy() {
        addSubview(backgroundImageView)
        addSubview(logoImageView)
        addSubview(welcomeStackView)
        addSubview(emailStackView)
        addSubview(passwordStackView)
        addSubview(forgotPasswordButton)
        addSubview(accountButtonsStackView)
    }

    func buildConstraints() {
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),

            logoImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            logoImageView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 160),
            logoImageView.widthAnchor.constraint(equalToConstant: 138),

            welcomeStackView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 30),
            welcomeStackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 30),
            welcomeStackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -30),

            emailStackView.topAnchor.constraint(equalTo: welcomeStackView.bottomAnchor, constant: 30),
            emailStackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 30),
            emailStackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -30),

            emailTextField.heightAnchor.constraint(equalToConstant: 40),
            emailTextField.leadingAnchor.constraint(equalTo: emailStackView.leadingAnchor),
            emailTextField.trailingAnchor.constraint(equalTo: emailStackView.trailingAnchor),

            passwordStackView.topAnchor.constraint(equalTo: emailStackView.bottomAnchor, constant: 20),
            passwordStackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 30),
            passwordStackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -30),

            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            passwordTextField.leadingAnchor.constraint(equalTo: passwordStackView.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: passwordStackView.trailingAnchor),

            forgotPasswordButton.topAnchor.constraint(equalTo: passwordStackView.bottomAnchor, constant: 5),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -30),

            accountButtonsStackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 30),
            accountButtonsStackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -30),
            accountButtonsStackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -30),

            createAccountButton.heightAnchor.constraint(equalToConstant: 40),
            createAccountButton.widthAnchor.constraint(equalToConstant: 120),

            connectAccountButton.heightAnchor.constraint(equalToConstant: 40),
            connectAccountButton.widthAnchor.constraint(equalToConstant: 120)
        ])
    }

}
