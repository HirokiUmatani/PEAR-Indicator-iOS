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

    
    // create sample 1
    /*
    _indicator =[IndicatorView new];
    _indicator.frame = CGRectMake(0, 0, self.view.window.frame.size.width, self.view.window.frame.size.height);
    [self.view.window addSubview:_indicator];
    */
    
    
    // create sample2
    /*
     _indicator = [[IndicatorView alloc] initWithTarget:self.view.window];
    */
    
    
    // create sample3
    _indicator = [[IndicatorView alloc]initWithTarget:self.view.window
                                           userEnable:YES
                                              message:@"UPLOAD"
                                      backgroundColor:[UIColor colorWithRed:0.0/255.0
                                                                      green:80.0/255.0
                                                                       blue:0.0/255.0 alpha:1.0]
                                            fontColor:[UIColor whiteColor]];
    // start
    [_indicator start];
    
    // stop (after 3 second)
    [self performSelector:@selector(indicatorStop)
               withObject:nil afterDelay:3.0f];
}
- (void)indicatorStop
{
    [_indicator stop];
}
@end
