//
//  cyTagListView.m
//  cyTagListView
//
//  Created by HuangPeng on 11/18/15.
//  Copyright © 2015 SpringRain. All rights reserved.
//

#import "cyTagListView.h"

@implementation cyTagListView

- (instancetype)initWithFrame:(CGRect)frame layout:(cyTagListLayout *)layout {
    self = [super initWithFrame:frame];
    if (self) {
        _layout = layout;
    }
    return self;
}

- (void)updateWithTags:(NSArray *)tags {
    _tagItems = tags;
}

@end
