//
//  LSSettingsViewController.h
//  Planets Objc
//
//  Created by Ilgar Ilyasov on 11/12/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSSettingsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISwitch *showPlutoSwitch;

- (IBAction)doneTapped:(id)sender;
- (IBAction)showPluto:(id)sender;

@end

NS_ASSUME_NONNULL_END
