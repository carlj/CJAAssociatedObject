#CJAAssociatedObject
A wrapper about the `objc_getAssociatedObject` and `objc_setAssociatedObject` from the  [`<objc/runtime.h>`](https://developer.apple.com/library/ios/documentation/Cocoa/Reference/ObjCRuntimeRef/Reference/reference.html)

[![Build Status](https://travis-ci.org/carlj/CJAAssociatedObject.png?branch=master)](https://travis-ci.org/carlj/CJAAssociatedObject)

##But why... ?
There is one important reason for this library:  
**You can add custom properties to your own Categories**

##Installation
Just drag & drop the [`NSObject+CJAAssociatedObject.h`](/CJAAssociatedObject/NSObject+CJAAssociatedObject.h) and [`NSObject+CJAAssociatedObject.m`](/CJAAssociatedObject/NSObject+CJAAssociatedObject.m) files to your project.

##Usage
First of all take a look at the Example Project, especially at the [`UIViewController+ExampleCategory`](/Example/Classes/UIViewController+ExampleCategory.h) Category

``` objc
static void *kExampleStringKey;
static void *kExampleBoolKey;
static void *kExampleFloatKey;
static void *kExampleDoubleKey;

- (void)yourMethod {

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
```

##LICENSE
Released under the [MIT LICENSE](LICENSE)