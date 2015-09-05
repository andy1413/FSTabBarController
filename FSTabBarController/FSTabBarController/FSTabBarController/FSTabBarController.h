//
//  FSTabBarController.h
//  
//
//  Created by 王方帅 on 15/8/13.
//  Copyright (c) 2015年 王方帅. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FSTabBarItemView.h"

#define RGBCOLOR(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]
#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]

#define kUIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define kUIColorAFromRGB(rgbValue,a) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:a]

@interface FSTabBarController : UITabBarController<UITabBarControllerDelegate>
{
    NSUInteger   _preSeletedIndex;
}

@property (nonatomic,strong) UIView     *customTabBarView;
@property (nonatomic,strong) NSMutableArray *tabBarButtonArray;

@end
