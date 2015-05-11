/*******************************************************************************
 Copyright (C), 2013-2015, ZP
 File name: SKCaptureCodeView.h
 Author: Joy (曾 平)
 E-mail: joykerl@yahoo.com
 Description:
 扫描二维码
 History:
 2015-05-11
 Copyright information:
 Copyright (c) 2015年 ZP. All rights reserved.
 ********************************************************************************/

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
@interface SKCaptureCodeView : UIView

+ (void)startCaptureWithPreView:(UIView *)preView Content:(void(^)(BOOL *stop,AVMetadataMachineReadableCodeObject *content))content;


@end
