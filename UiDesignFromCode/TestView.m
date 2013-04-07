//
//  TestView.m
//  UiDesignFromCode
//
//  Created by Peter Pan on 4/7/13.
//  Copyright (c) 2013 Peter Pan. All rights reserved.
//

#import "TestView.h"

@implementation TestView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)dealloc
{
    NSLog(@"%s tag %d", __PRETTY_FUNCTION__, self.tag);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
