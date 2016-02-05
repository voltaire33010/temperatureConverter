//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by miguel hernandez on 1/27/16.
//  Copyright © 2016 com.securecodetips.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var switchTemp: UISegmentedControl!
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var temperatureTextField: UITextField!
    
    @IBOutlet var temImage: UIImageView!
    
    @IBAction func converterButtom(sender: AnyObject) {
        
      print("El boton esta trabajando")
        if (switchTemp.selectedSegmentIndex==0){
        print("you got celsium")
            let tmpe=Int(temperatureTextField.text!)!*9/5+32
            
            resultLabel.text="\(tmpe) farenheit°"
            if(tmpe < 12){
           
            temImage.image=UIImage(named:"tempe.jpg")

            }
            
            else{
             temImage.image=UIImage(named:"temhot.jpg")
            }
        }
        else{
        print("yu got farenheit")
            let tempf=(Int(temperatureTextField.text!)!-32)*5/9
              resultLabel.text="\(tempf) celsium°"
            temImage.image=UIImage(named:"tempe.jpg")
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

