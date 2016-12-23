//
//  ViewController.m
//  NibImageIOS7
//
//  Created by BB9z on 14/11/2016.
//  Copyright © 2016 BB9z. All rights reserved.
//

#import "ViewController.h"
#import "TestView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    TestView *v = [[NSBundle mainBundle] loadNibNamed:@"TestView" owner:nil options:nil].firstObject;
    [self.view addSubview:v];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
