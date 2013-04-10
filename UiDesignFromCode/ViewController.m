//
//  ViewController.m
//  UiDesignFromCode
//
//  Created by Peter Pan on 4/4/13.
//  Copyright (c) 2013 Peter Pan. All rights reserved.
//

#import "ViewController.h"
#import "TestView.h"

@interface ViewController () <UITextFieldDelegate>

@end

@implementation ViewController 

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
}

-(void)removeKeyboard:(id)sender
{
    [sender resignFirstResponder];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 307.2, 409.6)];
    imageView.image = [UIImage imageNamed:@"painting.jpg"];
    [self.view addSubview:imageView];
    imageView.center = CGPointMake(160, ([UIScreen mainScreen].bounds.size.height-20)/2);
    NSLog(@"[UIScreen mainScreen].bounds %@", NSStringFromCGRect([UIScreen mainScreen].bounds));
    
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(160-100,
                            10, 200, 30)];
    [self.view addSubview:textField];
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.delegate = self;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return (toInterfaceOrientation == UIInterfaceOrientationPortrait);
}


#pragma makr - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

@end
