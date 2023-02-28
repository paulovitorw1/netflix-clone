//
//  ViewController.swift
//  Netflix Clone
//
//  Created by Paulo Vitor on 27/02/23.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupTabBar()

    }

    private func setupTabBar() {
        let homeController = UINavigationController(rootViewController: HomeViewController())
        let upcomingController = UINavigationController(rootViewController: UpcomingViewController())
        let searchController = UINavigationController(rootViewController: SeachViewController())
        let downloadController = UINavigationController(rootViewController: DownloadsViewController())

        homeController.tabBarItem.image = UIImage(systemName: "house")
        upcomingController.tabBarItem.image = UIImage(systemName: "play.circle")
        searchController.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        downloadController.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")

        homeController.title = "Home"
        upcomingController.title = "Upcoming"
        searchController.title = "Top Search"
        downloadController.title = "Downloads"
        
        tabBar.tintColor = .label
        
        setViewControllers([homeController, upcomingController, searchController, downloadController], animated: true)
    }

}

