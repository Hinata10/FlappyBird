//
//  ViewController.swift
//  FlappyBird
//
//  Created by 日向亮博 on 2019/07/10.
//  Copyright © 2019 Hinata10. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //SKViewに型を変換する
        let skView = self.view as! SKView
        //FPSを表示する
        skView.showsFPS = true
        //ノードの数を表示する
        skView.showsNodeCount = true
        //ビューと同じサイズでシーンを作成する
        let scene = GameScene(size:skView.frame.size)
        //ビューにシーンを表示する
        skView.presentScene(scene)
        //physicsBodyの範囲を目で見えるようにするコード↓
//        skView.showsPhysics = true
    }
    //ステータスバーを消す
    override var prefersStatusBarHidden: Bool {
        get{
            return true
        }
    }
}
