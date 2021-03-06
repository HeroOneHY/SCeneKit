//
//  ViewController.swift
//  cameraCode
//
//  Created by HeroOneHy on 2019/4/22.
//  Copyright © 2019年 HeroOneHy. All rights reserved.
//

import UIKit
import SceneKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 场景视图
        let scnView = SCNView.init(frame: view.bounds)
        scnView.backgroundColor = UIColor.gray
        scnView.allowsCameraControl = true
        view.addSubview(scnView)

        scnView.scene = SCNScene();


        // 盒子1
        let box1 = SCNBox.init(width: 10, height: 10, length: 10, chamferRadius: 0) //改变chamferRadius(切割半径)可以变化成球
      //  let vars =  box1.materials;
        box1.firstMaterial?.diffuse.contents = UIImage(named: "test2.jpg");
        let mate = SCNMaterial.init();
        mate.diffuse.contents = UIImage(named: "test.jpg");
        box1.insertMaterial(mate, at: 1);
        
        let mate2 = SCNMaterial.init();
        mate2.diffuse.contents = UIColor.purple;
        box1.insertMaterial(mate2, at: 2);
        
        let boxNode1 = SCNNode()
        boxNode1.geometry = box1
        scnView.scene?.rootNode.addChildNode(boxNode1)

        // 添加照相机
        let camera = SCNCamera()

        let cameraNode = SCNNode()
        cameraNode.camera = camera
        cameraNode.position = SCNVector3Make(0, 0, 60)
        scnView.scene?.rootNode.addChildNode(cameraNode)
        
        /*
        //SCNAction添加旋转动作
        let customAction = SCNAction.rotateBy(x: 0, y: 1, z: 0, duration: 1);
        
        //let repeatAction = SCNAction.repeat(customAction, count:100);
         let repeatAction = SCNAction.repeatForever(customAction);
        boxNode1.runAction(repeatAction);
        */
        let animation = CABasicAnimation(keyPath: "position")
        //开始的位置
        animation.fromValue = CGPoint(x: 0, y: 0)
        //移动到的位置
        animation.toValue = CGPoint(x: 10, y: 20)
        //持续时间
        animation.duration = 3
       
        boxNode1.addAnimation(animation, forKey: "my_position")

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

