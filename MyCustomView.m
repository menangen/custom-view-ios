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
    
    
    for (uint i = 0; i < 20; i++) {
        
        CGContextSetRGBFillColor(context, 0.1 + (CGFloat)i*0.09, 0.6 - (CGFloat)i*0.08, 0.8, 1.0);
        CGContextAddRect(context, CGRectMake(0.0 + (CGFloat)i * square_side, 0.0, square_side, square_side));
        CGContextFillPath(context);
        
    }

    NSMutableDictionary *dict;
    dict = [Settings getSettings];
    NSLog(@"height is %@", [dict objectForKey:@"height"]);
    NSLog(@"width is %@", [dict objectForKey:@"width"]);

    square_side = 1;
    CGContextSetRGBFillColor(context, 0.3, 0.9, 0.8, 1.0);
    CGContextAddRect(context, CGRectMake(0.0, 479.0, square_side, square_side));
    CGContextFillPath(context);
    
}

- (void)drawRect:(CGRect)rect {
    // Drawing code
    [self drawInContext:UIGraphicsGetCurrentContext()];
}


@end
