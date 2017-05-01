//
//  XWStick.h
//  XWKit
//
//  Created by Metallic  on 17/5/1.
//  Copyright © 2017年 xiaowei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface XWStick : NSObject

@property (nonatomic, readonly) CGFloat height;

@property (nonatomic, copy, readonly) NSArray<NSNumber *> *animateValues;//0.0 ~ 1.0

+ (instancetype)stickWithHeight:(CGFloat)height animateValues:(NSArray<NSNumber *> *)values;

- (instancetype)initWithHeight:(CGFloat)height animateValues:(NSArray<NSNumber *> *)values;


@end
