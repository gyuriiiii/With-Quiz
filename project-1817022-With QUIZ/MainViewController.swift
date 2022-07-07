//
//  MainViewController.swift
//  test-1817022
//
//  Created by mac037 on 2022/06/02.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.tintColor = .black
        self.navigationController?.navigationBar.topItem?.title = ""
        
        let backBarButtonItem = UIBarButtonItem(title: "HOME", style: .plain, target: self, action: nil) // HOME으로 변경
        self.navigationItem.backBarButtonItem = backBarButtonItem
    }
    
    @IBAction func playingApp(_ sender: UIButton) {
        performSegue(withIdentifier: "PlayingApp", sender: self)
    }
    
}
