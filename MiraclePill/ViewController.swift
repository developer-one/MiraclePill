//
//  ViewController.swift
//  MiraclePill
//
//  Created by David Martin on 20/10/2016.
//  Copyright © 2016 codeworx. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var countyPicker: UIPickerView!
    @IBOutlet weak var countyPickerBtn: UIButton!
    
    let countys = ["West Midlands","East Midlands","Shropshire","East Anglia","Northumberland"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countyPicker.dataSource = self
        countyPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func countyBtnPressed(_ sender: AnyObject) {
        
        countyPicker.isHidden = false
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
 
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countys.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countys[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        countyPickerBtn.setTitle(countys[row], for: UIControlState.normal)
        countyPicker.isHidden = true
    }
}

