//
//  PixelData.m
//  objective-c-ios
//
//  Created by menangen on 21.03.15.
//  Copyright (c) 2015 menangen. All rights reserved.
//

#import "PixelData.h"

@implementation PixelData

    -(UIColor *)getColor: (NSNumber*) pixel {
        NSMutableArray *pixels;
        pixels[0] = @"#59410e";
        pixels[1] = @"#44371c";
        pixels[2] = @"#393428";
        pixels[3] = @"#3c3b3a";
        pixels[4] = @"#3c3b3a";
        pixels[5] = @"#2c2b2a";
        pixels[6] = @"#202022";
        pixels[7] = @"#1D1D1F";
        pixels[8] = @"#14141A";
        
        //float grey_color;
        NSInteger pixel_id = [pixel integerValue];
        
        unsigned rgbValue = 0;
        NSScanner *scanner = [NSScanner scannerWithString:pixels[pixel_id]];
        [scanner setScanLocation:1]; // bypass '#' character
        [scanner scanHexInt:&rgbValue];
        return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
        
//        switch (pixel_id) {
//            case 0:
//                grey_color = 0.2;
//                break;
//            case 1:
//                grey_color = 0.25;
//                break;
//            case 2:
//                grey_color = 0.3;
//                break;
//            case 3:
//                grey_color = 0.35;
//                break;
//            case 4:
//                grey_color = 0.4;
//                break;
//            case 5:
//                grey_color = 0.45;
//                break;
//            case 6:
//                grey_color = 0.5;
//                break;
//            case 7:
//                grey_color = 0.55;
//                break;
//            case 8:
//                grey_color = 0.6;
//                break;
//            case 9:
//                grey_color = 0.65;
//                break;
//            case 10:
//                grey_color = 1.0;
//                break;
//                
//            default:
//                grey_color = 1.0;
//                break;
//        }
//        
//        grey_color = 1.0 - grey_color;
//        return grey_color;
        
    }

@end
