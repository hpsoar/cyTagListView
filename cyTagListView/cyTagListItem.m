//
//  cyTagListItem.m
//  cyTagListView
//
//  Created by HuangPeng on 11/18/15.
//  Copyright © 2015 SpringRain. All rights reserved.
//

#import "cyTagListItem.h"

@implementation cyTagListItem

- (UIView *)tagView {
    [NSException raise:@"cyTagListViewException" format:@"`%@` did not implement `tagView`", [self class]];
    return nil;
}

- (CGSize)tagSize {
    return CGSizeZero;
}

- (void)drawTagInContext:(CGContextRef)context {
    
}

@end

@implementation cySimpleTagListItem

+ (NSArray *)itemsWithTags:(NSArray *)tags {
    NSMutableArray *result = [[NSMutableArray alloc] initWithCapacity:tags.count];
    for (NSString *tag in tags) {
        cySimpleTagListItem *item = [cySimpleTagListItem new];
        item.tag = tag;
        [result addObject:item];
    }
    return result;
}

- (UIView *)tagView {
    UILabel *label = [UILabel new];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = self.tag;
    label.textColor = [UIColor redColor];
    [label sizeToFit];
    
    label.frame = UIEdgeInsetsInsetRect(label.frame, UIEdgeInsetsMake(-10, -10, -10, -10));
    label.layer.cornerRadius = CGRectGetHeight(label.frame) / 2;
    label.layer.borderColor = [UIColor blackColor].CGColor;
    label.layer.borderWidth = 0.5;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap)];
    label.userInteractionEnabled = YES;
    [label addGestureRecognizer:tap];
    
    return label;
}

- (void)tap {
    
}

@end

@implementation cyTagListLayout

- (void)reset {
    
}

- (CGRect)frameForTagAtIndex:(NSInteger)index size:(CGSize)size {
    return CGRectZero;
}

@end

@implementation cySimpleTagListLayout {
    CGFloat _currentX;
    CGFloat _currentY;
    CGFloat _currentBottom;
}

- (void)reset {
    _currentX = self.insets.left;
    _currentY = self.insets.top;
    _currentBottom = 0;
}

- (CGRect)frameForTagAtIndex:(NSInteger)index size:(CGSize)size {
    
    // 有高度限制，tag整个超出高度限制，返回CGRectZero
    if (self.maxHeight > 0 && _currentY >= self.maxHeight) return CGRectZero;
    
    CGRect frame = CGRectMake(_currentX, _currentY, size.width, size.height);
    
    // 有宽度限制，超出宽度限制，不在行首
    if (self.maxWidth > 0 && CGRectGetMaxX(frame) > self.maxWidth && ![self isAtBeginingOfRow]) {
        // flow到下一行
        frame.origin.y = _currentBottom + self.ySapce;
        frame.origin.x = self.insets.left;
    }
    
    // 下一个tag的位置
    _currentX = CGRectGetMaxX(frame) + self.xSpace; //下一个位置
    _currentY = CGRectGetMinY(frame);
    
    // layout当前的高度
    _currentBottom = MAX(_currentBottom, CGRectGetMaxY(frame));
    
    return frame;
}

- (BOOL)isAtBeginingOfRow {
    return _currentX == self.insets.left;
}

- (BOOL)isAtFirstRow {
    return _currentY == self.insets.top;
}

- (CGSize)finalSize {
    return CGSizeMake(self.maxWidth, _currentBottom + self.insets.bottom);
}

@end