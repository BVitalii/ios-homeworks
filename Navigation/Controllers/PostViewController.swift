//
//  PostViewController.swift
//  Navigation
//
//  Created by Виталий Бородулин on 17.04.2023.
//

import UIKit

class PostViewController: UIViewController {

    
    var postButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupBarButtonItem()
        
    }
    
    deinit {
        print("delet postviewcontroller")
    }
    @objc func onButtonTap() {
        let vc = InfoViewController()
       
        present(vc, animated: true)
    }
    
    func setupBarButtonItem() {
            let baritem = UIBarButtonItem(image: UIImage(systemName: "folder"), style: .plain, target: self, action: #selector(onButtonTap))
            self.navigationItem.rightBarButtonItem = baritem
        
        }
}
