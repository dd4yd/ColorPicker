//
//  ColorPickerViewController.swift
//  ColorPicker
//
//  Created by David Dean on 4/18/18.
//  Copyright © 2018 David Dean. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var colors = [Colors(name: "red", uiColor: UIColor.red),
                  Colors(name: "orange", uiColor: UIColor.orange),
                  Colors(name: "yellow", uiColor: UIColor.yellow),
                  Colors(name: "green", uiColor: UIColor.green),
                  Colors(name: "blue", uiColor: UIColor.blue),
                  Colors(name: "purple", uiColor: UIColor.purple),
                  Colors(name: "brown", uiColor: UIColor.brown)]

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var pickerLabel: UILabel!
    
    var currentColor: String?
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        currentColor = colors[row].name
        pickerLabel.text = currentColor
        self.view.backgroundColor = colors[row].uiColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerLabel.text = colors[0].name
        self.view.backgroundColor = colors[0].uiColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
