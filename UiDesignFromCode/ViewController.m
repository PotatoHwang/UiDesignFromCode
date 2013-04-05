//
//  ViewController.m
//  UiDesignFromCode
//
//  Created by Peter Pan on 4/4/13.
//  Copyright (c) 2013 Peter Pan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    NSLog(@"view %@", self.view);
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    CGRect frame = CGRectMake(10, 10, 200, 200);
    UIView *blueView = [[UIView alloc] initWithFrame:frame];
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueView];
    
    frame = CGRectMake(10, 10, 310, 100);
    UIView *yellowView = [[UIView alloc] initWithFrame:frame];
    yellowView.backgroundColor = [UIColor yellowColor];
    [blueView addSubview:yellowView];

    frame = CGRectMake(-10, 10, 100, 100);
    UIView *greenView = [[UIView alloc] initWithFrame:frame];
    greenView.backgroundColor = [UIColor greenColor];
    [yellowView addSubview:greenView];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
