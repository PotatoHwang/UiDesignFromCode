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


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 200, 200)];
    view1.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view1];
    
    UIView *view1_1 = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 200, 200)];
    view1_1.backgroundColor = [UIColor grayColor];
    [view1 addSubview:view1_1];
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 200, 200)];
    view2.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view2];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
