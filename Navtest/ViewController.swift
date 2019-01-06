//
//  ViewController.swift
//  Navtest
//
//  Created by Luiz Fernando França on 06/01/19.
//  Copyright © 2019 Luiz Fernando França. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let navBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 50))
        navBar.backgroundColor = UIColor(red:0.18, green:0.20, blue:0.47, alpha:1.0)
        navBar.barTintColor = UIColor(red:0.18, green:0.20, blue:0.47, alpha:1.0)
        navBar.isTranslucent = false
        navBar.shadowImage = UIImage()
        navBar.setBackgroundImage(UIImage(), for: .default)

        view.addSubview(navBar)

        view.backgroundColor = UIColor(red:0.26, green:0.30, blue:0.53, alpha:1.0)
        
        let secondView = PentagonView()
        
        
        self.view.addSubview(secondView)
        
        secondView.topAnchor.constraint(equalTo: navBar.bottomAnchor).isActive = true
        secondView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        secondView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        secondView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        secondView.translatesAutoresizingMaskIntoConstraints = false
        
        
        
    }

    

}

