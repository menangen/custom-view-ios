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

- (void) handleTaps:(UITapGestureRecognizer*)paramSender {
    [self.view setNeedsDisplay];
}

- (void)viewDidLoad {
    
    UIView *view = [MyCustomView new];
    self.view = view;
    
    self.tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTaps:)];
    [self.view addGestureRecognizer:self.tapGesture];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
