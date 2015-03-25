//
//  NSAlert+Fix.h
//  ConnectionErrorDisable
//
//  Created by Preston Mueller on 3/17/15.
//  Copyright (c) 2015 Preston Mueller. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

@interface NSAlert (ErrorDisable)

-(void)FIXsetMessageText:(NSString *)string;

@end
