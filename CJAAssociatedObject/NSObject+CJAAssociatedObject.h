//
//  NSObject+CJAAssociatedObject.h
//  CJAAssociatedObject
//
//  Created by Carl Jahn on 09.09.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface NSObject (CJAAssociatedObject)

/**
 Returns the associated value for a given key
 
 @param key The given key
 @return the associated value; otherwise nil 
 */
- (id)associatedValueForKey:(void *)key;

/**
 Set's the given value for the key
 
 Notice: The value is setted with the OBJC_ASSOCIATION_RETAIN_NONATOMIC policy
 @param key The key for the associated object
 @param value The value that should be saved
 */
- (void)setAssociatedValue:(id)value forKey:(void *)key;

/**
 Set's the given value for the key, with the given policy 
 
 Notice: The value is setted with the OBJC_ASSOCIATION_RETAIN_NONATOMIC policy
 @param key The key for the associated object
 @param value The value that should be saved
 @param policy The association policy
 */
- (void)setAssociatedValue:(id)value forKey:(void *)key policy:(objc_AssociationPolicy)policy;

/**
 Removes all values from the object
 */
- (void)removeAllAssociatedValues;

/**
 Returns the associated BOOL value for a given key
 
 @param key The given key
 @return the associated BOOL value; otherwise NO
 */
- (BOOL)associatedBoolValueForKey:(void *)key;

/**
 Set's the given BOOL value for the key
 
 Notice: The value is setted with the OBJC_ASSOCIATION_RETAIN_NONATOMIC policy
 @param key The key for the associated object
 @param value The BOOL value that should be saved
 */
- (void)setAssociatedBoolValue:(BOOL)value forKey:(void *)key;

/**
 Returns the associated NSInteger value for a given key
 
 @param key The given key
 @return the associated NSInteger value; otherwise 0
 */
- (NSInteger)associatedIntegerValueForKey:(void *)key;

/**
 Set's the given NSInteger value for the key
 
 Notice: The value is setted with the OBJC_ASSOCIATION_RETAIN_NONATOMIC policy
 @param key The key for the associated NSInteger
 @param value The NSInteger value that should be saved
 */
- (void)setAssociatedIntegerValue:(NSInteger)value forKey:(void *)key;

/**
 Returns the associated float value for a given key
 
 @param key The given key
 @return the associated float value; otherwise 0.0f
 */
- (float)associatedFloatValueForKey:(void *)key;

/**
 Set's the given float value for the key
 
 Notice: The value is setted with the OBJC_ASSOCIATION_RETAIN_NONATOMIC policy
 @param key The key for the associated float
 @param value The float value that should be saved
 */
- (void)setAssociatedFloatValue:(float)value forKey:(void *)key;

/**
 Returns the associated double value for a given key
 
 @param key The given key
 @return the associated double value; otherwise .0
 */
- (double)associatedDoubleValueForKey:(void *)key;

/**
 Set's the given double value for the key
 
 Notice: The value is setted with the OBJC_ASSOCIATION_RETAIN_NONATOMIC policy
 @param key The key for the associated double
 @param value The double value that should be saved
 */
- (void)setAssociatedDoubleValue:(double)value forKey:(void *)key;

@end
