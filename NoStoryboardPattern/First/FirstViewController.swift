//
//  FirstViewController.swift
//  NoStoryboardPattern
//
//  Created by 木元健太郎 on 2021/03/11.
//

import UIKit

final class FirstViewController: UIViewController {
    
    @IBOutlet private weak var nextButton: UIButton! {
        didSet {
            nextButton.addTarget(self, action: #selector(tapNextButton(_:)), for: .touchUpInside)
        }
    }
    
    @objc func tapNextButton(_ sender: UIResponder) {
        Router.shared.showSecond(from: self)
    }
}
