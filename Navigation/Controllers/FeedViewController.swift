//
//  FeedViewController.swift
//  Navigation
//
//  Created by Виталий Бородулин on 17.04.2023.
//

import UIKit

class FeedViewController: UIViewController {

    var feedButton = UIButton()
    var post = Post (titel: "Письмо")
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.backgroundColor = .systemMint
        
        configureButton()
        setupBarButtonItem()
    }
    
    func configureButton() {
        view.addSubview(feedButton)
        feedButton.frame = CGRect.init(x: 50, y: 400, width: 80, height: 80)
        feedButton.setTitle("кнопка", for: .normal)
        feedButton.backgroundColor = .systemYellow
        feedButton.addTarget(self, action: #selector(onButtonTap), for: .touchDown)
    }
    @objc func onButtonTap() {
        let vc = PostViewController()
        vc.title = post.titel
        navigationController?.pushViewController(vc, animated: true)
    }
    func setupBarButtonItem() {
            let baritem = UIBarButtonItem(image: UIImage(systemName: "folder"), style: .plain, target: self, action: #selector(onButtonTap))
            self.navigationItem.rightBarButtonItem = baritem
        }
}
