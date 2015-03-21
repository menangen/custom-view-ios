//
//  MyCustomView.m
//  objective-c-ios
//
//  Created by menangen on 02.02.15.
//  Copyright (c) 2015 menangen. All rights reserved.
//

#import "MyCustomView.h"
#import "Settings.h"
#import "PixelData.h"

@implementation MyCustomView
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
-(void)drawInContext:(CGContextRef)context
{    

    NSMutableDictionary *settings;
    settings = [Settings getSettings];
    
    NSMutableDictionary *map = [self map];
    NSMutableArray *noise = [map objectForKey:@"map"];
    NSInteger noise_height = [noise count];
    NSInteger noise_width = [noise[0] count];
    
    

    unsigned int square_side = 15;
    //unsigned int down_bar_height = 30;
    CGPoint topLeftPoint = CGPointMake(0, 0);
    
    
    for (unsigned char height_count = 0; height_count < noise_height; height_count++) {
        for (unsigned char width_count = 0; width_count < noise_width; width_count++) {
            
            
            //NSLog(@"%@", noise[height_count][width_count]);
            NSNumber *pixel_value = (NSNumber *)noise[height_count][width_count];
            //NSLog(@"Color now is %@", pixel_value);
            
            PixelData *pixelData = [PixelData new];
            float color = [pixelData getColor:pixel_value];
            
            CGContextSetRGBFillColor(
            context,
            color,
            color,
            color,
            1.0);


            CGContextAddRect(
            context,
            CGRectMake(
                topLeftPoint.x + (CGFloat)width_count * square_side,
                topLeftPoint.y + (CGFloat)height_count * square_side,
                square_side,
                square_side)
            );
            
            CGContextFillPath(context);
            
        
        }
    }
    
//    NSLog(@"height is %@", [settings objectForKey:@"height"]);
//    NSLog(@"width is %@", [settings objectForKey:@"width"]);
    
//    NSInteger squares_updown = ([[settings objectForKey:@"height"] integerValue] - down_bar_height) / square_side;

    
//    for (unsigned char width_count = 0; width_count < 22; width_count++) {
//        
//        for (unsigned char height_count = 0; height_count < squares_updown; height_count++) {
//            float random_gray = (float)get_random(0, 70) / 200;
//            
//            CGContextSetRGBFillColor(
//            context,
//            0.3 + random_gray + (get_random(0, 50) == 0 ? 0.4 : 0.0),
//            0.3 + random_gray + (get_random(0, 50) == 0 ? 0.4 : 0.0),
//            0.3 + random_gray + (get_random(0, 50) == 0 ? 0.4 : 0.0),
//            1.0);
//            
//            
//            CGContextAddRect(
//            context,
//            CGRectMake(
//               topLeftPoint.x + (CGFloat)width_count * square_side,
//               topLeftPoint.y + (CGFloat)height_count * square_side,
//               square_side,
//               square_side)
//            );
//            
//            CGContextFillPath(context);
//        
//        }
//        
//        
//    }
    
}

- (void)drawRect:(CGRect)rect {
    // Drawing code
    [self drawInContext:UIGraphicsGetCurrentContext()];
}

@end
