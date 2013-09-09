//
//  NSObject+CJAAssociatedObject.m
//  CJAAssociatedObject
//
//  Created by Carl Jahn on 09.09.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

#import "NSObject+CJAAssociatedObject.h"

@implementation NSObject (CJAAssociatedObject)

- (id)associatedValueForKey:(void *)key {

  return objc_getAssociatedObject(self, key);
}

- (void)setAssociatedValue:(id)value forKey:(void *)key {
  
  [self setAssociatedValue:value forKey:key policy: OBJC_ASSOCIATION_RETAIN_NONATOMIC];
}

- (void)setAssociatedValue:(id)value forKey:(void *)key policy:(objc_AssociationPolicy)policy {

  objc_setAssociatedObject(self, key, value, policy);
}

- (void)removeAllAssociatedValues {
  
  objc_removeAssociatedObjects(self);
}

- (BOOL)associatedBoolValueForKey:(void *)key {
  
  NSNumber *value = [self associatedValueForKey: key];
  
  return value.boolValue;
}
- (void)setAssociatedBoolValue:(BOOL)value forKey:(void *)key {
  
  NSNumber *valueObject = [NSNumber numberWithBool: value];
  
  [self setAssociatedValue:valueObject forKey:key];
}

- (NSInteger)associatedIntegerValueForKey:(void *)key {
  
  NSNumber *value = [self associatedValueForKey: key];
  
  return value.integerValue;
}

- (void)setAssociatedIntegerValue:(NSInteger)value forKey:(void *)key {
  
  NSNumber *valueObject = [NSNumber numberWithInteger: value];
  
  [self setAssociatedValue:valueObject forKey:key];
}

- (float)associatedFloatValueForKey:(void *)key {
  
  NSNumber *value = [self associatedValueForKey: key];
  
  return value.floatValue;
}

- (void)setAssociatedFloatValue:(float)value forKey:(void *)key {
  
  NSNumber *valueObject = [NSNumber numberWithFloat: value];
  
  [self setAssociatedValue:valueObject forKey:key];
}

- (double)associatedDoubleValueForKey:(void *)key {
  
  NSNumber *value = [self associatedValueForKey: key];
  
  return value.doubleValue;
}

- (void)setAssociatedDoubleValue:(double)value forKey:(void *)key {
  
  NSNumber *valueObject = [NSNumber numberWithDouble: value];
  
  [self setAssociatedValue:valueObject forKey:key];
}


@end
