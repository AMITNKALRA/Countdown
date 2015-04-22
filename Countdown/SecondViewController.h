//
//  SecondViewController.h
//  TestProject
//
//  Created by Douglas Bumby on 2014-08-27.
//  Copyright (c) 2014 Douglas Bumby. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController {
    
    NSDate *destinatationDate;
    IBOutlet UILabel *countdownLabel2;
    NSTimer *timer;
    
}

- (void)updateLabel2;
 

@end
