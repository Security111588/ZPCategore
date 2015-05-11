/*******************************************************************************
 Copyright (C), 2013-2015, ZP
 File name: ZPPopMenu.h
 Author: Joy (曾 平)
 E-mail: joykerl@yahoo.com
 Description:
 弹出菜单
 History:
 2015-05-11
 Copyright information:
 Copyright (c) 2015年 ZP. All rights reserved.
 ********************************************************************************/

#import "ZPPopMenu.h"

@implementation ZPPopMenu

+ (void)popFromView:(UIView *)view content:(UIView *)content dismiss:(void (^)())dismiss
{
    [self popFromRect:view.frame inView:view.superview content:content dismiss:dismiss];
}

UIWindow *_window;
void (^_dismiss)();

+ (void)popFromRect:(CGRect)rect inView:(UIView *)view content:(UIView *)content dismiss:(void (^)())dismiss
{
    // block需要进行copy保住生命
    _dismiss = [dismiss copy];
    
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    _window.windowLevel = UIWindowLevelAlert;
    _window.hidden = NO;
    
    UIButton *cover = [[UIButton alloc] init];
    cover.backgroundColor = [UIColor clearColor];
    [cover addTarget:self action:@selector(coverClick) forControlEvents:UIControlEventTouchUpInside];
    cover.frame = [UIScreen mainScreen].bounds;
    [_window addSubview:cover];
    
    UIImageView *container = [[UIImageView alloc] init];
    container.userInteractionEnabled = YES;
    UIImage *image = [UIImage imageNamed:@"popover_background"];
    image = [image stretchableImageWithLeftCapWidth:5 topCapHeight:20];
    container.image = image;
    [cover addSubview:container];
    
    CGRect frame = content.frame;
    frame.origin.x = 10;
    frame.origin.y = 13;
    content.frame = frame;
    [container addSubview:content];
    
    frame = container.frame;
    frame.size.width = CGRectGetMaxX(content.frame) + content.x_;
    frame.size.height = CGRectGetMaxY(content.frame) + content.x_;
    container.frame = frame;
    container.center = CGPointMake(CGRectGetMidX(rect), container.center.y);
    
    frame = container.frame;
    frame.origin.y = CGRectGetMaxY(rect);
    container.frame = frame;
    
    container.center = [view convertPoint:container.center toView:_window];
}

+ (void)coverClick
{
    _window.hidden = YES;
    _window = nil;
    
    if (_dismiss) {
        _dismiss();
        _dismiss = nil;
    }
}

UIViewController *_contentVc;
+(void)popFromView:(UIView *)view contentVc:(UIViewController *)contentVc dismiss:(void (^)())dismiss
{
    _contentVc = contentVc;
    [self popFromView:view content:_contentVc.view dismiss:dismiss];
}

+ (void)popFromRect:(CGRect)rect inView:(UIView *)view contentVc:(UIViewController *)contentVc dismiss:(void (^)())dismiss
{
    _contentVc = contentVc;
    [self popFromRect:rect inView:view content:_contentVc.view dismiss:dismiss];
}

@end
