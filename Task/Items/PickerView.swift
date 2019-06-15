//
//  PickerView.swift
//  Task
//
//  Created by Horbach on 6/9/19.
//  Copyright © 2019 Horbach. All rights reserved.
//

import UIKit

class PickerView: UIViewController {
    
    
    private let dataSourceOne = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    private var dataSourceTwo = [Int] (0...99)

    @IBOutlet weak var PickerViewOne: UIPickerView!
    
    @IBOutlet weak var PickerViewTwo: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PickerViewOne.dataSource = self
        PickerViewOne.delegate = self
        PickerViewTwo.dataSource = self
        PickerViewTwo.delegate = self
      
    }


}

extension PickerView : UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == PickerViewOne {
        return dataSourceOne.count
        } else if pickerView == PickerViewTwo {
        return dataSourceTwo.count
        } else {
            return 1
        }
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == PickerViewOne {
            return dataSourceOne[row]
        }else if  pickerView == PickerViewTwo {
            let x = 0
            while x <= 99 {
           // dataSourceTwo.append((x))
            return String(row+1)
            }
        }

        return nil
        }
}
