//
//  ThinkfuliOSViewController.m
//  ForLoops
//
//  Created by Debra Weissman on 7/11/14.
//  Copyright (c) 2014 Debra Weissman. All rights reserved.
//

#import "ThinkfuliOSViewController.h"

@interface ThinkfuliOSViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelOne;
@property (weak, nonatomic) IBOutlet UILabel *labelTwo;
@property (weak, nonatomic) IBOutlet UILabel *labelThree;
@property (weak, nonatomic) IBOutlet UILabel *labelFour;
@property (weak, nonatomic) IBOutlet UISwitch *labelSwitch;
@property (strong, nonatomic) NSArray *labelArray;

@end

@implementation ThinkfuliOSViewController
- (IBAction)labelSwitchValueDidChange:(id)sender {
    
    for (UILabel *label in self.labelArray){
        if (self.labelSwitch.on == YES) {
            label.hidden = YES;
        }
        else {
            label.hidden = NO;
        }
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.labelArray = @[self.labelOne, self.labelTwo, self.labelThree, self.labelFour];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
