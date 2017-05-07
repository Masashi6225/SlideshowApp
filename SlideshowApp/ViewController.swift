//
//  ViewController.swift
//  SlideshowApp
//
//  Created by Masashi Motohashi on 2017/04/24.
//  Copyright © 2017 masashi.motohashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    
    var timer: Timer!
    var timer_sec: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateTimer (timer:Timer){
        self.timer_sec += 2.0
        self.timerLabel.text = String(format:"%.1f",timer_sec)
    }
    
    @IBAction func startTimer(_ sender: Any){
        //進むボタンを押すとTimer作成、始動
        if self.timer == nil {
        self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector:#selector(updateTimer), userInfo: nil, repeats: true)
        } else {
            self.timer.invalidate() //タイマーが再生されていた場合は停止させる
            self.timer = nil //startTimer()の timer==nil　で判断するために timer=nilとしておく
        }
    }

    @IBAction func resetTimer(_ sender:Any){
        self.timer_sec = 0
        self.timerLabel.text = String(format: "%.1f", self.timer_sec)
        
        if self.timer != nil {
            self.timer.invalidate() //現在のタイマーを破棄
            self.timer = nil   //startTimer()の timer==nil　で判断するために timer=nilとしておく
        }
    }
    

}

