//
//  ViewController.swift
//  Programmers
//
//  Created by won soohyeon on 2021/08/29.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sol1 = BestAlbum.init().solution(["classic", "pop", "classic", "classic", "pop"],
                                  [500, 600, 150, 800, 2500])
        print("bestAlbum : ", sol1)
        
    }


}

