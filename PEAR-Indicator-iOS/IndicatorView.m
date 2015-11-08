//
//  IndicatorView.m
//  Indicator
//
//  Created by hirokiumatani on 2015/11/07.
//  Copyright © 2015年 hirokiumatani. All rights reserved.
//

#import "IndicatorView.h"
@interface IndicatorView()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIView *backView;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (strong,nonatomic) UIView *view;
@property (assign,nonatomic) BOOL userEnable;
@end

@implementation IndicatorView
- (id)init
{
    self = [super init];
    if (self)
    {
       
        self = [self loadXib];
        [self setInitialData];
        [self loadingAnimation];
        return self;
    }
    return self;
}
- (id)initWithTarget:(UIView *)view
{
    self = [super init];
    if (self)
    {
        self = [self loadXib];
        [self setInitialData];
        [self setFrameToView:view];
        [self loadingAnimation];
        return self;
    }
    return self;
}
- (id)initWithTarget:(UIView *)view
          userEnable:(BOOL)userEnable
             message:(NSString *)message
     backgroundColor:(UIColor *)backgroundColor
           fontColor:(UIColor *)fontColor
{
    self = [super init];
    if (self)
    {
        self = [self loadXib];
        [self setInitialData];
        [self setUserEnable:userEnable];
        [self setFrameToView:view];
        [self setMessage:message];
        [self setBackgroundColor:backgroundColor];
        [self setFontColor:fontColor];
        [self loadingAnimation];
        return self;
    }
    return self;
}

- (void)stop
{
    [UIView animateWithDuration:0.8 animations:^
    {
        self.alpha = 0.0;
        self.transform = CGAffineTransformMakeScale(-1, -10);
    }
                     completion:^(BOOL finished)
    {
        
        _view.userInteractionEnabled = YES;
        
        [self removeFromSuperview];
    }];
}
- (void)start
{
    _view.userInteractionEnabled = _userEnable;
    
    [UIView animateWithDuration:0.8
                          delay:0.0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^
    {
        self.alpha = 1.0;
        self.transform = CGAffineTransformIdentity;
    }
                     completion:^(BOOL finished) {
        
    }];
    
}

- (void)setUserEnable:(BOOL)userEnable
{
    _userEnable = userEnable;
}
- (void)setInitialData
{
    _userEnable = NO;
    self.alpha = 0.0;
    CGAffineTransform t1 = CGAffineTransformMakeScale(-7,-0.5);
    self.transform = t1;
    _backView.layer.cornerRadius = 90;
    _backView.clipsToBounds = true;
}

- (void)setMessage:(NSString *)message
{
    if (!message) return;
    _messageLabel.text = message;
}

- (void)setBackgroundColor:(UIColor *)color
{
    if (!color)return;
    _backView.backgroundColor = color;
}
- (void)setFontColor:(UIColor *)color
{
    if (!color)return;
    _messageLabel.textColor = color;
}
- (void)setFrameToView:(UIView *)view
{
    _view = view;
    self.frame = CGRectMake(0, 0, _view.frame.size.width, _view.frame.size.height);
    [_view addSubview:self];
}

- (IndicatorView *)loadXib
{
    UINib *nib = [UINib nibWithNibName:@"IndicatorView" bundle:nil];
    return [nib instantiateWithOwner:self options:nil][0];
}

- (void)loadingAnimation
{
    [self rotationAnimation];
    [self flashAnimation];
}

- (void)rotationAnimation
{
    CALayer *layer = _imageView.layer;
    
    CABasicAnimation* animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    animation.toValue           = @(M_PI);
    animation.duration          = 0.5f;
    animation.repeatCount       = MAXFLOAT;
    animation.cumulative        = YES;
    
    [layer addAnimation:animation forKey:@"roatation"];
}

- (void)flashAnimation
{
    CALayer *layer = _messageLabel.layer;
    
    CABasicAnimation* animation = [CABasicAnimation animationWithKeyPath:@"opacity"];
    animation.duration          = 1.0f;
    animation.fromValue         = @(0.0f);
    animation.toValue           = @(1.0f);
    animation.autoreverses      = YES;
    animation.repeatCount       = MAXFLOAT;
    
    [layer addAnimation:animation forKey:@"flash"];
}
@end
