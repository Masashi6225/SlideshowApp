//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by Masashi Motohashi on 2017/05/08.
//  Copyright © 2017 masashi.motohashi. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var imageName: String=""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //ResultViewのimageViewに画像を表示させる
        //前の画面から渡されたimageNameを使用
        //UIImage -> namedで画像ファイル名を指定すると、imageデータとして読み込み
        //imageView.image　はUIImageが入るプロパティ
        imageView.image = UIImage(named: imageName)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
