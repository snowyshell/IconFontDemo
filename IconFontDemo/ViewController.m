//
//  ViewController.m
//  IconFontDemo
//
//  Created by zhangbeibei4 on 2021/10/14.
//

#import "ViewController.h"
#import "GMFGradientLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /* 步骤
     1.下载UI做好的字体等信息
     2.把ttf文件引入工程中
     3.在info.plist中添加 Fonts provided by application 项，把ttf文件名添加上
     */
    
    // lab1是纯色的，使用系统的UIlabel即可
    UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 40)];
    // 在iconfont.json中查看unicode
    lab1.text = @"\U0000e606";
    lab1.textColor = [UIColor greenColor];
    lab1.textAlignment = NSTextAlignmentCenter;
    // 字体在iconfont.json中查看font_family，UI在创建的时候设置好的
    lab1.font = [UIFont fontWithName:@"xuanzhong" size:10.0]; // 字号可以根据需要调整
    [self.view addSubview:lab1];
    
    // lab2是渐变色的，具体实现看GMFGradientLabel
    GMFGradientLabel *lab2 = [[GMFGradientLabel alloc] initWithFrame:CGRectMake(0, 150, 40, 40)];
    // 在iconfont.json中查看unicode
    lab2.text = @"\U0000e606";
    lab2.textAlignment = NSTextAlignmentCenter;
    // 字体在iconfont.json中查看font_family，UI在创建的时候设置好的
    lab2.font = [UIFont fontWithName:@"xuanzhong" size:10.0]; // 字号可以根据需要调整
    // 设置渐变色
    lab2.colors = [NSArray arrayWithObjects:(id)[UIColor blueColor].CGColor, (id)[UIColor yellowColor].CGColor, nil];
    // frame要和实际文字长度一致，否则透出来的渐变色只有中间一部分
    [lab2 sizeToFit];
    lab2.center = CGPointMake(lab1.center.x, lab2.center.y + 50);
    [lab2 setGradientLabel];
    
    [self.view addSubview:lab2];
}


@end
