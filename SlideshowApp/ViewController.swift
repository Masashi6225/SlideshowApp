//
//  ViewController.swift
//  SlideshowApp
//
//  Created by Masashi Motohashi on 2017/04/24.
//  Copyright © 2017 masashi.motohashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    let imageArray = ["paint 1.png","paint 2.png","paint 3.png"]

    var count = 0
    func nextImage() {
        imageView.image = UIImage(named: imageArray[count])
        count = count + 1
        if (count>2) {
            count = 0
        }
        
    @IBOutlet weak var timerLabel: UILabel!
    
    var timer: Timer!
    var timer_sec: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        }
        
        func didClickImageView(recognizer: UIGestureRecognizer) {
            if let imageView = recognizer.view as? UIImageView {
                let image = imageView.image
                let nextViewController = /** 次のUIViewControllerのインスタンス */
                    nextViewController.image = iamge
                /** netViewController への遷移 */
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateTimer (timer:Timer){
        self.timer_sec += 2.0
        self.timerLabel.text = String(format:"%.1f",timer_sec)
    }
    
    @IBAction func startTimer(_ sender: Any){
        //再生ボタンを押すとTimer作成、始動
        if self.timer == nil {
        self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector:#selector(updateTimer), userInfo: nil, repeats: true)
        } else {
            self.timer.invalidate() //タイマーが再生されていた場合は停止させる
            self.timer = nil //startTimer()の timer==nil　で判断するために timer=nilとしておく
        }
    
     //自動送りの間は進むと戻るボタンはタップ不可に
        // button.isEnabled = true
        
        
    }
            

}

