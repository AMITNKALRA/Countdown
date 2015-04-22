//
//  TodayViewController.h
//  NC Countdown
//
//  Created by Amit Kalra on 3/1/15.
//  Copyright (c) 2015 Amit Kalra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TodayViewController : UIViewController {

    NSDate *destinatationDateNC;
    IBOutlet UILabel *countdownLabelNC;
    NSTimer *timerNC;
}

-(void)updateLabelNC;


@end
