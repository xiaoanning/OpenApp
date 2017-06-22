//
//  ViewController.m
//  OpenAppO
//
//  Created by 安宁 on 2017/6/22.
//  Copyright © 2017年 安宁. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"openapp://para:this"]] ;
    
//    NSLog(@" %d",[[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"openapp://para:this"]]) ;
//    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"openapp://para:this"] options:@{@"key1":@"value1"} completionHandler:^(BOOL success) {
//        
//        UIAlertView * view = [[UIAlertView alloc]initWithTitle:@"回调" message:@"message" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles: nil];
//        [view show];
//        
//    }];
}

@end
