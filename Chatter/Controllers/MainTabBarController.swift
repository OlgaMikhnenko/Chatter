//
//  MainTabBarController.swift
//  Chatter
//
//  Created by Helga on 01.12.2020.
//

import UIKit

class MainTabBarController : UITabBarController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let listViewController = ListViewController()
        let peopleViewController = PeopleViewController()
        
        viewControllers = [
            listViewController,
            peopleViewController
        ]
    }
    
    private func generateNavigationController (rootViewController : UIViewController, title : String, image : UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        
        return navigationVC
    }
}
