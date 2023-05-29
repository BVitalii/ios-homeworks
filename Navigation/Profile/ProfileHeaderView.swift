//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Виталий Бородулин on 05.05.2023.
//

import UIKit

class ProfileHeaderView: UIView {
    
    var avatarImageView: UIImageView = {
        var avatarImageView = UIImageView()
        avatarImageView.layer.cornerRadius = 60
        avatarImageView.layer.masksToBounds = true
        avatarImageView.layer.borderWidth = 3
        avatarImageView.layer.borderColor = CGColor(red: 1 , green: 1, blue: 1, alpha: 1)
        avatarImageView.image = UIImage(named: "hous")
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        return avatarImageView
    }()
    
    var fullNameLabel: UILabel = {
        var fullNameLabel = UILabel()
        fullNameLabel.text = "Милый Дом"
        fullNameLabel.textColor = .black
        fullNameLabel.font = UIFont(name: "HelveticaNeue-bold", size: 18)
        fullNameLabel.translatesAutoresizingMaskIntoConstraints = false
        return fullNameLabel
    }()
    
    var statusLabel: UILabel = {
        var statusLabel = UILabel()
        statusLabel.text = "Скучаю по хозяевам"
        statusLabel.font = UIFont(name:"HelveticaNeue", size: 14)
        statusLabel.textColor = .gray
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        return statusLabel
    }()
    
    var setStatusButton: UIButton = {
        var setStatusButton = UIButton()
        setStatusButton.backgroundColor = .systemBlue
        setStatusButton.setTitle("Установить статус", for: .normal)
        setStatusButton.setTitleColor(.white, for: .normal)
        setStatusButton.layer.shadowOffset.width = 4
        setStatusButton.layer.shadowOffset.height = 4
        setStatusButton.layer.cornerRadius = 4
        setStatusButton.layer.shadowColor = UIColor.black.cgColor
        setStatusButton.layer.masksToBounds = false
        setStatusButton.layer.shouldRasterize = true
        setStatusButton.layer.shadowOpacity = 0.5
        setStatusButton.addTarget(self, action: #selector(statusButtonPressed), for: .touchUpInside)
        setStatusButton.translatesAutoresizingMaskIntoConstraints = false
        return setStatusButton
    }()
    
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        addSubview(avatarImageView)
        addSubview(statusLabel)
        addSubview(fullNameLabel)
        addSubview(setStatusButton)
        setConstreint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    func setConstreint(){
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            avatarImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            avatarImageView.widthAnchor.constraint(equalToConstant: 120),
            avatarImageView.heightAnchor.constraint(equalToConstant: 120),
            
            fullNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16),
            fullNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 27),
            fullNameLabel.heightAnchor.constraint(equalToConstant: 44),
            
            statusLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 16),
            statusLabel.heightAnchor.constraint(equalToConstant: 30),
            statusLabel.bottomAnchor.constraint(equalTo: setStatusButton.topAnchor, constant: -34),
            
            setStatusButton.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 16),
            setStatusButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            setStatusButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            setStatusButton.heightAnchor.constraint(equalToConstant: 50)])
    }
    @objc func statusButtonPressed(){
        print(statusLabel.text!)
        
        
    }
    
}
