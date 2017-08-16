//
//  ViewController.m
//  YPSelect
//
//  Created by 喻沛 on 2017/8/16.
//  Copyright © 2017年 yupeidong. All rights reserved.
//

#import "ViewController.h"
#import "YPSelect.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    YPSelect * yp = [[YPSelect alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:yp];
    
    yp.bloock = ^(BOOL select) {
      
        if (select == YES)
            NSLog(@"选中了啊");
        else
            NSLog(@"没有被选中啊");
        
        
    };
    
    // Do any additional setup after loading the view, typically from a nib.
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
