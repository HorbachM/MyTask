//
//  DownloadImage.swift
//  Task
//
//  Created by Horbach on 6/11/19.
//  Copyright © 2019 Horbach. All rights reserved.
//

import UIKit

class DownloadImage: UIViewController {
    
    @IBOutlet weak var labelText: UITextField!
    
    @IBAction func loadButton(_ sender: Any) {
         fetchImage()
         updateProgressView()
         self.labelProgress.progress = 0
    }
    @IBOutlet weak var loadButtonLabel: UIButton!
    
    @IBOutlet weak var labelProgress: UIProgressView!
    

    @IBOutlet weak var imageView: UIImageView!
    
    
    private func fetchImage() {
        let imageURL = URL(string: labelText.text!)
        var image: UIImage?
        if let url = imageURL {
            //All network operations has to run on different thread(not on main thread).
            
            DispatchQueue.global(qos: .userInitiated).async {
                let imageData = NSData(contentsOf: url)
                //All UI operations has to run on main thread.
                DispatchQueue.main.async {
                    if imageData != nil {
                        image = UIImage(data: imageData! as Data)
                        //self.imageView.image.
                        self.imageView.image = image
                        self.imageView.contentMode = .scaleAspectFill
                        self.imageView.sizeToFit()
                        self.labelProgress.progress = 1
                    } else {
                        image = nil
                    }
                }
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboard()
        colorButton()
        labelProgress.setProgress(0.0, animated: true)
        // Do any additional setup after loading the view.
        
        
    }
    func colorButton() {
        loadButtonLabel.layer.cornerRadius = 10
        loadButtonLabel.layer.borderWidth = 10
        loadButtonLabel.layer.borderColor = UIColor.green.cgColor
    }
    func updateProgressView() {
        if labelProgress.progress != 1 {
            labelProgress.progress +=  0.2
        }else if labelProgress.progress == 1 {
            UIView.animate(withDuration: 0.7, animations: {
                self.loadButtonLabel.alpha = 1
            })
        }
    }
}
extension UIViewController {
    func hideKeyboard()
    {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        
    }
    @objc func dismissKeyboard(){
        view.endEditing(true)
    }
}
