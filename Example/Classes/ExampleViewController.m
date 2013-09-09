//
//  ExampleViewController.m
//  CJAAssociatedObject
//
//  Created by Carl Jahn on 09.09.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

#import "ExampleViewController.h"
#import "NSObject+CJAAssociatedObject.h"

static void *kExampleStringKey;
static void *kExampleBoolKey;
static void *kExampleFloatKey;
static void *kExampleDoubleKey;

@interface ExampleViewController ()

@end

@implementation ExampleViewController

- (void)viewDidLoad {
  [super viewDidLoad];
	// Do any additional setup after loading the view.

  //Set a example String value for the given key
  [self setAssociatedValue:@"Lorem ipsum" forKey:&kExampleStringKey];

  //Gets the string value from the given key
  NSString *exampleString = [self associatedValueForKey: &kExampleStringKey];
  NSLog(@"example String %@", exampleString);
  
  //Set a example BOOL value for the given key
  [self setAssociatedBoolValue:YES forKey: &kExampleBoolKey];

  //Gets the bool value from the given key
  BOOL exampleBool = [self associatedBoolValueForKey: &kExampleBoolKey];
  NSLog(@"example BOOL %d", exampleBool);
  
  //Set a example float value for the given key
  [self setAssociatedFloatValue:41.0f forKey: &kExampleFloatKey];
  
  //Gets the float value from the given key
  float exampleFloat = [self associatedFloatValueForKey: &kExampleFloatKey];
  NSLog(@"example Float %f", exampleFloat);
  
  //Set a example double value for the given key
  [self setAssociatedDoubleValue: 37.37 forKey: &kExampleDoubleKey];
  
  //Gets the double value from the given key
  double exampleDouble = [self associatedDoubleValueForKey: &kExampleDoubleKey];
  NSLog(@"example Double %f", exampleDouble);
  
}

@end
