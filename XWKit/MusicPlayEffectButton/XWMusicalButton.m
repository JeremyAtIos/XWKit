//
//  XWMusicalButton.m
//  XWKit
//
//  Created by Metallic  on 17/5/1.
//  Copyright © 2017年 xiaowei. All rights reserved.
//

#import "XWMusicalButton.h"
#import "XWStick.h"

@implementation XWMusicalButton
{
    CGFloat _lastX;
}

- (void)setSticks:(NSArray *)sticks
{
    [self.layer removeAllAnimations];
    
    _lastX = 0.0;
    
    [sticks enumerateObjectsUsingBlock:^(XWStick *_Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //创建shapeLayers
        CAShapeLayer *shapeLayer = [CAShapeLayer layer];
        shapeLayer.frame = self.bounds;
        shapeLayer.lineWidth = 2.0;
        shapeLayer.strokeColor = [UIColor whiteColor].CGColor;
        shapeLayer.lineCap = kCALineCapRound;
        
        //传入路径并添加到contentView的layer层次中
        UIBezierPath *bezierPath = [UIBezierPath bezierPath];
        CGPoint startPoint = CGPointMake(_lastX + 8.0, self.bounds.size.height - 8);
        CGPoint endPoint = CGPointMake(startPoint.x, startPoint.y - obj.height);
        [bezierPath moveToPoint:startPoint];
        [bezierPath addLineToPoint:endPoint];
        shapeLayer.path = bezierPath.CGPath;
        [self.layer addSublayer:shapeLayer];
        
        //给shapeLayer添加帧动画
        CAKeyframeAnimation *animation = [CAKeyframeAnimation animation];
        animation.keyPath = @"strokeEnd";
        animation.values = obj.animateValues;
        animation.duration = 1.0;
        animation.repeatCount = HUGE_VALF;
        animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
        [shapeLayer addAnimation:animation forKey:@"Line Animation"];
        
        _lastX += 10.0;
    }];
}

@end
