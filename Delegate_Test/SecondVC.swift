//
//  SecondVC.swift
//  Delegate_Test
//
//  Created by ftimage2 on 2019/1/10.
//  Copyright © 2019 Jack Wang. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    weak var delegate : SecondVCDelegate?
    @IBOutlet weak var inputName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnSureAction(_ sender: Any) {
        if self.delegate != nil && (self.delegate?.responds(to: Selector.init(("saveName:"))))!{
            self.delegate?.saveName(inputName.text!)
        }
        
        self.dismiss(animated: true, completion: nil)
    }
    
}

protocol SecondVCDelegate : NSObjectProtocol {
    func saveName(_ nameStr : String)
}
