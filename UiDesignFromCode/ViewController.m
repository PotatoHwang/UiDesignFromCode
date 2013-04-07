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
    
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    NSLog(@"self.view %p", self.view);
    
    UIImage *image = [UIImage imageNamed:@"painting.jpg"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.frame = CGRectMake(10, 10, 307.2, 409.6);
    [self.view addSubview:imageView];
    NSLog(@"imageView %p", imageView);
    
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(110, 80, 100, 100)];
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueView];
    NSLog(@"blueView %p", blueView);

    NSLog(@"imageView.superview %p", imageView.superview);

    [self.view bringSubviewToFront:imageView];
    
    for(UIView *subview in self.view.subviews)
    {
        NSLog(@"subview %p", subview);

    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
