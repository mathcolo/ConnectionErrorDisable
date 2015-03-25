//
//  ConnectionErrorDisable.m
//  ConnectionErrorDisable
//
//  Created by Preston Mueller on 3/17/15.
//  Copyright (c) 2015 Preston Mueller. All rights reserved.
//

#import "ConnectionErrorDisable.h"

@implementation ConnectionErrorDisable

+ (void) load
{
    NSLog(@"Test");
    [self swizzle];
}

+ (void) swizzle
{

    SEL oldMessageText = @selector(setMessageText:);
    SEL newMessageText = @selector(FIXsetMessageText:);
    [self swizzle:oldMessageText with:newMessageText inClass:NSClassFromString(@"NSAlert")];
   
    
}

+ (void) swizzle:(SEL)oldSelector with:(SEL)newSelector inClass:(Class)klass
{
    Method oldMethod = class_getInstanceMethod(klass, oldSelector);
    Method newMethod = class_getInstanceMethod(klass, newSelector);
    
    if(class_addMethod(klass, oldSelector, method_getImplementation(newMethod), method_getTypeEncoding(newMethod)))
    {
        class_replaceMethod(klass, newSelector, method_getImplementation(oldMethod), method_getTypeEncoding(oldMethod));
    }
    else
    {
        method_exchangeImplementations(oldMethod, newMethod);
    }
}



@end
