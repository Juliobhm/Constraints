//
//  Pagina02.swift
//  Constraints
//
//  Created by Julio Barado Hualde on 11/10/18.
//  Copyright © 2018 Julio Barado Hualde. All rights reserved.
//

import UIKit

class Pagina02: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {

      @IBOutlet weak var pickerView: UIPickerView!
    
    @IBOutlet weak var label: UILabel!

    @IBOutlet weak var label02: UILabel!
    
    @IBOutlet weak var pickerDate: UIDatePicker!
    let peso01 = ["1","2","3","4", "5", "6", "7", "8" ,"9", "10", "11", "12", "13"]
    let peso02 = ["0", "1","2","3","4", "5", "6", "7", "8" ,"9"]
    let peso03 = ["0","1","2","3","4", "5", "6", "7", "8" ,"9"]
   
    
    var primero: String!
    var segundo: String!
    var tercero: String!
    var peso: String!
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
      
        if component == 0
        {return peso01.count}
        else if component == 1
        {return peso02.count}
        return peso03.count
    }
    

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0
        {return peso01[row]}
        else if component == 1
        {return peso02[row]}
        return peso03[row]
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

        
        let primero = peso01[pickerView.selectedRow(inComponent: 0)]
        let segundo = peso02[pickerView.selectedRow(inComponent: 1)]
        let tercero = peso03[pickerView.selectedRow(inComponent: 2)]
        
       label.text = "\(primero)\(segundo).\(tercero) kg"
        
        
        
     }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
label.text = primero
    }
    
 
    

}
