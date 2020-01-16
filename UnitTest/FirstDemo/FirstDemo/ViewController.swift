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
        let vowels: [Character] = ["a", "e", "i", "o","u", "A", "E", "I", "O", "U"]
        return string.reduce(0) {
            $0 + (vowels.contains($1) ? 1 : 0)
        }
    }
    
    func makeHeadline(from string: String) -> String {
        let words = string.components(separatedBy: " ")
        let headline = words.map { (word) -> String in
            var mutableWord = word
            let first = mutableWord.removeFirst()
            return String(first).uppercased() + mutableWord
        }
        return headline.joined(separator: " ")
    }
}

