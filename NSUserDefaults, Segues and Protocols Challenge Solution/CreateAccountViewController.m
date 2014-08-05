//
//  CreateAccountViewController.m
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Joseph Cheung on 5/8/14.
//  Copyright (c) 2014 Reque.st. All rights reserved.
//

#import "CreateAccountViewController.h"

@interface CreateAccountViewController ()

@end

@implementation CreateAccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)createAccountButtonPressed:(UIButton *)sender
{
    if ([self.usernameTextField.text length] != 0 && [self.passwordTextField.text length] != 0 && [self.passwordTextField.text isEqualToString:self.confirmPasswordTextField.text]) {
        [[NSUserDefaults standardUserDefaults]setValue:self.usernameTextField.text forKey:USER_NAME];
        [[NSUserDefaults standardUserDefaults]setValue:self.passwordTextField.text forKey:USER_PASSWORD];
    }
    else {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Information provided is incorrect. Please try again." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertView show];
    }
    
    NSLog(@"%@", [[NSUserDefaults standardUserDefaults]objectForKey:USER_NAME]);
    NSLog(@"%@", [[NSUserDefaults standardUserDefaults]objectForKey:USER_PASSWORD]);
//    [self.delegate didCreateAccount];
}

- (IBAction)cancelButtonPressed:(UIButton *)sender
{
    [self.delegate didCancel];
}
@end
