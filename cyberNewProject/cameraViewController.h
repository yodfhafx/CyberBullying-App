//
//  cameraViewController.h
//  cyberNewProject
//
//  Created by Yodfha on 6/26/2559 BE.
//  Copyright © 2559 Fhasai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface cameraViewController : UIViewController  <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

{
    UIImagePickerController *picker;
    UIImagePickerController *picker2;
    UIImage *image;
    IBOutlet UIImageView *imageView;
    
    SystemSoundID PlaySoundID;
}
-(IBAction)PlayAudioButton:(id)sender;
- (IBAction)TakePhoto;
- (IBAction)ChooseExisting;

@end
