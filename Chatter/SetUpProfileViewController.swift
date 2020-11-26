//
//  SetUpProfileViewController.swift
//  Chatter
//
//  Created by Helga on 26.11.2020.
//

import UIKit

class SetUpProfileViewController : UIViewController{
    
    let fillImageView = AddPhotoView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setUpConstraints()
    }
}

// MARK: - setUpConstraints
extension SetUpProfileViewController{
    private func setUpConstraints(){
        
        fillImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(fillImageView)
        
        NSLayoutConstraint.activate([
            fillImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            fillImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}

// MARK: - SwiftUI
import SwiftUI

struct SetUpProfileVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let SetUpProfileVC = SetUpProfileViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<SetUpProfileVCProvider.ContainerView>) -> SetUpProfileViewController {
            return SetUpProfileVC
        }
        
        func updateUIViewController(_ uiViewController: SetUpProfileVCProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<SetUpProfileVCProvider.ContainerView>) {
            
        }
    }
}
