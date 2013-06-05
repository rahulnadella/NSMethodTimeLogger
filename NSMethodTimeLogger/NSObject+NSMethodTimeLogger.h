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
 
 NSObject (NSMethodTimeLogger).h
 NSMethodTimeLogger
 
 Created by Rahul Nadella on 06/04/13.
 Copyright 2013 Rahul Nadella. All rights reserved.
 */

#import <Foundation/Foundation.h>
/*
 The NSObject+NSMethodTimeLogger category calculates the exact amount of time it takes for a specific method or function to be executed on the main thread.  The current time elaspsed is calculated and outputted to the console in milliseconds.
 
 EXAMPLE: 
 [self logTimeElapsedPerMethod:^{
        for(int i = 0 ; i < 1000000000; i ++);
 }
 withMethodDescription:@"For Loop with 1000000000"];
 
 OUTPUT: 2013-06-04 21:38:38.426 NSMethodTimeLogger[3475:c07] For Loop with 1000000000: 1746 ms
 
 @since 1.0
 @version 1.0
 */
@interface NSObject (NSMethodTimeLogger)

/*
 The logTimeElapsedPerMethod method provides the ability to calculate the time elapsed while executing a specific method or function.
 
 @since 1.0
 
 @param block
        The block containing the specific set of instructions
 @param methodDescription
        The specific description of the method being executed
 */
- (void) logTimeElapsedPerMethod:(void (^)(void)) block withMethodDescription:(NSString*) methodDescription;

@end
