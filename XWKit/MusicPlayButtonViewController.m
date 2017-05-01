//
//  MusicPlayButtonViewController.m
//  XWKit
//
//  Created by Metallic  on 17/4/16.
//  Copyright © 2017年 xiaowei. All rights reserved.
//

#import "MusicPlayButtonViewController.h"
#import "XWMusicalButton.h"
#import "XWStick.h"

@interface MusicPlayButtonViewController ()


@end

@implementation MusicPlayButtonViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    XWMusicalButton *musicalButton = [[XWMusicalButton alloc] init];
    musicalButton.backgroundColor = [UIColor redColor];
    [self.view addSubview:musicalButton];
    musicalButton.frame = CGRectMake(64, 100, 100, 100);
    XWStick *stick1 = [XWStick stickWithHeight:80 animateValues:@[@0.5, @1.0, @0.5]];
    XWStick *stick2 = [XWStick stickWithHeight:70 animateValues:@[@1.0, @0.4, @1.0]];
    XWStick *stick3 = [XWStick stickWithHeight:60 animateValues:@[@0.6, @1.0, @0.6]];
    XWStick *stick4 = [XWStick stickWithHeight:50 animateValues:@[@1.0, @0.3, @1.0]];
    musicalButton.sticks = @[ stick1, stick2, stick3, stick4 ];
    [musicalButton addTarget:self action:@selector(musicalButtonClicked) forControlEvents:UIControlEventTouchUpInside];
}

- (void)musicalButtonClicked
{
    NSLog(@"123");
}

@end
