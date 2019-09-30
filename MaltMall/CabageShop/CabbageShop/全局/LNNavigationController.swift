//
//  LNNavigationController.swift
//  TaoKeThird
//
//  Created by 付耀辉 on 2018/10/28.
//  Copyright © 2018年 付耀辉. All rights reserved.
//

import UIKit

class LNNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        //设置导航栏背景颜色
//        self.navigationBar.barTintColor = UIColor.hex("#222222")
//        //设置导航栏标题颜色
//        let dict:NSDictionary = [NSAttributedStringKey.foregroundColor: UIColor.white,NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 18)]
//        //标题颜色
//        self.navigationBar.titleTextAttributes = dict as? [NSAttributedStringKey : AnyObject]
//        //item颜色
//        self.navigationBar.tintColor = UIColor.white
        
        
        setupTitleViewSectionStyle()
    }
    
    //push的时候判断到子控制器的数量。当大于零时隐藏BottomBar 也就是UITabBarController 的tababar
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if self.childViewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }
    
    //    重新设置标题颜色和样式
    func setupTitleViewSectionStyle() {
        let titleV = UINavigationBar.appearance()
        let textAttrs = NSMutableDictionary()
        textAttrs[NSAttributedStringKey.foregroundColor] = UIColor.white
        textAttrs[NSAttributedStringKey.font] = UIFont.boldSystemFont(ofSize: 18)
        titleV.titleTextAttributes = (textAttrs as? [NSAttributedStringKey : Any])
    }
    
    func setupTitleViewMainStyle() {
        let titleV = UINavigationBar.appearance()
        let textAttrs = NSMutableDictionary()
        textAttrs[NSAttributedStringKey.foregroundColor] = UIColor.white
        textAttrs[NSAttributedStringKey.font] = UIFont.boldSystemFont(ofSize: 18)
        titleV.titleTextAttributes = (textAttrs as? [NSAttributedStringKey : Any])
    }
    
}
