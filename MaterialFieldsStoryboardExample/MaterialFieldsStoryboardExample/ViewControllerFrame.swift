//
//  ViewControllerFrame.swift
//  MaterialFieldsStoryboardExample
//
//  Created by Alex Barbulescu on 2019-05-03.
//  Copyright © 2019 alex. All rights reserved.
//

import UIKit
import MaterialFields

class ViewControllerFrame: UIViewController {

    @IBAction func frame(_ sender: Any) {
        field.becomeFirstResponder()
    }
    
    @IBAction func close(_ sender: Any) {
        field.resignFirstResponder()
    }
    @IBOutlet weak var field: PickerField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        field.placeholder = "PickerField"
        field.data = ["option 1","option 2","option 3","option 4","option 5"]
        field.delegate = self
        field.isManualEntryCapable = true
        field.isClearable = true
    }
    
}

extension ViewControllerFrame: EntryFieldDelegate {
    func entryFieldShouldReturn(_ view: EntryField) -> Bool {
        print("Should return")
        _ = view.resignFirstResponder()
        return true
    }
    
    func entryFieldDidEndEditing(_ view: EntryField) {
        if view.text == "Hello Kitty?" {
            view.setError(withText: "please enter a decimal!")
        }
    }
}

extension ViewControllerFrame: AreaFieldDelegate {
    func areaField(_ view: AreaField, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
//        if text == "\n" {
//            _ = view.resignFirstResponder()
//        }
        return true
    }
    
    func areaFieldDidEndEditing(_ view: AreaField) {
        if view.text == "Wrong text?" {
            view.setError(withText: "yup, try again")
        }
    }
}

extension ViewControllerFrame: PickerFieldDelegate {
    
    func pickerFieldShouldBeginEditing(_ view: PickerField) -> Bool {
        print("should begin")
        return true
    }
    func pickerFieldDidEndEditing(_ view: PickerField) {
        print("end")
        if view.text == "Wrong text?" {
            view.setError(withText: "yup, try again")
        }
//        view.setError(withText: "WRONG")
    }
    
    func pickerField(_ view: PickerField, didSelectRow row: Int) {
        print("select")
//        view.setError(withText: "WRONG")
    }
}
