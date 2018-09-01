//
//  CodeViewController.swift
//  Autolayout0901
//
//  Created by WY NG on 1/9/2018.
//  Copyright © 2018 lumanman. All rights reserved.
//

import UIKit

class CodeViewController: UIViewController {

    @IBOutlet weak var testView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 在ios中用程式碼加autolayout有三種方法
        // 最新的
        
        // 在testView addSubView的時候會自動加入constraint 所以叫他不用自動加 避免衝突
        testView.translatesAutoresizingMaskIntoConstraints = false
        
        // testView的top 對齊 superView的top
        testView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        // 左
        testView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        // 右
        testView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        // 下
        testView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
//        // 寬
//        testView.widthAnchor.constraint(equalTo: self.view.widthAnchor)
//        // 高
//        testView.heightAnchor.constraint(equalTo: self.view.heightAnchor)
        
//        // 中心點X
//        testView.centerXAnchor
//        // 中心點Y
//        testView.centerYAnchor
        
        // 參數：對應的view/倍數/距離
        //testView.widthAnchor.constraint(equalTo: <#T##NSLayoutDimension#>, multiplier: <#T##CGFloat#>, constant: <#T##CGFloat#>)
        
    }


}
