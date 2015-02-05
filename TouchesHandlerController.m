//
//  TouchesHandler.m
//  objective-c-ios
//
//  Created by menangen on 05.02.15.
//  Copyright (c) 2015 menangen. All rights reserved.
//

#import "TouchesHandlerController.h"


@interface TouchController ()

@end

@implementation TouchController
// First
    - (void) handleTaps:(UITapGestureRecognizer*)paramSender {
        [self.view removeFromSuperview];//Clear state
        [self.view setNeedsDisplay];
    }
// Second path
    - (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
    {
        NSLog(@"touchesBegan");
        
        NSSet *allTouches = [event allTouches];
        NSLog(@"Number of fingers: %i", allTouches.count);
        
        UITouch *touch = [[allTouches allObjects] objectAtIndex:0];
        NSLog(@"Number of taps: %i", touch.tapCount);
        
        CGPoint touchLocation = [touch locationInView:self.view];
        NSLog(@"x=%f y=%f", touchLocation.x, touchLocation.y);
        NSLog(@"%@", touch.view);
    }

@end
