//
//  ThinkfuliOSViewController.m
//  OutletExample
//
//  Created by Debra Weissman on 7/11/14.
//  Copyright (c) 2014 Debra Weissman. All rights reserved.
//

#import "ThinkfuliOSViewController.h"

@interface ThinkfuliOSViewController ()
@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation ThinkfuliOSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.textLabel.text = @"Hello World";
    UIColor *color = [UIColor greenColor];
    [self.textLabel setTextColor:color];
    UIColor *shadowColor = [UIColor blueColor];
    self.textLabel.shadowColor = shadowColor;
    CGSize shadowOffset = CGSizeMake(.5, .5);
    self.textLabel.shadowOffset = shadowOffset;
    [self doSomething];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)doSomething {
	NSInteger a = 1;
	NSInteger b = 2;
	NSInteger c = a + b;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
