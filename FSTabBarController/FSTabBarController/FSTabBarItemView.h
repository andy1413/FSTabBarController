//
//  FSTabBarItemView.h
//  
//
//  Created by 王方帅 on 15/8/13.
//  Copyright (c) 2015年 王方帅. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FSTabBarItemView : UIView
{
    IBOutlet UIImageView    *_imageView;
    IBOutlet UILabel        *_label;
}

@property (nonatomic,strong) UIImage    *image;
@property (nonatomic,strong) UIImage    *selectedImage;

@property (nonatomic,strong) NSString   *title;
@property (nonatomic,strong) UIColor    *color;
@property (nonatomic,strong) UIColor    *selectedColor;
@property (nonatomic,assign) BOOL    selected;

@end
