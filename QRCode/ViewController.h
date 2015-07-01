//
//  ViewController.h
//  QRCode
//
//  Created by Fan on 15/5/7.
//  Copyright (c) 2015年 未名空间. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController<AVCaptureMetadataOutputObjectsDelegate>

@property (nonatomic, strong) UILabel *showLabel;
@property (nonatomic, strong) UIButton *button;
@property (nonatomic, strong) AVCaptureSession *session;
@property (nonatomic, strong) AVCaptureVideoPreviewLayer *preview;


@end

