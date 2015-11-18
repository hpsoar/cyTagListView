//
//  cyTagListItem.h
//  cyTagListView
//
//  Created by HuangPeng on 11/18/15.
//  Copyright © 2015 SpringRain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface cyTagListItem : NSObject

// create tag view
- (UIView *)tagView;

// draw tag
- (CGSize)tagSize;
- (void)drawTagInContext:(CGContextRef)context;

@end

@interface cyTagListLayout : NSObject

- (void)reset;
- (CGPoint)positionForTagAtIndex:(NSInteger)index;

@end