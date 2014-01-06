//
//  main.m
//  PriseDeVue
//
//  Created by Gaetan EYHERAMONO on 12/17/13.
//  Copyright (c) 2013 Gaetan EYHERAMONO. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ZZZAppDelegate.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([ZZZAppDelegate class]));
    }
}
/*
 - (IBAction)sendPicture:(id)sender {
 if ([MFMailComposeViewController canSendMail])
 {
 MFMailComposeViewController *mail = [[MFMailComposeViewController alloc] init];
 mail.mailComposeDelegate = self;
 
 [mail setSubject:@"Regarde la photo que je viens de faire avec PriseDeVue"];
 
 NSData *img = [NSData dataWithData:UIImagePNGRepresentation(self.imageView.image)];
 [mail addAttachmentData:img mimeType:@"image/png" fileName:@"image.png"];
 
 // Fill out the email body text
 NSString *emailBody = [[NSString alloc] initWithFormat:
 @"Prise le %@ avec PriseDeVue",
 [NSDateFormatter localizedStringFromDate:[NSDate date]
 dateStyle:NSDateFormatterShortStyle
 timeStyle:NSDateFormatterFullStyle]
 ];
 
 [mail setMessageBody:emailBody isHTML:NO];
 
 [self presentViewController:mail animated:YES completion:NULL];
 }
 else
 {
 UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
 message: @"Sadly, you have no e-mail account configured."
 delegate: nil
 cancelButtonTitle: @"Ok :("
 otherButtonTitles: nil];
 [alert show];
 }
 }*/