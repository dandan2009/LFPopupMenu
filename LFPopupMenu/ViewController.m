//
//  ViewController.m
//  LFPopupMenu
//
//  Created by 张林峰 on 2017/8/20.
//  Copyright © 2017年 张林峰. All rights reserved.
//

#import "ViewController.h"
#import "LFPopupMenu.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray *items;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    LFPopupMenuItem *item1 = [LFPopupMenuItem createWithTitle:@"小视频" image:[UIImage imageNamed:@"icon_menu_record_normal"]];
    LFPopupMenuItem *item2 = [LFPopupMenuItem createWithTitle:@"拍照" image:[UIImage imageNamed:@"icon_menu_shoot_normal"]];
    LFPopupMenuItem *item3 = [LFPopupMenuItem createWithTitle:@"相册" image:[UIImage imageNamed:@"icon_menu_album_normal"]];
    self.items = @[item1, item2, item3];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//加阴影的弹窗
- (IBAction)action1:(id)sender {
    LFPopupMenu *menu = [[LFPopupMenu alloc] init];
    menu.layer.shadowColor = [UIColor blackColor].CGColor;
    menu.layer.shadowOffset = CGSizeMake(2, 2);
    menu.layer.shadowOpacity = 0.5;
    [menu configWithItems:self.items
                           action:^(NSInteger index) {
                               NSLog(@"点击了第%zi个",index);
                           }];
    
    [menu showArrowInView:sender];
}

//自定义背景图的弹窗
- (IBAction)action2:(UIButton *)sender {
    LFPopupMenu *menu = [[LFPopupMenu alloc] init];
    menu.layer.shadowColor = [UIColor blackColor].CGColor;
    menu.layer.shadowOffset = CGSizeMake(2, 2);
    menu.layer.shadowOpacity = 0.5;
    menu.anchorPoint = CGPointMake(0.9, 0);
    menu.imgBG = [[UIImage imageNamed:@"img_menu_frame_bg"] resizableImageWithCapInsets:UIEdgeInsetsMake(20, 20, 20, 20) resizingMode:UIImageResizingModeStretch];;
    [menu configWithItems:self.items
                          action:^(NSInteger index) {
                              NSLog(@"点击了第%zi个",index);
                          }];
    
    [menu showInPoint:CGPointMake(CGRectGetMidX(sender.frame) - (menu.frame.size.width - 12), CGRectGetMaxY(sender.frame))];
}

//加边框的弹窗
- (IBAction)action3:(id)sender {
    LFPopupMenu *menu = [[LFPopupMenu alloc] init];
    menu.needBorder = YES;
    [menu configWithItems:self.items
                          action:^(NSInteger index) {
                              NSLog(@"点击了第%zi个",index);
                          }];
    [menu showArrowInView:sender];
}

//加遮罩的弹窗
- (IBAction)action4:(id)sender {
    LFPopupMenu *menu = [[LFPopupMenu alloc] init];
    menu.maskView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
    [menu configWithItems:self.items
                          action:^(NSInteger index) {
                              NSLog(@"点击了第%zi个",index);
                          }];
    
    [menu showArrowInView:sender];
}

//阴影+边框的弹窗
- (IBAction)action5:(UIButton *)sender {
    LFPopupMenu *menu = [[LFPopupMenu alloc] init];
    menu.layer.shadowColor = [UIColor blackColor].CGColor;
    menu.layer.shadowOffset = CGSizeMake(2, 2);
    menu.layer.shadowOpacity = 0.5;
    menu.needBorder = YES;
    [menu configWithItems:self.items
                          action:^(NSInteger index) {
                              NSLog(@"点击了第%zi个",index);
                          }];
    [menu showArrowInView:sender];
    
    
//    LFPopupMenu *menu = [[LFPopupMenu alloc] init];
//    menu.layer.shadowColor = [UIColor blackColor].CGColor;
//    menu.layer.shadowOffset = CGSizeMake(2, 2);
//    menu.layer.shadowOpacity = 0.5;
//    menu.anchorPoint = CGPointMake(0.9, 0);
//    menu.imgBG = [[UIImage imageNamed:@"img_menu_frame_bg2"] resizableImageWithCapInsets:UIEdgeInsetsMake(20, 20, 20, 20) resizingMode:UIImageResizingModeStretch];;
//    menu.anchorPoint = CGPointMake(0.1, 1);
//    [menu configWithItems:self.items
//                   action:^(NSInteger index) {
//                       NSLog(@"点击了第%zi个",index);
//                   }];
//    
//    [menu showInPoint:CGPointMake(CGRectGetMidX(sender.frame) - 12, CGRectGetMinY(sender.frame) - menu.frame.size.height)];
}

