//
//  BaseViewController.swift
//  Mensagens
//
//  Created by Leonardo Almeida on 21/09/19.
//  Copyright © 2019 Eric Brito. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    @IBOutlet weak var lbMessage: UILabel!
    var message = Message()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func changeColor(_ sender: UIButton){
        if let delegate = self as? ColorPickerDelegate {
        let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
        colorPicker.modalPresentationStyle = .overCurrentContext
        colorPicker.delegate = delegate
        present(colorPicker, animated: true, completion: nil)
        }
        print("Picker protocol não referenciado")
    }

}
