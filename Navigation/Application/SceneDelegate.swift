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
        let itemSecond = UITabBarItem(title: "Profile", image: UIImage(systemName: "person"), selectedImage: nil)
        navFirst.tabBarItem = itemFirst
        navSecond.tabBarItem = itemSecond
        
        
        tapBar.tabBar.backgroundColor = .white
        tapBar.viewControllers = [navFirst, navSecond]
        
        window?.rootViewController = tapBar
        window?.makeKeyAndVisible()
    }
    
}

