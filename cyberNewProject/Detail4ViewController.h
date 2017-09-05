//
//  Detail4ViewController.h
//  cyberNewProject
//
//  Created by Yodfha on 6/23/2559 BE.
//  Copyright © 2559 Fhasai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface Detail4ViewController : UIViewController

{
    SystemSoundID PlaySoundID;
    
    
}

@property int UserSelected;
@property(strong, nonatomic) IBOutlet UIImageView *img;


-(IBAction)PlayAudioButton:(id)sender;

@end
