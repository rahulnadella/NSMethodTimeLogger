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
 
 NSMethodTimeLoggerTests.m
 NSMethodTimeLogger
 
 Created by Rahul Nadella on 06/04/13.
 Copyright 2013 Rahul Nadella. All rights reserved.
 */

#import "NSMethodTimeLoggerTests.h"

/*
 The implementation of the NSMethodTimeLoggerTests inteface.
 
 @since 1.0
 @version 1.0
 */
@implementation NSMethodTimeLoggerTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (int) challenge
{
    int h = 0;
    int i = 20;
    int j = 25;
    
    int k = (i > j) ? 10: 5;
    
    if ( 5 < j - k)
    {
        printf("The first expression is true.");
    } else if ( j > i)
    {
        printf("The second expression is true.");
    } else
    {
        printf("Neither expression is true.");
    }
    
    while (h < 10000)
    {
        printf("The while loop is still running.");
        ++h;
    }
    
    return 0;
}

- (void)testNSMethodTimeLogger
{
    [self logTimeElapsedPerMethod:^{
        [self challenge];
    }
    withMethodDescription:@"Executing Challenge Method"];
}

@end
