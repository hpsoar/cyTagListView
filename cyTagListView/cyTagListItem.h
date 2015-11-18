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

@interface cySimpleTagListItem : cyTagListItem

+ (NSArray *)itemsWithTags:(NSArray *)tags;

@property (nonatomic) NSString *tag;

@end

@interface cyTagListLayout : NSObject

- (void)reset;
- (CGRect)frameForTagAtIndex:(NSInteger)index size:(CGSize)size;

@property (nonatomic, readonly) CGSize finalSize;

@end

/**
 *  
 */

@interface cySimpleTagListLayout : cyTagListLayout

@property (nonatomic) CGFloat maxWidth;
@property (nonatomic) CGFloat maxHeight;

@property (nonatomic) UIEdgeInsets insets;

@property (nonatomic) CGFloat xSpace;
@property (nonatomic) CGFloat ySapce;

@end