//
//  ViewController.m
//  L2HW1
//
//  Created by Gates on 13/9/2.
//  Copyright (c) 2013年 Gates. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)toWebViewButtonAction:(UIButton *)sender {
    [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
    if ([urlTextField.text length]) {
        WebViewController *webViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"webVC"];
        webViewController.targetString = urlTextField.text;
        [self.navigationController pushViewController:webViewController animated:YES];
    } else {
        UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"警告" message:@"尚未輸入網址" delegate:self cancelButtonTitle:@"確認" otherButtonTitles:nil, nil];
        [alertView show];
    }
}

// 當使用者點擊Done時，解除鍵盤
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    [self toWebViewButtonAction:(UIButton *)self];
    return YES;
}

@end
