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
//Создайте новый проект с названием Navigation, используя шаблон Single View App.
//Удалите из проекта Main.storyboard, который создался по умолчанию. Не забудьте изменить конфигурацию в Info.plist.
//В SceneDelegate.swift добавьте UITabBarController. Добавьте в него два UINavigationController. Первый будет показывать ленту пользователя, а второй — профиль.
//Измените Tab Bar Item у добавленных контроллеров, добавьте заголовок и картинку. Картинки можно добавить в Assets.xcassets или использовать SF Symbols.
//Создайте FeedViewController и ProfileViewController и добавьте их как root view controller у навигационных контроллеров.
//Добавьте PostViewController для показа выбранного поста. Поменяйте заголовок у контроллера и цвет главной view. Добавьте кнопку на FeedViewController и сделайте переход на экран поста. Контроллер должен показаться в стеке UINavigationController.
//Создайте структуру Post со свойством title: String. Создайте объект типа Post в FeedViewController и передайте его в PostViewController. В классе PostViewController выставьте title полученного поста в качестве заголовка контроллера.
//На PostViewController добавьте Bar Button Item в навигейшн бар. При нажатии на него должен открываться новый контроллер InfoViewController. Контроллер должен показаться модально.
