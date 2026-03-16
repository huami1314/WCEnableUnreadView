#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

%hook MainSessionMgr
- (_Bool)isAggregationEnable {
    return YES;
}
%end

%ctor {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 0.2 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        %init;
    });
}