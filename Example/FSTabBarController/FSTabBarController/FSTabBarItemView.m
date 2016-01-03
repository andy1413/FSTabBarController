//
//  FSTabBarItemView.m
//  
//
//  Created by 王方帅 on 15/8/13.
//  Copyright (c) 2015年 王方帅. All rights reserved.
//

#import "FSTabBarItemView.h"
#import "UIView+HB.h"

@implementation FSTabBarItemView

-(void)awakeFromNib
{
    _selected = NO;
}

-(void)setImage:(UIImage *)image
{
    if (_image != image)
    {
        _image = image;
        
        if (!_selected)
        {
            _imageView.image = image;
        }
    }
}

-(void)setTitle:(NSString *)title
{
    if (_title != title)
    {
        _title = title;
        _label.text = title;
    }
}

-(void)setColor:(UIColor *)color
{
    if (_color != color)
    {
        _color = color;
        if (!_selected)
        {
            _label.textColor = color;
        }
    }
}

-(void)setSelectedImage:(UIImage *)selectedImage
{
    if (_selectedImage != selectedImage)
    {
        _selectedImage = selectedImage;
        if (_selected)
        {
            _imageView.image = selectedImage;
        }
    }
}

-(void)setSelectedColor:(UIColor *)selectedColor
{
    if (_selectedColor != selectedColor)
    {
        _selectedColor = selectedColor;
        if (_selected)
        {
            _label.textColor = selectedColor;
        }
    }
}

-(void)setSelected:(BOOL)selected
{
    if (_selected != selected)
    {
        _selected = selected;
        if (_selected)
        {
            _label.textColor = _selectedColor;
            _imageView.image = _selectedImage;
        }
        else
        {
            _label.textColor = _color;
            _imageView.image = _image;
        }
    }
}

-(void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
    _imageView.centerX = self.width/2;
    _label.centerX = self.width/2;
}


@end
