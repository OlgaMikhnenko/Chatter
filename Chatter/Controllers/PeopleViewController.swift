//
//  PeopleViewController.swift
//  Chatter
//
//  Created by Helga on 01.12.2020.
//

import UIKit

class PeopleViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSeachBar()
        view.backgroundColor = .orange
    }
    private func setupSeachBar(){
        navigationController?.navigationBar.barTintColor = .mainWhite()
        navigationController?.navigationBar.shadowImage = UIImage()
        let searchController = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.delegate = self
    }
}

// MARK: - UISearchBarDelegate

extension PeopleViewController : UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
    }
}


// MARK: - SwiftUI
import SwiftUI

struct PeopleVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let tabBarVC = MainTabBarController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<PeopleVCProvider.ContainerView>) -> MainTabBarController {
            return tabBarVC
        }
        
        func updateUIViewController(_ uiViewController: PeopleVCProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<PeopleVCProvider.ContainerView>) {
            
        }
    }
}
