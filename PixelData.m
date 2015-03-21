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
//        NSMutableArray *pixels;

        NSMutableArray *pixels = [[NSMutableArray alloc] initWithCapacity:100];
        
        [pixels addObject:@"#59410e"];//0
        [pixels addObject:@"#44371c"];//1
        [pixels addObject:@"#393428"];//2
        [pixels addObject:@"#3c3b3a"];//3
        [pixels addObject:@"#3c3b3a"];//4
        [pixels addObject:@"#2c2b2a"];//5
        [pixels addObject:@"#202022"];//6
        [pixels addObject:@"#1D1D1F"];//7
        [pixels addObject:@"#14141A"];//8
        [pixels addObject:@"#14141A"];//9
        
        for (int i = 0; i < 30; i++) {
            [pixels addObject:[NSNull null]];
        }
        
        // gold
        [pixels insertObject:@"#AA7700" atIndex:10];
        [pixels insertObject:@"#FFFF00" atIndex:11];
        // gemstones
        [pixels insertObject:@"#8fddfa" atIndex:20];//# Diamond
        [pixels insertObject:@"#22AA33" atIndex:21];//# Emerald
        [pixels insertObject:@"#222299" atIndex:22];//# Saphire
        [pixels insertObject:@"#ae1a32" atIndex:23];//# Ruby
        [pixels insertObject:@"#3f6167" atIndex:24];//# Aquamarine

        
        //float grey_color;
        NSUInteger pixel_id = [pixel integerValue];
        
        if (pixel_id > 24) {
            pixel_id = 10;
        }
        
        unsigned rgbValue = 0;
        NSString *hexString = [pixels objectAtIndex:pixel_id];
        if (hexString == nil) hexString = @"#FFFFFF";
        NSScanner *scanner = [NSScanner scannerWithString:hexString];
        [scanner setScanLocation:1]; // bypass '#' character
        [scanner scanHexInt:&rgbValue];
        return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
        
    }

@end
