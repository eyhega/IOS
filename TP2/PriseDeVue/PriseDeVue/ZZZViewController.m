//
//  ZZZViewController.m
//  PriseDeVue
//
//  Created by Gaetan EYHERAMONO on 12/17/13.
//  Copyright (c) 2013 Gaetan EYHERAMONO. All rights reserved.
//

#import "ZZZViewController.h"

@interface ZZZViewController ()

@end

@implementation ZZZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)takePictureAction:(id)sender
{
    if (_picker == Nil) {
        _picker = [[UIImagePickerController alloc] init];
        
        _picker.sourceType = UIImagePickerControllerSourceTypeCamera;
        _picker.mediaTypes =[UIImagePickerController availableMediaTypesForSourceType:UIImagePickerControllerSourceTypeCamera];
        _picker.delegate = self;
        _picker.allowsEditing = NO;
    }
    
    
    [self presentViewController:_picker animated:TRUE completion:NULL];
}

// For responding to the user accepting a newly-captured picture or movie
- (void) imagePickerController: (UIImagePickerController *) picker
 didFinishPickingMediaWithInfo: (NSDictionary *) info {
    UIImage *originalImage;
    
    originalImage = (UIImage *) [info objectForKey:UIImagePickerControllerOriginalImage];
    
    [_imageView setImage:originalImage];
    
    [_picker dismissViewControllerAnimated:YES completion:NULL];
}

-(void)displayComposerSheet
{
    if (_mailController == Nil) {
        _mailController = [[MFMailComposeViewController alloc] init];
        _mailController.mailComposeDelegate = self;
    }

    [_mailController setSubject:@"Regarde ma super photo"];
    
    // Set up the recipients.
    NSArray *toRecipients = [NSArray arrayWithObjects:@"tpiosios@gmail.com",
                             nil];
    
    [_mailController setToRecipients:toRecipients];
    
    // Attach an image to the mail
    NSData *myData = UIImagePNGRepresentation(_imageView.image);
    [_mailController addAttachmentData:myData mimeType:@"image/png"
                     fileName:@"photo"];
    
    // Fill out the email body text.
    NSString *emailBody = @"Regarde ma super photo";
    [_mailController setMessageBody:emailBody isHTML:NO];
    
    // Present the mail composition interface.
    [self presentModalViewController:_mailController animated:YES];
}

// The mail compose view controller delegate method
- (void)mailComposeController:(MFMailComposeViewController *)controller
          didFinishWithResult:(MFMailComposeResult)result
                        error:(NSError *)error
{
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)sendByEmailAction:(id)sender {
    [self displayComposerSheet];
}

@end
