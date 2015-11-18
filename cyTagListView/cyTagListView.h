//
//  cyTagListView.h
//  cyTagListView
//
//  Created by HuangPeng on 11/18/15.
//  Copyright © 2015 SpringRain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cyTagListItem.h"

@interface cyTagListView : UIView

- (instancetype)initWithFrame:(CGRect)frame layout:(cyTagListLayout *)layout;

- (void)updateWithTags:(NSArray *)tags;

@property (nonatomic, readonly) NSArray *tagItems;

@property (nonatomic, readonly) cyTagListLayout *layout;

@end
