//
//  ThirdViewController.h
//  Countdown
//
//  Created by Amit Kalra on 8/31/14.
//  Copyright (c) 2014 Amit Kalra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController {
    
    NSDate *destinatationDate;
    IBOutlet UILabel *countdownLabel3;
    NSTimer *timer;
    
}

- (void)updateLabel3;


@end
