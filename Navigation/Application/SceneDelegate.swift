//
//  SceneDelegate.swift
//  Navigation1
//
//  Created by Виталий Бородулин on 17.04.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        
        let tapBar = UITabBarController()
        
        let feedViewController = FeedViewController()
        let profileViewController = ProfileViewController()
        let navFirst = UINavigationController(rootViewController: feedViewController)
        let navSecond = UINavigationController(rootViewController: profileViewController)
        
        
        
        let itemFirst = UITabBarItem(title: "Feed", image: UIImage(systemName: "house"), selectedImage: nil)
        let itemSecond = UITabBarItem(title: "Profile", image: UIImage(systemName: "folder"), selectedImage: nil)
        navFirst.tabBarItem = itemFirst
        navSecond.tabBarItem = itemSecond
        
        
        tapBar.tabBar.backgroundColor = .black
        tapBar.viewControllers = [navFirst, navSecond]
        
        window?.rootViewController = tapBar
        window?.makeKeyAndVisible()
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
