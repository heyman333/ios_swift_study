//
//  ViewController.swift
//  CarSelector
//
//  Created by HanYoungsoo on 2017. 1. 2..
//  Copyright © 2017년 HanYoungsoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var imgView: UIImageView!
    var carModel:[String] = []
    var carModelImage:[String] = []
    
    let carCompnayName = ["tesla", "Lambroghini","Porsche"]
    let tesla = ["Model S", "Model X"]
    let lamborghini = ["aventador","veneno","huracan"]
    let porsche = ["911", "boxter"]
    let teslaImageNames = ["tesla-model-s.jpg","tesla-model-x.jpg"]
    let lamborghiniImageNames = ["lamborghini-aventador.jpg","lamborghini-veneno.jpg","lamborghini-huracan.jpg"]
    let porscheImageNames = ["porsche-911.jpg","porsche-boxter.jpg"]
    
    
    //UIPickerViewDataSource
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return carCompnayName.count
        }
        else{
            return carModel.count
        }
    }
    
    
    //UIPickerViewDelegate
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return carCompnayName[row]
        }else{
            return carModel[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 && row == 0 {
            carModel = tesla
            carModelImage = teslaImageNames
        }
        else if component == 0 && row == 1 {
            carModel = lamborghini
            carModelImage = lamborghiniImageNames
        }
        else if component == 0 && row == 2 {
            carModel = porsche
            carModelImage = porscheImageNames
        }
        
        pickerView.reloadAllComponents()
        print(row)
        imgView.image = UIImage(named: carModelImage[pickerView.selectedRow(inComponent: 1)])

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        carModel = tesla
        carModelImage = teslaImageNames
        imgView.layer.cornerRadius = 50.0
        imgView.layer.masksToBounds = true 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

