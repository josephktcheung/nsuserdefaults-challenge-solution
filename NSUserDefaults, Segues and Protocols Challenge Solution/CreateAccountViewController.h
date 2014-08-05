//
//  CreateAccountViewController.h
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Joseph Cheung on 5/8/14.
//  Copyright (c) 2014 Reque.st. All rights reserved.
//

#import <UIKit/UIKit.h>

#define USER_NAME @"username"
#define USER_PASSWORD @"password"

@protocol CreateAccountViewControllerDelegate <NSObject>

- (void)didCancel;
- (void)didCreateAccount;

@end

@interface CreateAccountViewController : UIViewController

@property (weak, nonatomic) id <CreateAccountViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UITextField *confirmPasswordTextField;

- (IBAction)createAccountButtonPressed:(UIButton *)sender;
- (IBAction)cancelButtonPressed:(UIButton *)sender;
@end
