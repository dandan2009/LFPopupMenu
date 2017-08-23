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
                               NSLog(@"点击了第%li个",index);
                           }];
    
    [menu showArrowInView:sender];
}

//自定义背景图的弹窗
- (IBAction)action2:(UIButton *)sender {
    LFPopupMenu *menu = [[LFPopupMenu alloc] init];
    menu.layer.shadowColor = [UIColor blackColor].CGColor;
    menu.layer.shadowOffset = CGSizeMake(2, 2);
    menu.layer.shadowOpacity = 0.5;
    menu.imgBG = [[UIImage imageNamed:@"img_menu_frame_bg"] resizableImageWithCapInsets:UIEdgeInsetsMake(20, 20, 20, 20) resizingMode:UIImageResizingModeStretch];;
    [menu configWithItems:self.items
                          action:^(NSInteger index) {
                              NSLog(@"点击了第%li个",index);
                          }];
    
    [menu showInPoint:CGPointMake(CGRectGetMidX(sender.frame) - (menu.frame.size.width - 12), CGRectGetMaxY(sender.frame))];
}

//加边框的弹窗
- (IBAction)action3:(id)sender {
    LFPopupMenu *menu = [[LFPopupMenu alloc] init];
    menu.needBorder = YES;
    [menu configWithItems:self.items
                          action:^(NSInteger index) {
                              NSLog(@"点击了第%li个",index);
                          }];
    [menu showArrowInView:sender];
}

//加遮罩的弹窗
- (IBAction)action4:(id)sender {
    LFPopupMenu *menu = [[LFPopupMenu alloc] init];
    menu.maskView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
    [menu configWithItems:self.items
                          action:^(NSInteger index) {
                              NSLog(@"点击了第%li个",index);
                          }];
    
    [menu showArrowInView:sender];
}

//阴影+边框的弹窗
- (IBAction)action5:(id)sender {
    LFPopupMenu *menu = [[LFPopupMenu alloc] init];
    menu.layer.shadowColor = [UIColor blackColor].CGColor;
    menu.layer.shadowOffset = CGSizeMake(2, 2);
    menu.layer.shadowOpacity = 0.5;
    menu.needBorder = YES;
    [menu configWithItems:self.items
                          action:^(NSInteger index) {
                              NSLog(@"点击了第%li个",index);
                          }];
    [menu showArrowInView:sender];
}

//边框+遮罩的弹窗
- (IBAction)action6:(id)sender {
    LFPopupMenu *menu = [[LFPopupMenu alloc] init];
    menu.needBorder = YES;
    menu.lineColor = [UIColor redColor];
    menu.maskView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
    [menu configWithItems:self.items
                          action:^(NSInteger index) {
                              NSLog(@"点击了第%li个",index);
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
                              NSLog(@"点击了第%li个",index);
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
                              NSLog(@"点击了第%li个",index);
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
                              NSLog(@"点击了第%li个",index);
                          }];
    [menu showArrowInView:sender];
}

@end
