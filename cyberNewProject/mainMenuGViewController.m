//
//  mainMenuGViewController.m
//  cyberNewProject
//
//  Created by Yodfha on 7/1/2559 BE.
//  Copyright © 2559 Fhasai. All rights reserved.
//

#import "mainMenuGViewController.h"

@interface mainMenuGViewController ()

@end

@implementation mainMenuGViewController

-(IBAction)PlayAudioButton:(id)sender;{
    
    AudioServicesPlaySystemSound(PlaySoundID);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *SoundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"button click" ofType:@"wav"] ];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)SoundURL, &PlaySoundID);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
