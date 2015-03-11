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

@property (strong, nonatomic) NSString *shopNumber;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

     // Configure interface objects here.
  _shopNumber = context;
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
  
  int width = [WKInterfaceDevice currentDevice].screenBounds.size.width;
  
  UIImage *image = [UIImage mdQRCodeForString:_shopNumber size:width fillColor:[UIColor blackColor]];
  [_QRImageView setImage:image];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



