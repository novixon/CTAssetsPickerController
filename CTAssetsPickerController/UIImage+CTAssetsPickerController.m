//
//  UIImage+CTAssetsPickerController.m
//  CTAssetsPickerDemo
//
//  Created by Miguel Cabeça on 25/11/14.
//  Copyright (c) 2014 Clement T. All rights reserved.
//

#import "UIImage+CTAssetsPickerController.h"
#import "NSBundle+CTAssetsPickerController.h"

@implementation UIImage (CTAssetsPickerController)

+ (UIImage *)ctassetsPickerControllerImageNamed:(NSString *)name
{
    UIImage *image = [UIImage imageNamed:name];
    if (image != nil) {
        return image;
    }
    
    if ([UIImage respondsToSelector:@selector(imageNamed:inBundle:compatibleWithTraitCollection:)])
    {
        return [UIImage imageNamed:name inBundle:[NSBundle ctassetsPickerControllerBundle] compatibleWithTraitCollection:nil];
    }
    else
    {
        return [UIImage imageNamed:[NSString stringWithFormat:@"CTAssetsPickerController.bundle/%@", name]];
    }
}

@end
