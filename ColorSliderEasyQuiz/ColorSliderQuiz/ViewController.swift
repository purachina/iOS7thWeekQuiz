//
//  ViewController.swift
//  ColorSliderQuiz
//
//  Created by Jaehoon Lee on 2021/07/01.
//

import UIKit

class ViewController: UIViewController {
    var rValue:CGFloat = 0, gValue:CGFloat = 0, bValue:CGFloat = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var viewColor: UIView!
    @IBAction func sliderMoved(_ sender: UISlider){
        let slider_title = sender.restorationIdentifier
        if slider_title == "red_slider"{
            rValue = CGFloat(sender.value / 255.0)
        } else if slider_title == "green_slider"{
            gValue = CGFloat(sender.value / 255.0)
        } else if slider_title == "blue_slider"{
            bValue = CGFloat(sender.value / 255.0)
        } else {
            print("error!")
        }
        viewColor.backgroundColor = .init(red: rValue, green: gValue, blue: bValue, alpha: 1)
    }
}

