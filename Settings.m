//
//  Settings.m
//  objective-c-ios
//
//  Created by menangen on 03.02.15.
//  Copyright (c) 2015 menangen. All rights reserved.
//

#import "Settings.h"

@implementation Settings

+(NSMutableDictionary*)getSettings
{
    NSMutableDictionary *dict = [[NSMutableDictionary alloc]initWithCapacity:2];
    
    //NSLog(@"The height is %f", [UIScreen mainScreen].bounds.size.height);
    
    [dict setObject:[NSNumber numberWithDouble:[UIScreen mainScreen].bounds.size.height] forKey:@"height"];
    [dict setObject:[NSNumber numberWithDouble:[UIScreen mainScreen].bounds.size.width] forKey:@"width"];
    
    return dict;
}

@end
