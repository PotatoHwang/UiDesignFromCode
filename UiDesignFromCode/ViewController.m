//
//  ViewController.m
//  UiDesignFromCode
//
//  Created by Peter Pan on 4/4/13.
//  Copyright (c) 2013 Peter Pan. All rights reserved.
//

#import "ViewController.h"
#import "TestView.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
}

-(void)removeView1:(UIView*)targetView
{
    [targetView removeFromSuperview];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    TestView *view1 = [[TestView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    view1.tag = 1;
    view1.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view1];
    
    TestView *view2 = [[TestView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    view2.tag = 2;
    view2.backgroundColor = [UIColor blueColor];
    [view1 addSubview:view2];
    
    [self performSelector:@selector(removeView1:) withObject:view1 afterDelay:10];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
