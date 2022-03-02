//
//  HomeViewController.swift
//  MoviePreviewApp
//
//  Created by Mac on 2022/03/01.
//

import UIKit

class HomeViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.backgroundColor = self.view.backgroundColor
        
        let firstNavigationController = UINavigationController()
        let firstTabBarController = MainViewController()
        firstNavigationController.addChild(firstTabBarController)
        
        firstNavigationController.tabBarItem.image = UIImage(systemName: "play")
        firstNavigationController.tabBarItem.selectedImage = UIImage(systemName: "play.fill")
        firstNavigationController.tabBarItem.title = "Main"
        
        let secondNavigationController = UINavigationController()
        let scondTabBarController = MainViewController()
        secondNavigationController.addChild(scondTabBarController)
        
        secondNavigationController.tabBarItem.image = UIImage(systemName: "magnifyingglass.circle")
        secondNavigationController.tabBarItem.selectedImage = UIImage(systemName: "magnifyingglass.circle.fill")
        secondNavigationController.tabBarItem.title = "Search"
        
        let thirdNavigationController = UINavigationController()
        let thirdTabBarController = MainViewController()
        thirdNavigationController.addChild(thirdTabBarController)
        
        thirdNavigationController.tabBarItem.image = UIImage(systemName: "person.circle")
        thirdNavigationController.tabBarItem.selectedImage = UIImage(systemName: "person.circle.fill")
        thirdNavigationController.tabBarItem.title = "Info"
        
        let VC = [firstNavigationController, secondNavigationController, thirdNavigationController]
        self.setViewControllers(VC, animated: true)
        
        tabBar.unselectedItemTintColor = .label
        tabBar.tintColor = .label
    }
}

extension HomeViewController {
    func searchAPI(_ term: String) -> [Movie] {
        
        return []
    }
}
