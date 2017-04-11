//
//  ViewController.m
//  rutime适配字体大小
//
//  Created by dp on 17/4/11.
//  Copyright © 2017年 dp. All rights reserved.
//

#import "ViewController.h"
#import "UIFont+DpRunTime.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel *la=[[UILabel alloc]initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 100)];
    la.textAlignment=NSTextAlignmentLeft;
    la.textColor=[UIColor whiteColor];
    la.backgroundColor=[UIColor grayColor];
    la.font=[UIFont systemFontOfSize:16];
    la.text=@"字体大小适配字体大小适配字体大小适配字体大小适配";
    [self.view addSubview:la];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
