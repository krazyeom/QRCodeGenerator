//
//  ViewController.m
//  QRGen
//
//  Created by Steve Yeom on 3/9/15.
//  Copyright (c) 2015 Appilogue. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *text;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

- (IBAction)save:(id)sender {
  NSUserDefaults *defaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.appilogue.documents"];
  NSString *stopNumber = [_text text];
  NSLog(@"%@", stopNumber);
  [defaults setObject:stopNumber forKey:@"ShopNumber"];
}

@end
