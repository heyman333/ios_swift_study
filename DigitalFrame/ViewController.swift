//
//  ViewController.swift
//  DigitalFrame
//
//  Created by HanYoungsoo on 2016. 12. 23..
//  Copyright © 2016년 HanYoungsoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imgView:UIImageView!
    @IBOutlet var textView:UIButton!
    @IBOutlet var speedSlider:UISlider!
    @IBOutlet var speedLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        let images = [UIImage(named:"1.jpg")!,
                      UIImage(named:"2.jpg")!,
                      UIImage(named:"3.jpg")!,
                      UIImage(named:"4.jpg")!,
                      UIImage(named:"5.jpg")!,
                      UIImage(named:"6.jpg")!,
                      UIImage(named:"7.jpg")!,
                      UIImage(named:"8.jpg")!,
                      UIImage(named:"9.jpg")!,
                      UIImage(named:"10.jpg")!,
                      UIImage(named:"11.jpg")!]
        imgView.animationImages = images
        imgView.animationDuration=11.0
    }
    
    
    @IBAction func toggleAction(_ sender : AnyObject){
        if imgView.isAnimating{
            imgView.stopAnimating()
            textView.setTitle("Start", for: UIControlState.normal )
        }
        else{
            imgView.startAnimating()
            textView.setTitle("Stop", for: UIControlState.normal )
        }
    }
    @IBAction func changeSpeedAction(_ sender : AnyObject){
        imgView .animationDuration = Double(speedSlider.value)
        imgView.startAnimating()
        textView.setTitle("Stop", for: UIControlState.normal )
        speedLabel.text = "\(roundedNum(speedSlider.value))"
        
    }
    
    func roundedNum(_ num:Float) -> Float{
        let numberOfPlaces = 2.0
        let multiplier = Float(pow(10.0, numberOfPlaces))
        let rounded = round(num * multiplier) / multiplier
        return rounded
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

