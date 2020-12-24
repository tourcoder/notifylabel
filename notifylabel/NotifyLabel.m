//
//  NotifyLabel.m
//
//  Created by TOURCODER on 2013/3/27.
//  Copyright © TOURCODER 2018. All rights reserved.
//

#import "NotifyLabel.h"

@implementation NotifyLabel

+ (NotifyLabel *)addLabelIntoView:(UIView*)view withTitle:(NSString *)string withFontname:(NSString *)fontname removedDelayTime:(float)delaytime{
    NotifyLabel *label = [[NotifyLabel alloc] init];
    CGSize size = CGSizeMake(120.0f, 40.0f);
    CGPoint point = CGPointMake(view.bounds.size.width / 2, view.bounds.size.height / 2);
    label.frame = CGRectMake(0, 0, size.width, size.height);
    label.center = point;
    label.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.8];
    label.font = [UIFont fontWithName:fontname size:16.0f];
    label.text = string;
    label.layer.masksToBounds = YES;
    label.layer.cornerRadius = size.height / 2;
    label.layer.borderColor = [UIColor colorWithWhite:0.0 alpha:0.3].CGColor;
    label.layer.borderWidth = 0.5f;
    label.adjustsFontSizeToFitWidth = YES;
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor colorWithWhite:0.0 alpha:0.6];
    [NSTimer scheduledTimerWithTimeInterval:delaytime target:label selector:@selector(removeLabelFromView) userInfo:nil repeats:NO];
    [view addSubview:label];
    return label;
}

- (void)removeLabelFromView {
    [self removeFromSuperview];
}

@end
