//
//  PopSegue.m
//  CustomSegue
//
//  Created by Debra Weissman on 7/12/14.
//  Copyright (c) 2014 Debra Weissman. All rights reserved.
//

#import "PopSegue.h"

@implementation PopSegue

- (void) perform {
    
    UIViewController *source = (UIViewController *)self.sourceViewController;
    [source.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

@end
