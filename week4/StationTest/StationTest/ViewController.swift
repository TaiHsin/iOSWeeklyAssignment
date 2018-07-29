//
//  ViewController.swift
//  StationTest
//
//  Created by TaiHsinLee on 2018/7/29.
//  Copyright © 2018年 TaiHsinLee. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var stationIDLabel: UILabel!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let baseUrl = URL(string: "https://stations-98a59.firebaseio.com/.json")!
        let request = URLRequest(url: baseUrl)
        let session = URLSession(configuration: URLSessionConfiguration.default, delegate: nil, delegateQueue: nil)
        let task = session.dataTask(with: request){(data,response,error) in
            DispatchQueue.main.async {
                if let geoData = try? Data(contentsOf: baseUrl){
                    if let data  = try? JSONSerialization.jsonObject(with: geoData, options: []) as! [String: Any] {
        
                        guard let addressValue = data["StationAddress"] as? String,
                        let idValue = data["StationID"] as? String,
                            let nameValue = data["StationName"] as? [String: Any] else { return }
                        
                        guard let enNameValue = nameValue["En"] as? String else {return}
                        
                        print("\(addressValue), \(idValue), \(enNameValue)")
                        
                        self.stationIDLabel.text = idValue
                        self.stationNameLabel.text = enNameValue
                        self.addressLabel.text = addressValue
                    }
                }
            }
        }
        task.resume()
    }
}

