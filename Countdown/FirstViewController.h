//
//  ViewController.h
//  Countdown
//
//  Created by Amit Kalra on 8/26/14.
//  Copyright (c) 2014 Amit Kalra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController {

    NSDate *destinatationDate;
    IBOutlet UILabel *countdownLabel;
    NSTimer *timer;
}

-(void)updateLabel;

-(IBAction)Swipe:(id)sender;

@end

