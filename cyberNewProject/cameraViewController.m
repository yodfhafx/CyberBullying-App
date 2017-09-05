//
//  cameraViewController.m
//  cyberNewProject
//
//  Created by Yodfha on 6/26/2559 BE.
//  Copyright © 2559 Fhasai. All rights reserved.
//

#import "cameraViewController.h"

@interface cameraViewController ()

@end

@implementation cameraViewController

-(IBAction)PlayAudioButton:(id)sender;{
    
    AudioServicesPlaySystemSound(PlaySoundID);
}


- (IBAction)TakePhoto {
    picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    [picker setSourceType:UIImagePickerControllerSourceTypeCamera];
    [self presentViewController:picker animated:YES completion:NULL];

}

- (IBAction)ChooseExisting {
    picker2 = [[UIImagePickerController alloc] init];
    picker2.delegate = self;
    [picker2 setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [self presentViewController:picker2 animated:YES completion:NULL];
}

- (void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    image = [info objectForKey:UIImagePickerControllerOriginalImage];
    [imageView setImage:image];
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (void) imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (IBAction)onClickSavePhoto:(id)sender {
    UIImageWriteToSavedPhotosAlbum([imageView image], nil, nil, nil);
}

- (IBAction)shareButtonPressed:(id)sender {
    if (imageView.image == nil) {
        NSLog(@"shareButton pressed");
                NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
                UIImage *imagetoshare1 = [UIImage imageNamed:@"shareCamera.png"];
                NSArray *activityItems = @[texttoshare1, imagetoshare1];
                UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
                activityVC.excludedActivityTypes = @[];
                [self presentViewController:activityVC animated:TRUE completion:nil];
    } else {
        NSLog(@"shareButton pressed");
        NSString *texttoshare1 = @"ข้อความที่ต้องการแชร์";
        UIImageView *imagetoshare1 = [imageView image];
        
        NSArray *activityItems = @[texttoshare1, imagetoshare1];
        UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
        activityVC.excludedActivityTypes = @[];
        [self presentViewController:activityVC animated:TRUE completion:nil];
    }

}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSURL *SoundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"button2" ofType:@"mp3"] ];
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
