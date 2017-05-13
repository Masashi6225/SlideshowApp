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
    
    let imageArray = ["photo1.jpg","photo2.png","photo3.png"]
    
    var count = 0
    
   
    @IBOutlet weak var nextButton: UIButton!
    //進むボタン
    @IBAction func next(_ sender: Any) {
        nextImage()
    }
    func nextImage() {
        imageView.image = UIImage(named: imageArray[count])
        count = count + 1
        if (count>2) {
            count = 0
        }
    
        
    }

    @IBOutlet weak var backButton: UIButton!
    //戻るボタン
    @IBAction func back(_ sender: Any) {
        previousImage()
    }
    func previousImage() {
        imageView.image = UIImage(named: imageArray[count])
        count = count - 1
        if (count<0) {
            count = 2
        }
    }

    
    var timer: Timer!
    var timer_sec: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: imageArray[0])
    }
    
    //func didClickImageView(recognizer: UIGestureRecognizer) {
     //   if let imageView = recognizer.view as? UIImageView {
   //     }
   // }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateTimer (timer:Timer){
        nextImage()
    }
    
    @IBAction func startTimer(_ sender: Any){
        //再生ボタンを押すとTimer作成、始動
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector:#selector(updateTimer), userInfo: nil, repeats: true)
        } else {
            self.timer.invalidate() //タイマーが再生されていた場合は停止させる
            self.timer = nil //startTimer()の timer==nil　で判断するために timer=nilとしておく
        }
     
    if self.timer != nil {
    nextButton.isEnabled = false
    backButton.isEnabled = false
    //自動送りの間は進む、戻るボタンはタップ不可に
    }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているtextに文字を代入して渡す
      
        
        // resultViewController.imageView = imageArray[count]
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        // 他の画面から segue を使って戻ってきた時に呼ばれる
    }
}

