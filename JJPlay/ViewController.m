//
//  ViewController.m
//  JJPlay
//
//  Created by zhangyi35 on 2018/4/8.
//  Copyright © 2018年 zhangyi35. All rights reserved.
//

#import "ViewController.h"
#import <IJKMediaFramework/IJKMediaFramework.h>


@interface ViewController (){
    IJKFFMoviePlayerController *_player;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _player = [[IJKFFMoviePlayerController alloc]initWithContentURLString:@"" withOptions:nil];

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
