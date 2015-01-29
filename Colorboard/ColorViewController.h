//
//  ColorViewController.h
//  Colorboard
//
//  Created by Ricky Pattillo on 1/28/15.
//  Copyright (c) 2015 Ricky Pattillo. All rights reserved.
//

@import UIKit;

@class ColorDescription;

@interface ColorViewController : UIViewController

@property (nonatomic) BOOL existingColor;
@property (nonatomic, strong) ColorDescription *colorDescription;

@end
