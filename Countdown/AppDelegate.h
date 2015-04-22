//
//  AppDelegate.h
//  Countdown
//
//  Created by Amit Kalra on 8/26/14.
//  Copyright (c) 2014 Amit Kalra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import <AVFoundation/AVFoundation.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, AVAudioPlayerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (nonatomic, strong) AVAudioPlayer *audioPlayer;


- (void)saveContext;
- (void)Intro; //gonna change
- (NSURL *)applicationDocumentsDirectory;


@end

