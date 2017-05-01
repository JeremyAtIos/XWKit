//
//  XWStick.m
//  XWKit
//
//  Created by Metallic  on 17/5/1.
//  Copyright © 2017年 xiaowei. All rights reserved.
//

#import "XWStick.h"

@interface XWStick ()

@property (nonatomic, readwrite) CGFloat height;

@property (nonatomic, copy, readwrite) NSArray<NSNumber *> *animateValues;

@end

@implementation XWStick

+ (instancetype)stickWithHeight:(CGFloat)height animateValues:(NSArray<NSNumber *> *)values
{
    return [[self alloc] initWithHeight:height animateValues:values];
}

- (instancetype)initWithHeight:(CGFloat)height animateValues:(NSArray<NSNumber *> *)values
{
    self = [super init];
    if (self) {
        _height = height;
        _animateValues = values;
    }
    return self;
}

@end
