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
    _tagItems = tags;
    
    [self.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    
    for (cyTagListItem *item in self.tagItems) {
        UIView *v = [item tagView];
    }
}

@end
