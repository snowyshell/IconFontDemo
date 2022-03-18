//
//  GMFGradientLabel.h
//  GMHomePage
//
//  Created by zhangbeibei4 on 2021/10/13.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GMFGradientLabel : UIView

@property (nonatomic, strong) NSArray * colors;//字体渐变颜色数组（必须将颜色转换为CGColor并强制转换为id类型）

@property (nonatomic, strong) UIFont *font;//字体

@property (nonatomic, copy) NSString *text;//设置渐变颜色的文字

@property (nonatomic, assign) NSTextAlignment textAlignment;//对齐方式

- (void) setGradientLabel;

@end

NS_ASSUME_NONNULL_END
