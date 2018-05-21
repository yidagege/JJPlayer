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
@property (nonatomic, strong) NSURL *url;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSString * str = [[NSString alloc]initWithFormat:@"%@",[[NSBundle mainBundle]pathForResource:@"playersourse" ofType:@"mov"]];
    
    //网络视频
//        self.url = [NSURL URLWithString:@"https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4"];
//        _player = [[IJKAVMoviePlayerController alloc] initWithContentURL:self.url];
    
    //直播视频
    self.url = [NSURL URLWithString:@"http://live.hkstv.hk.lxdns.com/live/hks/playlist.m3u8"];
    _player = [[IJKFFMoviePlayerController alloc] initWithContentURL:self.url withOptions:nil];

//    _player = [[IJKFFMoviePlayerController alloc]initWithContentURLString:str withOptions:nil];
    _player.view.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    _player.view.frame = self.view.bounds;
    _player.scalingMode = IJKMPMovieScalingModeAspectFit; //缩放模式
    _player.shouldAutoplay = YES; //开启自动播放
    self.view.autoresizesSubviews = YES;
    [self.view addSubview:_player.view];
    
    //准备
    [_player prepareToPlay];
    //播放
    [_player play];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
