//
//  ViewController.m
//  Indicator
//
//  Created by hirokiumatani on 2015/11/07.
//  Copyright © 2015年 hirokiumatani. All rights reserved.
//

#import "ViewController.h"
#import "IndicatorView.h"
@interface ViewController ()
@property (nonatomic,strong) IndicatorView *indicator;
- (IBAction)indicatorStart:(UIButton *)sender;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)indicatorStart:(UIButton *)sender
{
    // create
    _indicator = [[IndicatorView alloc]initWithTarget:self.view
                                              message:@"Now Loading ..."
                                      backgroundColor:[UIColor blackColor]
                                            fontColor:[UIColor whiteColor]];
    // start
    [_indicator start];
    
    //stop (after 5 second)
    [self performSelector:@selector(indicatorStop)
               withObject:nil afterDelay:5.0f];
}
- (void)indicatorStop
{
    [_indicator stop];
}
@end
