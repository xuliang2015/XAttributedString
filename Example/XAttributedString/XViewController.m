//
//  XViewController.m
//  XAttributedString
//
//  Created by xuliang on 04/16/2018.
//  Copyright (c) 2018 xuliang. All rights reserved.
//

#import "XViewController.h"
#import "XAttributedString-umbrella.h"

@interface XViewController ()

@property (weak, nonatomic) IBOutlet UILabel *atrLab;

@end

@implementation XViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *text = @"测试属性字符";
    NSMutableAttributedString *mAtrStr = [[NSMutableAttributedString alloc] initWithString:text];
    [mAtrStr x_addAttributeTextColor:[UIColor redColor] range:NSMakeRange(2, 2)];
    [mAtrStr x_addAttributeFont:[UIFont systemFontOfSize:12] range:NSMakeRange(0, 2)];
    [mAtrStr x_addAttributeUnderlineStyle:NSUnderlineStyleSingle color:[UIColor blackColor]];
    [self.atrLab setAttributedText:mAtrStr];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end