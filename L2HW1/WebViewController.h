//
//  WebViewController.h
//  L2HW1
//
//  Created by Gates on 13/9/2.
//  Copyright (c) 2013年 Gates. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface WebViewController : UIViewController {
    
    __weak IBOutlet UIWebView *webView;
}

@property (retain, nonatomic) NSString *targetString;

@end
