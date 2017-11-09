//
//  TestingViewController.swift
//  Unit2Review
//
//  Created by C4Q  on 11/9/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class TestingViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return alphabet.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(alphabet[row])"
    }

    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBOutlet weak var testButton: UIButton!
    
    @IBOutlet var allButtons: [UIButton]!
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("selected row: \(row) with value: \(alphabet[row])")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        for button in allButtons {
            button.backgroundColor = .green
        }
        self.pickerView.selectRow(7, inComponent: 0, animated: true)
        // Do any additional setup after loading the view.
    }
    @IBAction func testButtonPressed(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            print("0")
        case 1:
            print("1")
        default:
            print("unrecognized tag")
        }
    }
    
}
