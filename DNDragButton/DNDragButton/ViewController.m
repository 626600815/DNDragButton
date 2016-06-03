//
//  ViewController.m
//  DNDragButton
//
//  Created by mainone on 16/6/3.
//  Copyright © 2016年 wjn. All rights reserved.
//

#import "ViewController.h"
#import "DNDragButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    DNDragButton *dragButton = [[DNDragButton alloc] initInKeyWindowWithFrame:CGRectMake(0, 100, 100, 100)];
    dragButton.backgroundColor = [UIColor redColor];
    [self.view addSubview:dragButton];
    dragButton.hasNav = YES;
    [dragButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    
}

- (void)btnClick:(UIButton *)sender {
    NSLog(@"你点击了我,就要对我负责");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
