//
//  ViewController.h
//  L2HW1
//
//  Created by Gates on 13/9/2.
//  Copyright (c) 2013年 Gates. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WebViewController.h"

@interface ViewController : UIViewController {    
    __weak IBOutlet UITextField *urlTextField;
}

@property (retain, nonatomic) NSString *targetURLString;
@property (weak, nonatomic) IBOutlet UILabel *targetURLLabel;

@end
