//
//  SignInViewController.m
//  NSUserDefaults, Segues and Protocols Challenge Solution
//
//  Created by Joseph Cheung on 5/8/14.
//  Copyright (c) 2014 Reque.st. All rights reserved.
//

#import "SignInViewController.h"

@interface SignInViewController ()

@end

@implementation SignInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.destinationViewController isKindOfClass:[CreateAccountViewController class]]) {
        CreateAccountViewController *createAccountVC = segue.destinationViewController;
        createAccountVC.delegate = self;
    }
    
}

- (IBAction)loginButtonPressed:(UIButton *)sender
{
    [self performSegueWithIdentifier:@"toViewControllerSegue" sender:sender];
}

- (IBAction)createAccountBarButtonItemPressed:(UIBarButtonItem *)sender
{
    [self performSegueWithIdentifier:@"toCreateAccountViewControllerSegue" sender:sender];
}

#pragma mark - CreateAccountViewController Delegate

- (void)didCancel
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didCreateAccount
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
