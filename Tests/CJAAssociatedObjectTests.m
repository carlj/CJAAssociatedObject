//
//  CJAAssociatedObjectTests.m
//  CJAAssociatedObjectTests
//
//  Created by Carl Jahn on 09.09.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

static void *kTestKey;


#import "CJAAssociatedObjectTests.h"
#import "NSObject+CJAAssociatedObject.h"

@interface CJAAssociatedObjectTests ()

@property (nonatomic, strong) NSObject *object;

@end

@implementation CJAAssociatedObjectTests

- (void)setUp {
  [super setUp];
  
  self.object = [NSObject new];
}

- (void)tearDown {
  
  self.object = nil;
  [super tearDown];
}

- (void)testObject {
  NSDictionary *testObject = @{ @"key" : @"value" };
  
  [self.object setAssociatedValue:testObject forKey:&kTestKey];
  
  NSString *exampleObject = [self.object associatedValueForKey: &kTestKey];
  STAssertEqualObjects(exampleObject, testObject, @"Objects arent the same");
}

- (void)testString {
  NSString *testString = @"Lorem ipsum";
  
  [self.object setAssociatedValue:testString forKey:&kTestKey];
  
  NSString *exampleString = [self.object associatedValueForKey: &kTestKey];
  STAssertEqualObjects(exampleString, testString, @"Strings arent the same");
}

- (void)testBool {
  BOOL testBool = YES;
  
  [self.object setAssociatedBoolValue:testBool forKey: &kTestKey];
  
  BOOL exampleBool = [self.object associatedBoolValueForKey: &kTestKey];
  STAssertEquals(exampleBool, testBool, @"Bools arent the same");
}

- (void)testFloat {
  float testFloat = 41.0f;
  
  [self.object setAssociatedFloatValue: testFloat forKey: &kTestKey];
  
  float exampleFloat = [self.object associatedFloatValueForKey: &kTestKey];
  STAssertEqualsWithAccuracy(exampleFloat, testFloat, FLT_EPSILON, @"Floats arent the same");
}

- (void)testDouble {
  
  double testDouble = 37.37f;
  
  [self.object setAssociatedDoubleValue: testDouble forKey: &kTestKey];
  
  double exampleDouble = [self.object associatedDoubleValueForKey: &kTestKey];
  STAssertEqualsWithAccuracy(exampleDouble, testDouble, DBL_EPSILON, @"Doubles arent the same");
}


- (void)testRemoveValues {
  
  [self testDouble];
  
  [self.object removeAllAssociatedValues];
  
  double exampleDouble = [self.object associatedDoubleValueForKey: &kTestKey];
  STAssertEqualsWithAccuracy(exampleDouble, .0, DBL_EPSILON, @"All values arent removed");
}







@end