//边框+遮罩的弹窗
- (IBAction)action6:(id)sender {
    LFPopupMenu *menu = [[LFPopupMenu alloc] init];
    menu.needBorder = YES;
    menu.lineColor = [UIColor redColor];
    menu.maskView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
    [menu configWithItems:self.items
                          action:^(NSInteger index) {
                              NSLog(@"点击了第%zi个",index);
                          }];
    
    [menu showArrowInView:sender];
}

//仅图片
- (IBAction)action7:(id)sender {
    LFPopupMenuItem *item1 = [LFPopupMenuItem createWithTitle:nil image:[UIImage imageNamed:@"icon_menu_record_normal"]];
    LFPopupMenuItem *item2 = [LFPopupMenuItem createWithTitle:nil image:[UIImage imageNamed:@"icon_menu_shoot_normal"]];
    LFPopupMenuItem *item3 = [LFPopupMenuItem createWithTitle:nil image:[UIImage imageNamed:@"icon_menu_album_normal"]];
    NSArray *items = @[item1, item2, item3];
    LFPopupMenu *menu = [[LFPopupMenu alloc] init];
    menu.maskView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
    [menu configWithItems:items
                          action:^(NSInteger index) {
                              NSLog(@"点击了第%zi个",index);
                          }];
    
    [menu showArrowInView:sender];
}

//仅文字
- (IBAction)action8:(id)sender {
    LFPopupMenuItem *item1 = [LFPopupMenuItem createWithTitle:@"小视频" image:nil];
    LFPopupMenuItem *item2 = [LFPopupMenuItem createWithTitle:@"拍照" image:nil];
    LFPopupMenuItem *item3 = [LFPopupMenuItem createWithTitle:@"相册" image:nil];
    NSArray *items = @[item1, item2, item3];
    LFPopupMenu *menu = [[LFPopupMenu alloc] init];
    menu.maskView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
    [menu configWithItems:items
                          action:^(NSInteger index) {
                              NSLog(@"点击了第%zi个",index);
                          }];
    
    [menu showArrowInView:sender];
}

//黑底白字
- (IBAction)action9:(id)sender {
    LFPopupMenu *menu = [[LFPopupMenu alloc] init];
    menu.fillColor = [UIColor blackColor];
    menu.textColor = [UIColor whiteColor];
    menu.lineColor = [UIColor lightGrayColor];
    [menu configWithItems:self.items
                          action:^(NSInteger index) {
                              NSLog(@"点击了第%zi个",index);
                          }];
    [menu showArrowInView:sender];
}
- (IBAction)action10:(id)sender {
    UIView *customView = [self getCustomView];
    LFPopupMenu *menu = [[LFPopupMenu alloc] init];
    menu.fillColor = [[UIColor blackColor] colorWithAlphaComponent:0.7];
    [menu configWithCustomView:customView];
    [menu showArrowInView:sender];
    
}

- (UIView *)getCustomView {
    UIView *customView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 150)];
    customView.backgroundColor = [UIColor clearColor];
    
    UILabel *lb = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 90, 30)];
    lb.text = @"Label";
    [customView addSubview:lb];
    
    UIButton *bt = [UIButton buttonWithType:UIButtonTypeSystem];
    bt.frame = CGRectMake(110, 0, 90, 30);
    [bt setTitle:@"button" forState:UIControlStateNormal];
    [customView addSubview:bt];
    
    UISlider *sd = [[UISlider alloc] initWithFrame:CGRectMake(40, 60, 120, 30)];
    [customView addSubview:sd];
    
    return customView;
}

@end
