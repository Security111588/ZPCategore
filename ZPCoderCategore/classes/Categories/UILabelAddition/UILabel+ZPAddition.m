/*******************************************************************************
 Copyright (C), 2013-2015, ZP
 File name: UILabel+ZPAddition.h
 Author: Joy (曾 平)
 E-mail: joykerl@yahoo.com
 Description:
 分类扩展
 History:
 2015-05-11
 Copyright information:
 Copyright (c) 2015年 ZP. All rights reserved.
 ********************************************************************************/

#import "UILabel+ZPAddition.h"

@implementation UILabel (ZPAddition)

- (CGSize)boundsSize:(CGSize)size
{
    CGSize resSize = CGSizeZero;
    if ([[[UIDevice currentDevice] systemVersion] compare:@"7.0"] != NSOrderedDescending) {
        NSDictionary *attribute = @{NSFontAttributeName:self.font};
        
        resSize = [self.text boundingRectWithSize:size options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attribute context:nil].size;
    } else {
        resSize = [self.text sizeWithFont:[UIFont systemFontOfSize:self.font.pointSize] constrainedToSize:CGSizeMake(size.width, CGFLOAT_MAX) lineBreakMode:NSLineBreakByWordWrapping];
    }
    
    return resSize;
}

@end
