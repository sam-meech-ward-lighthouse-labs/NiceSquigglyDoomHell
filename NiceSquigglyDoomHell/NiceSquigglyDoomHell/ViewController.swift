//
//  ViewController.swift
//  NiceSquigglyDoomHell
//
//  Created by Sam Meech-Ward on 2018-08-24.
//  Copyright © 2018 meech-ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
//  var name = "Harrold Steve"
  
  var number: String!
  var donkey: Double?
  
  var name = ""

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    number = "\(view.subviews.count)"
  }
  
  var array = [UIViewController]()
  
  @IBAction func action(_ sender: Any) {
    
    if let donkey = donkey {
      print(donkey)
    }

    guard let 🤗 = donkey else {
      return
    }
    print(🤗)

    
    print(number)
    
    //    print(#file, #function, #line, #column)
    
    // ## TODO:
    
    
//    for _ in 0...10000000 {
//      array.append(UIViewController())
//    }
    
//    assert(name == "Nancy", "Name is not equal to nancy 💩")
    
    if name == "Nancy" {
      view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    }
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  
  func thing() {
    let urlSession = URLSession(configuration: URLSessionConfiguration.default)
    let task = urlSession.dataTask(with: URL(string: "https://www.google.com/")!) { (data, urlResponse, error) in
      
      if let error = error {
        // Handle the error
        print(error)
        return
      }
      
      guard let data = data else {
        print("ERror")
        return
      }
      
      var jsonOptional: [String: Any]?
      do {
        jsonOptional = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
      } catch let e {
        print(e)
      }
      
      guard let json = jsonOptional else {
        // Handle error
        return
      }
      
      // All of my good code lives at the bottom of the function
      print(json)
      
    }
    task.resume()
  }

}

