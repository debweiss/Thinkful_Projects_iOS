//
//  ThinkfuliOSViewController.m
//  ToggleLabel
//
//  Created by Debra Weissman on 7/11/14.
//  Copyright (c) 2014 Debra Weissman. All rights reserved.
//

#import "ThinkfuliOSViewController.h"

@interface ThinkfuliOSViewController ()
@property (weak, nonatomic) IBOutlet UILabel *toggleLabel;
@property (weak, nonatomic) IBOutlet UISlider *toggleSlider;

@end

@implementation ThinkfuliOSViewController
- (IBAction)sliderDidChangeValue:(id)sender {
    CGFloat toggleValue = self.toggleSlider.value;
    self.toggleLabel.text = [NSString stringWithFormat: @"%.2f", toggleValue];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
