//
//  ViewController.m
//  SceneKit-Study-One
//
//  Created by HeroOneHy on 2019/4/22.
//  Copyright © 2019年 HeroOneHy. All rights reserved.
//

#import "ViewController.h"
#import <SceneKit/SceneKit.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 创建游戏专用视图
    SCNView *scnView = [[SCNView alloc]initWithFrame:self.view.bounds];
    // 创建一个场景,系统默认是没有的
    scnView.scene = [SCNScene scene];
    // 先设置一个颜色看看游戏引擎有没有加载
    scnView.backgroundColor = [UIColor grayColor];
    // 添加到scnView中去
    [self.view addSubview:scnView];
    
    SCNNode *textNode = [SCNNode node];

    SCNText *text = [SCNText textWithString:@"闫贺大傻逼" extrusionDepth:0.03]; //extrusionDepth是字体的高度，0.0就是2d字
   
    textNode.geometry = text; //geometry 几何形状
   // text.firstMaterial.diffuse.contents = [UIColor redColor];
    // 设置字体大小
    text.font = [UIFont systemFontOfSize:0.25];
   // 把这个文字节点添加到游戏场景的根节点上
    [scnView.scene.rootNode addChildNode:textNode];
//   // 允许用户操作摄像机,先不解释
   scnView.allowsCameraControl = true;
    
//
   
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
