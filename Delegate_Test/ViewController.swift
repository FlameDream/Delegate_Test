//
//  ViewController.swift
//  Delegate_Test
//
//  Created by ftimage2 on 2019/1/10.
//  Copyright © 2019 Jack Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController,SecondVCDelegate{
   
    @IBOutlet weak var showNameL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func nextBtnAction(_ sender: Any) {
        let nextVC : SecondVC = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "nextVC") as! SecondVC
        nextVC.delegate = self
        self.present(nextVC, animated: true, completion: nil)
        
    }
    
    @objc func saveName(_ nameStr: String) {
        self.showNameL.text = "请输入姓名：\(nameStr)"
        print("---------------------\(nameStr)")
    }
    
    
}

