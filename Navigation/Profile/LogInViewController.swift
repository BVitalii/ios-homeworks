//
//  LogInViewController.swift
//  Navigation
//
//  Created by Виталий Бородулин on 14.06.2023.
//

import UIKit

class LogInViewController: UIViewController {
    
    var contentView: UIView = {
        var view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var scrollView: UIScrollView = {
        var scrollVew = UIScrollView()
        scrollVew.backgroundColor = .white
        scrollVew.showsVerticalScrollIndicator = true
        scrollVew.showsHorizontalScrollIndicator = false
        scrollVew.translatesAutoresizingMaskIntoConstraints = false
        return scrollVew
    }()
    
    var iconImage: UIImageView = {
        var iconImage = UIImageView()
        iconImage.image = UIImage (named: "logo")
        iconImage.translatesAutoresizingMaskIntoConstraints = false
        return iconImage
    }()
    
    var emailTextField: UITextField = {
        var textField = UITextField()
        textField.placeholder = "Email of phone"
        textField.textColor = .black
        textField.backgroundColor = .systemGray6
        textField.font = UIFont(name: "systemFont", size: 16)
        textField.autocapitalizationType = .none
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 0.5
        textField.layer.cornerRadius = 10
        textField.returnKeyType = UIReturnKeyType.done
        textField.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    var paswordTextField: UITextField = {
        var textField = UITextField()
        textField.placeholder = "Password"
        textField.textColor = .black
        textField.backgroundColor = .systemGray6
        textField.font = UIFont(name: "systemFont", size: 16)
        textField.autocapitalizationType = .none
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 0.5
        textField.layer.cornerRadius = 10
        textField.returnKeyType = UIReturnKeyType.done
        textField.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        textField.isSecureTextEntry = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    var insertView: UIView = {
        var view = UIView()
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.borderWidth = 0.5
        view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var loginButton: UIButton = {
        var button = UIButton()
        button.setBackgroundImage(UIImage(named: "blue_pixel"), for: .normal)
        button.setTitle("Log in", for: .normal)
        button.layer.cornerRadius = 10
        button.setTitleColor(.white, for: .normal)
        
        button.backgroundColor = UIColor(named: "ColorVK")
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(loginButtontapped), for: .touchUpInside)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.addSubview(contentView)
        contentView.addSubview(insertView)
        contentView.addSubview(paswordTextField)
        contentView.addSubview(emailTextField)
        contentView.addSubview(iconImage)
        contentView.addSubview(loginButton)
        view.addSubview(scrollView)
        setConstraint()
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(hidekeyboard)))
        
        NotificationCenter.default.addObserver(self, selector: #selector(willShowKeyboard), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(willHideKeyboard), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    
    @objc func hidekeyboard(){
        self.view.endEditing(true)
    }
    
    @objc func willShowKeyboard(_ notification: NSNotification) {
        
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardHeight = keyboardFrame.cgRectValue.height
            let buttonSpace = self.contentView.frame.height - (loginButton.frame.origin.y + loginButton.frame.height)
            self.contentView.frame.origin.y -= keyboardHeight - buttonSpace + 10
        }
        
    }
       

    @objc func willHideKeyboard(_ notification: NSNotification) {
        self.contentView.frame.origin.y = 0
        
    }

    @objc func loginButtontapped(){
        let profileViewController = ProfileViewController()
        self.navigationController?.pushViewController(profileViewController, animated: true)
    }

    func setConstraint(){
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
       
            iconImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 120),
            iconImage.centerXAnchor.constraint(equalTo: insertView.centerXAnchor),
            iconImage.widthAnchor.constraint(equalToConstant: 100),
            iconImage.heightAnchor.constraint(equalToConstant: 100),
  
            emailTextField.topAnchor.constraint(equalTo: insertView.topAnchor),
            emailTextField.trailingAnchor.constraint(equalTo: insertView.trailingAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            emailTextField.leadingAnchor.constraint(equalTo: insertView.leadingAnchor),
        
            paswordTextField.bottomAnchor.constraint(equalTo: insertView.bottomAnchor),
            paswordTextField.trailingAnchor.constraint(equalTo: insertView.trailingAnchor),
            paswordTextField.heightAnchor.constraint(equalToConstant: 50),
            paswordTextField.leadingAnchor.constraint(equalTo: insertView.leadingAnchor),
      
            insertView.topAnchor.constraint(equalTo: iconImage.bottomAnchor, constant: 50),
            insertView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -16),
            insertView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            insertView.heightAnchor.constraint(equalToConstant: 100),
        
            loginButton.topAnchor.constraint(equalTo: insertView.bottomAnchor, constant: 16),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            loginButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
        
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    deinit {
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self,name: UIResponder.keyboardWillHideNotification, object: nil)
    }
}


