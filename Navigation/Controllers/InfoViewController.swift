//
//  InfoViewController.swift
//  Navigation
//
//  Created by Виталий Бородулин on 17.04.2023.
//

import UIKit

class InfoViewController: UIViewController {

    var alertButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemCyan
        
        configureButton()
        
    }
    
    func configureButton() {
        view.addSubview(alertButton)
        alertButton.frame = CGRect.init(x: 50, y: 400, width: 80, height: 80)
        alertButton.setTitle("кнопка", for: .normal)
        alertButton.backgroundColor = .systemMint
        alertButton.addTarget(self, action: #selector(buttonPressed), for: .touchDown)
    }
    @objc func buttonPressed() {
        let alertController = UIAlertController(title: "сообщение", message: "масасдж", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "ok", style: .default) {_ in
            print("ok action tapted")
        }
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel) {_ in
            print("cancel tapted")
        }
         
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true) {
            print("выберите что-то")
        }
        
        
        
    }

    
}

// На InfoViewController создайте кнопку. При нажатии на неё должен показаться UIAlertController с заданным title, message и двумя UIAlertAction. При нажатии на UIAlertAction в консоль должно выводиться сообщение.
