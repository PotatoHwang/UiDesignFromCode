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

    
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 200, 200)];
    blueView.backgroundColor = [UIColor colorWithRed:30/255.0 green:144/255.0 blue:1 alpha:0.2];
    [self.view addSubview:blueView];
    
    UIView *blackView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    blackView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:blackView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
