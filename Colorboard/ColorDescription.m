//
//  ColorDescription.m
//  Colorboard
//
//  Created by Ricky Pattillo on 1/28/15.
//  Copyright (c) 2015 Ricky Pattillo. All rights reserved.
//

#import "ColorDescription.h"

@implementation ColorDescription

- (instancetype)init
{
   self = [super init];
   if (self) {
      _color = [UIColor colorWithRed:0 green:0 blue:1 alpha:1];
      _name = @"Blue";
   }

   return self;
}

@end
