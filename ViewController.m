//
//  ViewController.m
//  objective-c-ios
//
//  Created by menangen on 02.02.15.
//  Copyright (c) 2015 menangen. All rights reserved.
//

#import "ViewController.h"
#import "MyCustomView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    UIView *view = [MyCustomView new];
    
    self.view = view;
    
    
    //[super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
