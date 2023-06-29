//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Виталий Бородулин on 17.04.2023.
//

import UIKit

class ProfileViewController: UIViewController {
    
    
    let profileHeaderView = ProfileHeaderView()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        title = "Profile"
        view.addSubview(profileHeaderView)
        profileHeaderView.backgroundColor = .lightGray
        setConcstr()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
    }
    func setConcstr() {
        NSLayoutConstraint.activate([
        profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
        profileHeaderView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
        profileHeaderView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
        profileHeaderView.heightAnchor.constraint(equalToConstant: 220)
        ])
    }
   
}
