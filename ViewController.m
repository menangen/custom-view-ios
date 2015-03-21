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
    
    MyCustomView *view = [MyCustomView new];
    
    NSURL *url = [[NSURL alloc] initWithString:@"http://127.0.0.1:5000/json"];
    NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:url];
    [urlRequest setValue:@"application/json" forHTTPHeaderField:@"accept"];
    [urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [urlRequest setTimeoutInterval: 30.0];
    NSURLResponse * response = nil;
    NSError * error = nil;
    NSData * returnData = [NSURLConnection sendSynchronousRequest:urlRequest
                                                returningResponse:&response
                                                            error:&error];
    if (error == nil)
    {
        // Parse data here
        NSLog(@"Retrived JSON data");
        NSMutableDictionary *mapArray = [NSJSONSerialization JSONObjectWithData:returnData options:NSJSONReadingMutableContainers error:&error];
        if (error)
            NSLog(@"JSONObjectWithData error: %@", error);
        else
            //NSLog(@"%@", [map objectForKey:@"map"][0]);
            [view setMap:mapArray];
        
        self.view = view;
        
        self.tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTaps:)];
        [self.view addGestureRecognizer:self.tapGesture];
    }
    


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
