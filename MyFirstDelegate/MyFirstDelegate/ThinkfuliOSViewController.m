//
//  ThinkfuliOSViewController.m
//  MyFirstDelegate
//
//  Created by Debra Weissman on 7/12/14.
//  Copyright (c) 2014 Debra Weissman. All rights reserved.
//

#import "ThinkfuliOSViewController.h"

@interface ThinkfuliOSViewController ()
@property (weak, nonatomic) IBOutlet UILabel *delegateLabel;
@property (weak, nonatomic) IBOutlet UITextField *delegateTextField;

@end

@implementation ThinkfuliOSViewController
- (IBAction)didTapClear:(id)sender {
    
    UIAlertView *clearView = [[UIAlertView alloc]initWithTitle:@"About to clear the text" message:@"Are you sure you want to remove all text from the text field" delegate:self cancelButtonTitle:@"No" otherButtonTitles:@"Yes", nil];
    
    [clearView show];
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

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

-(void)textFieldDidEndEditing:(UITextField *)textField {
    

    self.delegateLabel.text = textField.text;
}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if ([string isEqualToString:@"a"]) {
        return NO;
    }
    else {
        return YES;
    }
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    if (buttonIndex == 1) {
        self.delegateTextField.text = @"";
    }
}

@end
