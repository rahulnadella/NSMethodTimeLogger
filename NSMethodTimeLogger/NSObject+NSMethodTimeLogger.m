/*
 Copyright (c) 2013 Rahul Nadella
 
 Permission is hereby granted, free of charge, to any person
 obtaining a copy of this software and associated documentation
 files (the "Software"), to deal in the Software without
 restriction, including without limitation the rights to use,
 copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the
 Software is furnished to do so, subject to the following
 conditions:
 
 The above copyright notice and this permission notice shall be
 included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 OTHER DEALINGS IN THE SOFTWARE.
 
 NSObject (NSMethodTimeLogger).m
 NSMethodTimeLogger
 
 Created by Rahul Nadella on 06/04/13.
 Copyright 2013 Rahul Nadella. All rights reserved.
 */

#import "NSObject+NSMethodTimeLogger.h"
/*
 The implementation of the NSObject+NSMethodTimeLogger category
 
 @since 1.0
 @version 1.0
 */
@implementation NSObject (NSMethodTimeLogger)

#pragma mark - logTimeElapsedPerMethod method

- (void) logTimeElapsedPerMethod:(void (^)(void)) block withMethodDescription:(NSString*) methodDescription
{
    /* Absolute start time measured in seconds */
    double a = CFAbsoluteTimeGetCurrent();
	
    /* Execute block of operations if set */
    block();
    
    /* Absolute end time measured in seconds */
    double b = CFAbsoluteTimeGetCurrent();
    
    /* convert from seconds to milliseconds */
	unsigned int m = ((b-a) * 1000.0f); 
    
	NSLog(@"%@: %d ms", methodDescription ? methodDescription : @"Time Taken to Run Method", m);
}

@end
