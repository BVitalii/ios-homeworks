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
        return newButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Profile"
        view.addSubview(profileHeaderView)
        profileHeaderView.backgroundColor = .lightGray
        view.addSubview(newButton)

        setConcstr()
        setConstreintNewButton()
    }
    
    
    
    func setConcstr() {
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        profileHeaderView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        profileHeaderView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        profileHeaderView.heightAnchor.constraint(equalToConstant: 220).isActive = true
    }
    
    func setConstreintNewButton(){
        newButton.translatesAutoresizingMaskIntoConstraints = false
        newButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        newButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0 ).isActive = true
        newButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
       }
    
   
}
