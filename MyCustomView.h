//
//  MyCustomView.h
//  objective-c-ios
//
//  Created by menangen on 02.02.15.
//  Copyright (c) 2015 menangen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCustomView : UIView
    -(void)drawInContext:(CGContextRef)context;

    @property NSMutableDictionary *map;
@end