//
//  ReactView.m
//  ReactNativeIntegrating
//
//  Created by yangchenghu on 15/12/26.
//  Copyright © 2015年 yangchenghu. All rights reserved.
//

#import "ReactView.h"

#import "RCTRootView.h"

@implementation ReactView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    
        NSString * strUrl = @"http://localhost:8081/index.ios.bundle?platform=ios&dev=true";
        
        NSURL * jsCodeLocation = [NSURL URLWithString:strUrl];
        
        RCTRootView * rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                            moduleName:@"SimpleApp"
                                                     initialProperties:nil
                                                         launchOptions:nil];

        [self addSubview:rootView];

        rootView.frame = self.bounds;
        
    }
    return self;
}


@end
