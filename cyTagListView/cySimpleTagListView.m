//
//  cySimpleTagListView.m
//  cyTagListView
//
//  Created by HuangPeng on 11/18/15.
//  Copyright © 2015 SpringRain. All rights reserved.
//

#import "cySimpleTagListView.h"

@implementation cySimpleTagListView

- (void)updateWithTags:(NSArray *)tags {
    [super updateWithTags:tags];
    
    [self.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    [self.layout reset];
    
    for (NSInteger i = 0; i < self.tagItems.count; ++i) {
        cyTagListItem *item = self.tagItems[i];
        UIView *v = [item tagView];
        v.frame = [self.layout frameForTagAtIndex:i size:v.frame.size];
        [self addSubview:v];
    }

    CGRect frame = self.frame;
    frame.size = self.layout.finalSize;
    self.frame = frame;
}

@end
