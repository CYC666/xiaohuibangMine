//
//  CWebPlayerLayer.h
//  XiaoHuiBang
//
//  Created by mac on 16/12/29.
//  Copyright © 2016年 消汇邦. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AFNetworking.h>
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>

@interface CWebPlayerLayer : UIView

@property (strong, nonatomic) AFHTTPSessionManager *manager;
@property (strong, nonatomic) AVPlayerLayer *playerLayer;
@property (strong, nonatomic) AVPlayerItem *playerItem;
@property (strong, nonatomic) AVPlayer *player;
@property (strong, nonatomic) UIImageView *thumbView;
@property (strong, nonatomic) UIProgressView *progressView;     // 下载进度条
@property (strong, nonatomic) UIActivityIndicatorView *activityView;    // 小菊花
@property (strong, nonatomic) UIProgressView *playProgressView; // 播放进度


@property (copy, nonatomic) NSString *movieUrlStr;
@property (copy, nonatomic) NSString *movieThumb;
@property (assign, nonatomic) BOOL isCycle;                     // 是否循环播放

- (instancetype)initWithFrame:(CGRect)frame withUrl:(NSString *)urlStr movieThumb:(NSString *)thumb;

@end
