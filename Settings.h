//
//  Settings.h
//  objective-c-ios
//
//  Created by menangen on 03.02.15.
//  Copyright (c) 2015 menangen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

unsigned int get_random(int min, int max);

@interface Settings : NSObject
+ (NSMutableDictionary*)getSettings;
@end