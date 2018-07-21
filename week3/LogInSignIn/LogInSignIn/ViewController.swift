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
    @IBOutlet weak var logInView: UIView!
    @IBOutlet weak var accountText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var checkText: UITextField!
    @IBOutlet weak var checkLabel: UILabel!
    
    
    enum dataError: Error {
        case emptyAccountError
        case emptyPasswordError
        case emptyCheckPasswordError
        case logInError
        case signUpError
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        checkText.isUserInteractionEnabled = false
        
        checkLabel.tintColor = UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1.0)
        checkText.backgroundColor = UIColor(red: 146/255.0, green: 146/255.0, blue: 146/255.0, alpha: 1.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func segmentChange(_ sender: Any) {
        switch segmentControl.selectedSegmentIndex {
        case 0:
            checkText.isUserInteractionEnabled = false
            
            // set check textfield backgroundcolor to Nickel grey
            checkLabel.tintColor = UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1.0)
            checkText.backgroundColor = UIColor(red: 146/255.0, green: 146/255.0, blue: 146/255.0, alpha: 1.0)
            
            accountText.text = ""
            passwordText.text = ""
            checkText.text = ""
            
        case 1:
            checkText.isUserInteractionEnabled = true
            
            checkLabel.tintColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
            checkText.backgroundColor = UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1.0)
            
            accountText.text = ""
            passwordText.text = ""
            checkText.text = ""
            
        default: break
        }
    }
    
    
    // Use guard let statement for all error cases for log in
    func checkLogIn(account: String?, password: String?) throws -> String {
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
    
    func logIn() {
        let account = accountText.text
        let password = passwordText.text
        let title = "Error"
        do {
            _ = try checkLogIn(account: account, password: password)
        } catch dataError.emptyAccountError {
            showAlertWith(title: title, message: "Account should not be empty")
        } catch dataError.emptyPasswordError {
            showAlertWith(title: title, message: "Password should not be empty")
        } catch dataError.logInError {
            showAlertWith(title: title, message: "Login failed")
        } catch {
        }
        if account == "luke@gmail.com" && password == "1234" {
            print("Log in, welcome!")
            
            // reset both log in textfield to empty after print out success message
            accountText.text = ""
            passwordText.text = ""
        }
    }
    
    func checkSignUp(account: String?, password: String?, check: String?) throws -> String{
        guard account != ""  else {
            throw dataError.emptyAccountError
        }
        guard password != "" else {
            throw dataError.emptyPasswordError
        }
        guard check != "" else {
            throw dataError.emptyCheckPasswordError
        }
        guard password == check else {
            throw dataError.signUpError
        }
        return "Sign Up"
    }
    
    func signUp() {
        let account2 = accountText.text
        let password2 = passwordText.text
        let check = checkText.text
        let title = "Error"
        do {
            _ = try checkSignUp(account: account2 , password: password2, check: check)
        } catch dataError.emptyAccountError {
            showAlertWith(title: title, message: "Account should not be empty")
        } catch dataError.emptyPasswordError {
            showAlertWith(title: title, message: "Password should not be empty")
        } catch dataError.emptyCheckPasswordError {
            showAlertWith(title: title, message: "Check password should not be empty")
        } catch dataError.signUpError {
            showAlertWith(title: title, message: "Signup failed")
        } catch {} //??
        
        if passwordText.text == checkText.text {
            print("Sign up successfully, welcome to join!!")
        }
        
        // reset sign up textfield to empty.
        accountText.text = ""
        passwordText.text = ""
        checkText.text = ""
        
    }

    
    // Alert display pop out and dismiss function
    func showAlertWith (title: String, message: String, style: UIAlertControllerStyle = .alert) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: dismissAlert)
        alertController.addAction(okAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    func dismissAlert(sender: UIAlertAction) -> Void {
    }
    
    
    // Error handling and pop out alert while button been pressed
    @IBAction func dataCheck(_ sender: Any) {
        if segmentControl.selectedSegmentIndex == 0 {
            logIn()
        }
        if segmentControl.selectedSegmentIndex == 1 {
            signUp()
        }
    }
    
    
}


