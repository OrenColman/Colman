//
//  ViewController.h
//  FinalProject
//
//  Created by Admin on 12/28/15.
//  Copyright © 2015 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>{
    UIImagePickerController* picker;
    UIImagePickerController* picker2;
    UIImage* image;
}

- (IBAction)TakePhoto:(id)sender;
- (IBAction)ChooseExisting:(id)sender;

@end

