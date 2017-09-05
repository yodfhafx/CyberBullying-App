//
//  loginFBViewController.h
//  cyberNewProject
//
//  Created by Yodfha on 6/27/2559 BE.
//  Copyright © 2559 Fhasai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <FacebookSDK/FacebookSDK.h>

@interface loginFBViewController : UIViewController


{
    SystemSoundID PlaySoundID;
    IBOutlet UIButton *btn1;
    IBOutlet UIButton *btn2;
    
}

-(IBAction)PlayAudioButton:(id)sender;

@property (weak, nonatomic) IBOutlet FBLoginView *loginButton;

@property (weak, nonatomic) IBOutlet UILabel *lblLoginStatus;

@property (weak, nonatomic) IBOutlet UILabel *lblUsername;

@property (weak, nonatomic) IBOutlet UILabel *lblEmail;

@property (weak, nonatomic) IBOutlet FBProfilePictureView *profilePicture;

@property (nonatomic, strong) IBOutlet UIButton *continueButton;


@end
