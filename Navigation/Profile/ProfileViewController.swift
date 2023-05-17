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
        view.backgroundColor = .white
        title = "Profile"
        view.addSubview(profileHeaderView)
        profileHeaderView.backgroundColor = .lightGray
    }
    func setConcstr() {
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        profileHeaderView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        profileHeaderView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        profileHeaderView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    override func viewWillLayoutSubviews(){
        setConcstr()
    }
    
   
}
