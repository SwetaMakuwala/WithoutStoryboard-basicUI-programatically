//
//  ViewController.swift
//  storyboardWithProgramming
//
//  Created by sweta makuwala on 10/10/22.
//

import UIKit

class ViewController: UIViewController {
    private let  loginContentView:UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private let unameTxtField:UITextField = {
        let textFld = UITextField()
        textFld.placeholder = "UserName"
        textFld.backgroundColor = .white
        textFld.borderStyle = .roundedRect
        textFld.translatesAutoresizingMaskIntoConstraints = false
        return textFld
    }()

    private let pwordTxtField:UITextField = {
        let passwordTextfld = UITextField()
        passwordTextfld.placeholder = "Password"
        passwordTextfld.borderStyle = .roundedRect
        passwordTextfld.backgroundColor = .white
        passwordTextfld.translatesAutoresizingMaskIntoConstraints = false
        return passwordTextfld
    }()

    private let button :UIButton = {
        let btn = UIButton(type: .system)
        btn.backgroundColor = .blue
        btn.setTitle("Login", for: .normal)
        btn.tintColor = .white
        btn.layer.cornerRadius = 5
        btn.clipsToBounds = true
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        loginContentView.addSubview(unameTxtField)
        loginContentView.addSubview(pwordTxtField)
        loginContentView.addSubview(button)
        view.addSubview(loginContentView)
        
        loginContentView.leftAnchor.constraint(equalTo:view.leftAnchor).isActive = true
        loginContentView.rightAnchor.constraint(equalTo:view.rightAnchor).isActive = true
        loginContentView.heightAnchor.constraint(equalToConstant: view.frame.height/3).isActive = true
        loginContentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
       // unameTxtField.topAnchor.constraint(equalTo: loginContentView.topAnchor).isActive = true
        
        unameTxtField.topAnchor.constraint(equalTo: loginContentView.topAnchor, constant: 40).isActive = true
        unameTxtField.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant:  20 ).isActive = true
        unameTxtField.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant:  -20).isActive = true
        unameTxtField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        
        pwordTxtField.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant:  20 ).isActive = true
        pwordTxtField.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant:  -20 ).isActive = true
        pwordTxtField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        pwordTxtField.topAnchor.constraint(equalTo: unameTxtField.bottomAnchor, constant: 20).isActive = true
        
        
        button.leftAnchor.constraint(equalTo: loginContentView.leftAnchor, constant:  40).isActive = true
        button.rightAnchor.constraint(equalTo: loginContentView.rightAnchor, constant: -40).isActive = true
        button.topAnchor.constraint(equalTo: pwordTxtField.bottomAnchor, constant: 20).isActive = true
        button.bottomAnchor.constraint(equalTo: loginContentView.bottomAnchor , constant: -40 ).isActive = true

    }


}

