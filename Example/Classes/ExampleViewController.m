//
//  ExampleViewController.m
//  CJAAssociatedObject
//
//  Created by Carl Jahn on 09.09.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

#import "ExampleViewController.h"
#import "UIViewController+ExampleCategory.h"


@implementation ExampleViewController

- (void)viewDidLoad {
  [super viewDidLoad];
	// Do any additional setup after loading the view.
  
  self.categoryProperty = @"Lorem ipsum";
  NSLog(@"categoryProperty String: %@", self.categoryProperty);

}

@end
