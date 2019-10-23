//
//  ViewController.swift
//  FirstDemo
//
//  Created by Rajat on 10/18/19.
//  Copyright © 2019 EaternEnterprise. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func numberOfVovels(in string: String) -> Int {
//        var numberOfVovels = 0
//        let vovels: [Character] = ["a", "e", "i", "o","u", "A", "E", "I", "O", "U"]
//        for character in string {
//            if vovels.contains(character) {
//                numberOfVovels += 1
//            }
//        }
//        return numberOfVovels
        let vowels: [Character] = ["a", "e", "i", "o","u", "A", "E", "I", "O", "U"]
        return string.reduce(0) {
            $0 + (vowels.contains($1) ? 1 : 0)
        }
    }
}

