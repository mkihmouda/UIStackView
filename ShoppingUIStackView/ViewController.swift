//
//  ViewController.swift
//  ShoppingUIStackView
//
//  Created by Mac on 10/16/16.
//  Copyright © 2016 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var firstImageView: UIImageView!
    @IBOutlet var secondImageView: UIImageView!
    @IBOutlet var thirdImageView: UIImageView!
    @IBOutlet var fourthImageView: UIImageView!
    @IBOutlet var fifthImageView: UIImageView!
    
    @IBOutlet var selectedImageView: UIImageView!

    @IBOutlet var productName: UILabel!
    @IBOutlet var productPrice: UILabel!
    
    
    let productNames : [String] = ["Animation A 2010","Animation A 2011","Animation A 2012","Animation A 2013","Animation A 2014"]
    let productPrices : [String] = ["100$","101$","102$","103$","104$"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.backgroundColor = UIColor.redColor()
        

        
        
        
        firstImageView.userInteractionEnabled = true
        secondImageView.userInteractionEnabled = true
        thirdImageView.userInteractionEnabled = true
        fourthImageView.userInteractionEnabled = true
        fifthImageView.userInteractionEnabled = true

        
        
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.handleTap(_:)))
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(ViewController.handleTap(_:)))
        let tap3 = UITapGestureRecognizer(target: self, action: #selector(ViewController.handleTap(_:)))
        let tap4 = UITapGestureRecognizer(target: self, action: #selector(ViewController.handleTap(_:)))
        let tap5 = UITapGestureRecognizer(target: self, action: #selector(ViewController.handleTap(_:)))
        
        

        firstImageView.addGestureRecognizer(tap)
        secondImageView.addGestureRecognizer(tap2)
        thirdImageView.addGestureRecognizer(tap3)
        fourthImageView.addGestureRecognizer(tap4)
        fifthImageView.addGestureRecognizer(tap5)
        
        
        selectedImageView.layer.masksToBounds = true
        selectedImageView.layer.borderColor = UIColor.blackColor().CGColor
        selectedImageView.layer.borderWidth = 1

        firstImageView.layer.masksToBounds = true
        firstImageView.layer.borderColor = UIColor.redColor().CGColor

        secondImageView.layer.masksToBounds = true
        secondImageView.layer.borderColor = UIColor.redColor().CGColor
        
        thirdImageView.layer.masksToBounds = true
        thirdImageView.layer.borderColor = UIColor.redColor().CGColor
        
        fourthImageView.layer.masksToBounds = true
        fourthImageView.layer.borderColor = UIColor.redColor().CGColor
        
        fifthImageView.layer.masksToBounds = true
        fifthImageView.layer.borderColor = UIColor.redColor().CGColor
        
        
        
        
        thirdImageView.layer.borderWidth = 1
        selectedImageView.image = thirdImageView.image
        productName.text = self.productNames[2]
        productPrice.text = self.productPrices[2]
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    func handleTap(sender: UITapGestureRecognizer) {
        
        let senderUIImageView  = sender.view
        
        if senderUIImageView!.tag == 0{
        
            firstImageView.layer.borderWidth = 1
            secondImageView.layer.borderWidth = 0
            thirdImageView.layer.borderWidth = 0
            fourthImageView.layer.borderWidth = 0
            fifthImageView.layer.borderWidth = 0
            
            selectedImageView.image = firstImageView.image
           
            
        }else if senderUIImageView!.tag == 1{
            
            firstImageView.layer.borderWidth = 0
            secondImageView.layer.borderWidth = 1
            thirdImageView.layer.borderWidth = 0
            fourthImageView.layer.borderWidth = 0
            fifthImageView.layer.borderWidth = 0
            
            
            selectedImageView.image = secondImageView.image

            
         }else if senderUIImageView!.tag == 2{
            
            firstImageView.layer.borderWidth = 0
            secondImageView.layer.borderWidth = 0
            thirdImageView.layer.borderWidth = 1
            fourthImageView.layer.borderWidth = 0
            fifthImageView.layer.borderWidth = 0
            
            
            selectedImageView.image = thirdImageView.image


        }else if senderUIImageView!.tag == 3{
            
            firstImageView.layer.borderWidth = 0
            secondImageView.layer.borderWidth = 0
            thirdImageView.layer.borderWidth = 0
            fourthImageView.layer.borderWidth = 1
            fifthImageView.layer.borderWidth = 0
            
            selectedImageView.image = fourthImageView.image

            
        }else if senderUIImageView!.tag == 4{
            
            firstImageView.layer.borderWidth = 0
            secondImageView.layer.borderWidth = 0
            thirdImageView.layer.borderWidth = 0
            fourthImageView.layer.borderWidth = 0
            fifthImageView.layer.borderWidth = 1
            
            selectedImageView.image = fifthImageView.image

            
        }
        
        productName.text = self.productNames[senderUIImageView!.tag]
        productPrice.text = self.productPrices[senderUIImageView!.tag]
    }
    
    
    @IBAction func buyButtonAction(sender: AnyObject) {
        
        
        
        let alert = UIAlertController(title: "Buy", message: "Buy Animation Process ", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion:nil)
        
    }
 
    @IBAction func addToCartButtonAction(sender: AnyObject) {
        
        
        
        
        let alert = UIAlertController(title: "Add to Cart ", message: "Add Animation Process ", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion:nil)
    }
 }

