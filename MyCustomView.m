//
//  MyCustomView.m
//  objective-c-ios
//
//  Created by menangen on 02.02.15.
//  Copyright (c) 2015 menangen. All rights reserved.
//

#import "MyCustomView.h"
#import "Settings.h"

@implementation MyCustomView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
-(void)drawInContext:(CGContextRef)context
{    
    //self.backgroundColor = [UIColor blueColor];
    CGFloat square_side = 20;
    
    
    for (uint width_count = 0; width_count < 20; width_count++) {
        //if (width_count == 0) {NSLog(@"%i", get_random(0, 10));}
        
        for (uint height_count = 0; height_count < 25; height_count++) {
            CGContextSetRGBFillColor(
            context,
            0.3 + (float)get_random(0, 70) / 200 + (get_random(0, 10) == 0 ? 0.1 : 0.0),
            0.3 + (float)get_random(0, 70) / 200,
            0.3 + (float)get_random(0, 120) / 200,
            1.0);
            
            
            CGContextAddRect(
            context,
            CGRectMake(
               0.0 + (CGFloat)width_count * square_side,
               0.0 + (CGFloat)height_count * square_side,
               square_side,
               square_side)
            );
            
            CGContextFillPath(context);
        
        }
        
        
    }
    
    
    //            CGContextSetRGBFillColor(
    //                                     context,
    //                                     0.1 + (CGFloat)width_count * 0.09 - (CGFloat)height_count * 0.04 - (width_count > 10 ? 0.09 : 0.0),
    //                                     (0.6 - (float)get_random(0, 10) / 200) - (CGFloat)width_count * 0.08 +
    //                                     (CGFloat)height_count * (height_count > 10 ? 0.01 : -0.01),
    //                                     (0.8 - (float)get_random(0, 10) / 200) - (CGFloat)height_count * 0.04 + (CGFloat)width_count * 0.01, 1.0);
    

//    NSMutableDictionary *dict;
//    dict = [Settings getSettings];
//    NSLog(@"height is %@", [dict objectForKey:@"height"]);
//    NSLog(@"width is %@", [dict objectForKey:@"width"]);

//    square_side = 1;
//    CGContextSetRGBFillColor(context, 0.3, 0.9, 0.8, 1.0);
//    CGContextAddRect(context, CGRectMake(0.0, 479.0, square_side, square_side));
//    CGContextFillPath(context);
    
}

- (void)drawRect:(CGRect)rect {
    // Drawing code
    [self drawInContext:UIGraphicsGetCurrentContext()];
}


@end
