//
//  InterfaceController.m
//  QRGen WatchKit Extension
//
//  Created by Steve Yeom on 3/9/15.
//  Copyright (c) 2015 Appilogue. All rights reserved.
//

#import "InterfaceController.h"
#import "UIImage+MDQRCode.h"

@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
  
  NSUserDefaults *defaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.appilogue.documents"];
  NSString *shopNumber =  [defaults objectForKey:@"ShopNumber"];
  UIImage *image = [UIImage mdQRCodeForString:shopNumber size:100];
  [_QRImageView setImage:image];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



