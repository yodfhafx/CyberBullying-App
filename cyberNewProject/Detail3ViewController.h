//
//  Detail3ViewController.h
//  cyberNewProject
//
//  Created by Yodfha on 6/23/2559 BE.
//  Copyright © 2559 Fhasai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface Detail3ViewController : UIViewController

{
    SystemSoundID PlaySoundID;
    
    
}

-(IBAction)PlayAudioButton:(id)sender;

@property int UserSelected;
@property(strong, nonatomic) IBOutlet UIImageView *img;

@end
