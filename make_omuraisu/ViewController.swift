//
//  ViewController.swift
//  make_omuraisu
//
//  Created by 中野湧仁 on 2018/12/26.
//  Copyright © 2018年 中野湧仁. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var changeLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var secondLabel: UILabel!
    @IBOutlet var remaining: UILabel!
    @IBOutlet var second: UILabel!
    var count = 0
    let userTimer:Int = 1
    var time = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        関数の実行
        createTimer()
        
    }
    
    //タイマーの作成
    func createTimer(){
        time = userTimer * 60
        
        let timer = Timer.scheduledTimer(timeInterval: 1.0,
                                         target: self,
                                         selector: #selector(self.timerAction(sender:)),
                                         userInfo: nil,
                                         repeats: true)
        timer.fire()
        
    }
    
    //タイマーの処理
    @objc func timerAction(sender:Timer){
        if time >= 60 {
            print("hoge")
            print(time)
                    }
        secondLabel.text = String(time)
        time -= 1
        if time == -1{
            sender.invalidate() //止める
            imageView.image = UIImage(named: "neru429IMGL7353_TP_V4")
            changeLabel.text = "助けて..."
            changeLabel.textColor = UIColor.red
            changeLabel.font = UIFont.italicSystemFont(ofSize: 70)
            view.backgroundColor = UIColor.black
            remaining.text = ""
            second.text = ""
        }

    }
    

    
    

    
    @IBAction func changeImage(_ sender: Any) {
//        ラベルの行数を設定するプロパティがデフォで0らしいから1にすれば改行できる。
        changeLabel.numberOfLines = 0
        count = count + 1
//        タップの回数に応じて画像を変える
        if count >= 200{
            imageView.image = UIImage(named: "41a44ce3051f85b272add6b50bc967c0_s")
            changeLabel.text = "もっとタップして!"
        
        if count >= 400{
            imageView.image = UIImage(named: "IMG_2383")
            changeLabel.text = "おめでとう!\nオムライスが\n出来上がったよ！"
            secondLabel.text = "美味しそうだね-"
            view.backgroundColor = UIColor.green
            changeLabel.font = UIFont.boldSystemFont(ofSize:30)
            secondLabel.font = UIFont.boldSystemFont(ofSize: 60)
            remaining.text = ""
            second.text = ""
            }
        
        
            
            
        }
        
    }
    
}

