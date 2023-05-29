//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Виталий Бородулин on 17.04.2023.
//

import UIKit

class ProfileViewController: UIViewController {

    
    let profileHeaderView = ProfileHeaderView()

    var newButton: UIButton = {
        var newButton = UIButton()
        newButton.backgroundColor = .systemBlue
        newButton.setTitle("newButton", for: .normal)
        newButton.translatesAutoresizingMaskIntoConstraints = false
        return newButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Profile"
        view.addSubview(profileHeaderView)
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        profileHeaderView.backgroundColor = .lightGray
        view.addSubview(newButton)
        setConcstr()
        
    }
    
    
    
    func setConcstr() {
        NSLayoutConstraint.activate([
        profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
        profileHeaderView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
        profileHeaderView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
        profileHeaderView.heightAnchor.constraint(equalToConstant: 220),

        
        newButton.heightAnchor.constraint(equalToConstant: 44),
        newButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0 ),
        newButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
        newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
       }
    
   
}
