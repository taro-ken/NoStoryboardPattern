//
//  SecondViewController.swift
//  NoStoryboardPattern
//
//  Created by 木元健太郎 on 2021/03/11.
//

import UIKit

final class SecondViewController: UIViewController {
    
    @IBOutlet private weak var nextButton: UIButton! {
        didSet {
            nextButton.addTarget(self, action: #selector(tapNextButton(_:)), for: .touchUpInside)
        }
    }
    
    @objc private func tapNextButton(_ sender: UIResponder) {
        Router.shared.showThird(from: self)
    }
}
