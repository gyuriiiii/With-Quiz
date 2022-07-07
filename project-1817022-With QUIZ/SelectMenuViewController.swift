//
//  SelectMenuViewController.swift
//  test-1817022
//
//  Created by mac037 on 2022/06/02.
//

import UIKit

class SelectMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backBarButtonItem = UIBarButtonItem(title: "BACK", style: .plain, target: self, action: nil) // BACK으로 변경
        self.navigationItem.backBarButtonItem = backBarButtonItem
    }
    
    @IBAction func EnglishWordMenu(_ sender: UIButton) { 
        // performSegue(withIdentifier: "PlayEnglishWord", sender: self)
    }
    
    @IBAction func CommonSenseMenu(_ sender: UIButton) {
        // performSegue(withIdentifier: "PlayCommonSense", sender: self)
    }
    
}
 

extension SelectMenuViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PlayEnglishWord"{ // 영단어 외우기 클릭 시 출력
            print("PlayEnglishWord")
        }
        
        if segue.identifier == "PlayCommonSense"{ // 상식 퀴즈 클릭 시 출력
            print("PlayCommonSense")
        }
    }
}
 
