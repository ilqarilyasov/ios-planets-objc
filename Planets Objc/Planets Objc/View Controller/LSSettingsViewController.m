//
//  LSSettingsViewController.m
//  Planets Objc
//
//  Created by Ilgar Ilyasov on 11/12/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import "LSSettingsViewController.h"

@interface LSSettingsViewController ()

@end

@implementation LSSettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    _showPlutoSwitch.on = [userDefaults boolForKey:@"ShouldShowPluto"];
}

- (IBAction)doneTapped:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)showPluto:(id)sender {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setBool:_showPlutoSwitch.on forKey:@"ShouldShowPluto"];
}


@end
