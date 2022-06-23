//
//  SecondViewController.swift
//  HomeWork_Lesson5
//
//  Created by Артем Макаренко on 23.06.2022.
//

import Foundation
import UIKit

public final class SecondViewController:  UIViewController {

private let button1 = UIButton()

    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        
        
        button1.frame = CGRect(x: 0 , y: 0, width: 200, height: 200)
        button1.backgroundColor = .systemCyan.withAlphaComponent(20)
        button1.layer.cornerRadius = 100
        button1.clipsToBounds = true
        
        view.addSubview(button1)
        button1.addTarget(self, action: #selector(someContetn(sender:)), for: .touchUpInside)

        print("viewDidLoad")
            
        }
                
    @objc func someContetn(sender: UIButton) {
        let randomWidth = CGFloat.random(in: 100..<314)
        let randomHeight = CGFloat.random(in: 100..<718)
        sender.center = CGPoint(x: randomWidth , y: randomHeight)
    }
        
}



