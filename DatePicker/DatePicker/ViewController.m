//
//  ViewController.m
//  DatePicker
//
//  Created by jsmnzn on 2018/10/30.
//  Copyright © 2018年 test. All rights reserved.
//

#import "ViewController.h"
#import "DatePicker.h"

#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    NSArray * titleArr = @[@"2018:10:30",@"2018:10:30:23",@"2018:10:30:23:59",@"23:59",@"30:23:59",@"10:30:23:59"];
    
    for (int i = 0; i<titleArr.count; i++) {
        
        UIButton * dateButton = [UIButton buttonWithType:UIButtonTypeSystem];
        dateButton.frame = CGRectMake(50, 100+50*i, WIDTH-100, 40);
        dateButton.layer.borderWidth = 1;
        dateButton.layer.borderColor = [UIColor blackColor].CGColor;
        [dateButton setTitle:titleArr[i] forState:UIControlStateNormal];
        dateButton.tag = 1003+i;
        [dateButton addTarget:self action:@selector(dateButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:dateButton];

    }
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)dateButtonClick:(UIButton *)button{
    
    
    [[DatePicker shareManager]showWithType:button.tag-1000 title:nil time:button.titleLabel.text backTime:^(NSString * _Nonnull backTimeStr) {
        [button setTitle:backTimeStr forState:UIControlStateNormal];
    }];
    
    
}


@end
