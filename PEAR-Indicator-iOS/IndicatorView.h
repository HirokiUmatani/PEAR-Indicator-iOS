//
//  IndicatorView.h
//  Indicator
//
//  Created by hirokiumatani on 2015/11/07.
//  Copyright © 2015年 hirokiumatani. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IndicatorView : UIView
- (id)initWithTarget:(UIView *)view;

- (id)initWithTarget:(UIView *)view
          userEnable:(BOOL)userEnable
             message:(NSString *)message
     backgroundColor:(UIColor *)backgroundColor
           fontColor:(UIColor *)fontColor;

- (void)start;

- (void)stop;
@end
