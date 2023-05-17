//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Виталий Бородулин on 05.05.2023.
//

import UIKit

class ProfileHeaderView: UIView {
    
    var avatar: UIImageView = {
        var avatarImage = UIImageView()
        avatarImage.layer.cornerRadius = 60
        avatarImage.layer.masksToBounds = true
        avatarImage.layer.borderWidth = 3
        avatarImage.layer.borderColor = CGColor(red: 1 , green: 1, blue: 1, alpha: 1)
        avatarImage.image = UIImage(named: "hous")
        return avatarImage
    }()
    
    var labelName: UILabel = {
        var labelName = UILabel()
        labelName.text = "Милый Дом"
        labelName.textColor = .black
        labelName.font = UIFont(name: "HelveticaNeue-bold", size: 18)
        return labelName
    }()
    
    var labelStatus: UILabel = {
        var labelStatus = UILabel()
        labelStatus.text = "Скучаю по хозяевам"
        labelStatus.font = UIFont(name:"HelveticaNeue", size: 14)
        labelStatus.textColor = .gray
        return labelStatus
    }()
    
    var statusButton: UIButton = {
        var statusButton = UIButton()
        statusButton.backgroundColor = .systemBlue
        statusButton.setTitle("Установить статус", for: .normal)
        statusButton.setTitleColor(.white, for: .normal)
        statusButton.layer.shadowOffset.width = 4
        statusButton.layer.shadowOffset.height = 4
        statusButton.layer.cornerRadius = 4
        statusButton.layer.shadowColor = UIColor.black.cgColor
        statusButton.layer.masksToBounds = false
        statusButton.layer.shouldRasterize = true
        statusButton.layer.shadowOpacity = 0.5
        statusButton.addTarget(self, action: #selector(statusButtonPressed), for: .touchUpInside)
        return statusButton
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        addSubview(avatar)
        addSubview(labelStatus)
        addSubview(labelName)
        addSubview(statusButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setConstraintAvatar()
        setConsraintLabelName()
        setConsraintLabelStatus()
        setConstraintStatusButton()
    }
    
    func setConstraintAvatar(){
        avatar.translatesAutoresizingMaskIntoConstraints = false
        avatar.topAnchor.constraint(equalTo: topAnchor, constant: 16) .isActive = true
        avatar.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        avatar.widthAnchor.constraint(equalToConstant: 120).isActive = true
        avatar.heightAnchor.constraint(equalToConstant: 120).isActive = true
    }
    
    func setConsraintLabelName(){
        labelName.translatesAutoresizingMaskIntoConstraints = false
        labelName.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        labelName.topAnchor.constraint(equalTo: topAnchor, constant: 27) .isActive = true
        labelName.heightAnchor.constraint(equalToConstant: 44).isActive = true
    }
    
    func setConsraintLabelStatus(){
        labelStatus.translatesAutoresizingMaskIntoConstraints = false
        labelStatus.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        labelStatus.heightAnchor.constraint(equalToConstant: 30).isActive = true
        labelStatus.bottomAnchor.constraint(equalTo: statusButton.topAnchor, constant: -34).isActive = true
        
    }
    
    func setConstraintStatusButton(){
        statusButton.translatesAutoresizingMaskIntoConstraints = false
        statusButton.topAnchor.constraint(equalTo: avatar.bottomAnchor, constant: 16).isActive = true
        statusButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        statusButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        statusButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    @objc func statusButtonPressed(){
        print(labelStatus.text as Any? ?? "Статус не установлен")
    }
    
}
