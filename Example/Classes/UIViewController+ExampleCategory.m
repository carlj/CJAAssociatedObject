//
//  UIViewController+ExampleCategory.m
//  CJAAssociatedObject
//
//  Created by Carl Jahn on 10.09.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

#import "UIViewController+ExampleCategory.h"
#import "NSObject+CJAAssociatedObject.h"

static void *kExampleCategoryPropertieKey;


@implementation UIViewController (ExampleCategory)

- (NSString *)categoryProperty {

  return [self associatedValueForKey: &kExampleCategoryPropertieKey];
}

- (void)setCategoryProperty:(NSString *)string {
  NSAssert(string, @"The string cannot be nil");
  
  [self setAssociatedValue:string forKey:&kExampleCategoryPropertieKey];
}

@end
