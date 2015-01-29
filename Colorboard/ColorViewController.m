//
//  ColorViewController.m
//  Colorboard
//
//  Created by Ricky Pattillo on 1/28/15.
//  Copyright (c) 2015 Ricky Pattillo. All rights reserved.
//

#import "ColorViewController.h"
#import "ColorDescription.h"

@interface ColorViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@end


@implementation ColorViewController

- (void)viewDidLoad
{
   [super viewDidLoad];

   UIColor *color = self.colorDescription.color;
   CGFloat red, green, blue;
   [color getRed:&red green:&green blue:&blue alpha:nil];

   self.redSlider.value = red;
   self.greenSlider.value = green;
   self.blueSlider.value = blue;

   self.view.backgroundColor = color;
   self.textField.text = self.colorDescription.name;
}


- (void)viewWillAppear:(BOOL)animated
{
   [super viewWillAppear:animated];

   if (self.existingColor) {
      self.navigationItem.rightBarButtonItem = nil;
   }
}


- (void)viewWillDisappear:(BOOL)animated
{
   [super viewWillDisappear:animated];

   self.colorDescription.name = self.textField.text;
   self.colorDescription.color = self.view.backgroundColor;
}


- (IBAction)dismiss:(id)sender
{
   [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}


- (IBAction)changeColor:(id)sender
{
   float red = self.redSlider.value;
   float green = self.greenSlider.value;
   float blue = self.blueSlider.value;
   UIColor *newColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
   self.view.backgroundColor = newColor;
}


@end
