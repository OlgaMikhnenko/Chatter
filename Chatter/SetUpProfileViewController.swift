//
//  SetUpProfileViewController.swift
//  Chatter
//
//  Created by Helga on 26.11.2020.
//

import UIKit

class SetUpProfileViewController : UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
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
