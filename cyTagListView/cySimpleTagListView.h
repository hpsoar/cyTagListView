//
//  cySimpleTagListView.h
//  cyTagListView
//
//  Created by HuangPeng on 11/18/15.
//  Copyright © 2015 SpringRain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cyTagListItem.h"

/**
 *  dataSource: @[ cyTagListItem ]
 *
 *
 */

@interface cySimpleTagListView : UIView

- (void)updateWithTags:(NSArray *)tags;

@property (nonatomic, readonly) NSArray *tagItems;

@end
