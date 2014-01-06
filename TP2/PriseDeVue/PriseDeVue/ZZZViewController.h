//
//  ZZZViewController.h
//  PriseDeVue
//
//  Created by Gaetan EYHERAMONO on 12/17/13.
//  Copyright (c) 2013 Gaetan EYHERAMONO. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface ZZZViewController : UIViewController<UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
    UIImagePickerController *_picker;
    MFMailComposeViewController *_mailController;
    
}

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end
