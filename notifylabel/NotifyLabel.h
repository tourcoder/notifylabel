//
//  NotifyLabel.h
//
//  Created by TOURCODER on 2013/3/27.
//  Copyright © TOURCODER 2018. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NotifyLabel : UILabel
+ (NotifyLabel *)addLabelIntoView:(UIView*)view withTitle:(NSString *)string withFontname:(NSString *)fontname removedDelayTime:(float)delaytime;
@end
