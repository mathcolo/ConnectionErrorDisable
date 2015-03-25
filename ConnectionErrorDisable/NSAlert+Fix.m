//
//  NSAlert+Fix.m
//  ConnectionErrorDisable
//
//  Created by Preston Mueller on 3/17/15.
//  Copyright (c) 2015 Preston Mueller. All rights reserved.
//

#import "NSAlert+Fix.h"

@implementation NSAlert (ErrorDisable)

-(void)FIXsetMessageText:(NSString *)string {
    NSLog(@"%@", string);
    if([string containsString:@"There was a problem connecting to the server"]) {
        [[self window] setHidden:YES];
    }
    [self FIXsetMessageText:string];
}

@end
