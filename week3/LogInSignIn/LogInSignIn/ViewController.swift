//
//  ViewController.swift
//  LogInSignIn
//
//  Created by TaiHsinLee on 2018/7/20.
//  Copyright © 2018年 TaiHsinLee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var logInAccount: UITextField!
    @IBOutlet weak var logInPassword: UITextField!
    @IBOutlet weak var logInView: UIView!
    @IBOutlet weak var signUpView: UIView!
    @IBOutlet weak var signUpAccount: UITextField!
    @IBOutlet weak var signUpPassword: UITextField!
    @IBOutlet weak var signUpCheck: UITextField!
    
    
    enum dataError: Error {
        case emptyAccountError
        case emptyPasswordError
        case logInError
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        logInView.isHidden = false
        signUpView.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func segmentChange(_ sender: UISegmentedControl) {
        switch segmentControl.selectedSegmentIndex {
        case 0:
            logInView.isHidden = false
            signUpView.isHidden = true
        case 1:
            logInView.isHidden = true
            signUpView.isHidden = false
        default: break
        }
    }
    
    
    func checkDataWith(account: String?, password: String?) throws -> String {
        guard account != ""  else {
            throw dataError.emptyAccountError
        }
        guard password != "" else {
            throw dataError.emptyPasswordError
        }
        guard account == "luke@gmail.com" && password == "1234" else {
            throw dataError.logInError
        }
        return "success!"
    }
    
    @IBAction func dataCheck(_ sender: Any) {
        let account = logInAccount.text
        let password = logInPassword.text
        let title = "Error"
        do {
            _ = try checkDataWith(account: account, password: password)
        } catch dataError.emptyAccountError {
            showAlertWith(title: title, message: "Account should not be empty")
        } catch dataError.emptyPasswordError {
            showAlertWith(title: title, message: "Password should not be empty")
        } catch dataError.logInError {
            showAlertWith(title: title, message: "Login failed")
        } catch {
        }
        
        print("Log in success, welcome!")
    }
    
    
    func showAlertWith (title: String, message: String, style: UIAlertControllerStyle = .alert) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: dismissAlert)
        alertController.addAction(okAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    func dismissAlert(sender: UIAlertAction) -> Void {
    }

}


