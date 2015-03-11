//
//  InputInterfaceController.m
//  QRGen
//
//  Created by Steve Yeom on 3/11/15.
//  Copyright (c) 2015 Appilogue. All rights reserved.
//

#import "InputInterfaceController.h"


@interface InputInterfaceController()

@property (weak, nonatomic) IBOutlet WKInterfaceLabel *firstLabel;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *secondLabel;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *thirdLabel;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *fourthLabel;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *fifthLabel;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *sixthLabel;

@property (nonatomic) int first;
@property (nonatomic) int second;
@property (nonatomic) int third;
@property (nonatomic) int fourth;
@property (nonatomic) int fifth;
@property (nonatomic) int sixth;

@end

@implementation InputInterfaceController

- (void)awakeWithContext:(id)context {
  [super awakeWithContext:context];
  
  // Configure interface objects here.
  [self initLabel];
}

- (void)willActivate {
  // This method is called when watch view controller is about to be visible to user
  [super willActivate];
}

- (void)didDeactivate {
  // This method is called when watch view controller is no longer visible
  [super didDeactivate];
}

- (IBAction)firstPlus {
  if (_first == 9) {
    _first = 0;
  } else {
    _first = _first + 1;
  }
  [_firstLabel setText:[NSString stringWithFormat:@"%d", _first]];
}

- (IBAction)secondPlus {
  if (_second == 9) {
    _second = 0;
  } else {
    _second = _second + 1;
  }
  [_secondLabel setText:[NSString stringWithFormat:@"%d", _second]];
}

- (IBAction)thirdPlus {
  if (_third == 9) {
    _third = 0;
  } else {
    _third = _third + 1;
  }
  [_thirdLabel setText:[NSString stringWithFormat:@"%d", _third]];
}
- (IBAction)fourthPlus {
  if (_fourth == 9) {
    _fourth = 0;
  } else {
    _fourth = _fourth + 1;
  }
  [_fourthLabel setText:[NSString stringWithFormat:@"%d", _fourth]];
}

- (IBAction)fifthPlus {
  if (_fifth == 9) {
    _fifth = 0;
  } else {
    _fifth = _fifth + 1;
  }
  [_fifthLabel setText:[NSString stringWithFormat:@"%d", _fifth]];
}

- (IBAction)sixthPlus {
  if (_sixth == 9) {
    _sixth = 0;
  } else {
    _sixth = _sixth + 1;
  }
  [_sixthLabel setText:[NSString stringWithFormat:@"%d", _sixth]];
}

- (IBAction)firstMinus {
  if (_first == 0) {
    _first = 9;
  } else {
    _first = _first - 1;
  }
  [_firstLabel setText:[NSString stringWithFormat:@"%d", _first]];
}

- (IBAction)secondMinus {
  if (_second == 0) {
    _second = 9;
  } else {
    _second = _second - 1;
  }
  [_secondLabel setText:[NSString stringWithFormat:@"%d", _second]];
}

- (IBAction)thirdMinus {
  if (_third == 0) {
    _third = 9;
  } else {
    _third = _third - 1;
  }
  [_thirdLabel setText:[NSString stringWithFormat:@"%d", _third]];
}

- (IBAction)fourthMinus {
  if (_fourth == 0) {
    _fourth = 9;
  } else {
    _fourth = _fourth - 1;
  }
  [_fourthLabel setText:[NSString stringWithFormat:@"%d", _fourth]];
}

- (IBAction)fifthMinus {
  if (_fifth == 0) {
    _fifth = 9;
  } else {
    _fifth = _fifth - 1;
  }
  [_fifthLabel setText:[NSString stringWithFormat:@"%d", _fifth]];
}

- (IBAction)sixthMinus {
  if (_sixth == 0) {
    _sixth = 9;
  } else {
    _sixth = _sixth - 1;
  }
  [_sixthLabel setText:[NSString stringWithFormat:@"%d", _sixth]];
}

- (void)initLabel {
  
  NSUserDefaults *defaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.appilogue.documents"];
  NSString *shopNumber =  [defaults objectForKey:@"ShopNumber"];
  
  if (shopNumber == nil) {
    shopNumber = @"140416";
  }
  
  int shopNumberInt = [shopNumber intValue];
  
  _first = shopNumberInt / 100000;
  shopNumberInt -= _first * 100000;
  _second = shopNumberInt / 10000;
  shopNumberInt -= _second  * 10000;
  _third = shopNumberInt / 1000;
  shopNumberInt -= _third * 1000;
  _fourth = shopNumberInt / 100;
  shopNumberInt -= _fourth * 100;
  _fifth = shopNumberInt / 10;
  shopNumberInt -= _fifth / 10;
  _sixth = shopNumberInt % 10;
  
  [_firstLabel setText:[NSString stringWithFormat:@"%d", _first]];
  [_secondLabel setText:[NSString stringWithFormat:@"%d", _second]];
  [_thirdLabel setText:[NSString stringWithFormat:@"%d", _third]];
  [_fourthLabel setText:[NSString stringWithFormat:@"%d", _fourth]];
  [_fifthLabel setText:[NSString stringWithFormat:@"%d", _fifth]];
  [_sixthLabel setText:[NSString stringWithFormat:@"%d", _sixth]];
  
}

- (id)contextForSegueWithIdentifier:(NSString *)segueIdentifier {
  if ([segueIdentifier isEqualToString:@"genSegue"]) {
    
    NSUserDefaults *defaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.appilogue.documents"];
    NSString *shopNumber = [NSString stringWithFormat:@"%d%d%d%d%d%d", _first, _second, _third, _fourth, _fifth, _sixth];
    [defaults setObject:shopNumber forKey:@"ShopNumber"];
    
    return shopNumber;
  }
  return nil;
}
@end

