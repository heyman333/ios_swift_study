//
//  ViewController.swift
//  FlightBooking
//
//  Created by HanYoungsoo on 2017. 1. 1..
//  Copyright © 2017년 HanYoungsoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var returnDateLabel: UILabel!
    @IBOutlet var returnDateButton: UIButton!
    @IBOutlet var departureButton: UIButton!
    
    var buttonTag:Int = 1
    @IBAction func showReturnDateAction(_ sender: Any) {
        
        if returnDateLabel.isHidden == true{
            returnDateLabel.isHidden=false
        }
        else{
            returnDateLabel.isHidden=true
        }
        if returnDateButton.isHidden == true{
            returnDateButton.isHidden=false
        }
        else{
            returnDateButton.isHidden=true
        }
        
    }
    @IBAction func showDatepickerAction(_ sender: Any) {
        datePicker.isHidden = false
        buttonTag = (sender as! UIButton).tag
    }
    @IBAction func selectedValueChangeAction(_ sender: Any) {
        let formtter = DateFormatter()
        formtter.dateFormat = "YY-MM-d hh-mma"
        
        let dateString = formtter.string(from: (sender as! UIDatePicker).date)
        if buttonTag == 1{
            departureButton.setTitle(dateString, for: UIControlState.normal)
            datePicker.isHidden = true}
        else if buttonTag == 2{
            returnDateButton.setTitle(dateString, for: UIControlState.normal)
            datePicker.isHidden = true}
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.isHidden = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        datePicker.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

