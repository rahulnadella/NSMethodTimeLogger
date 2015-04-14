NSMethodTimeLogger
==================

Overview
----------

The NSMethodTimeLogger measures the time elapsed when a specific method or function is executed.  The elapsed time is outputted in milliseconds.

#####Version
>Version 1.0 - Design and Implementation of the NSMethodTimeLogger

#####Build
>Master -> Only works on iOS 5.0 or greater

Usage
----------

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

Output
---------
        
        2015-03-27 22:07:08.966 NSMethodTimeLoggerDemo[69436:c07] Executing Challenge Method: 1814 ms

License
--------

*MIT License* --> A short, permissive software license. Basically, you can do whatever you want as long as you include the original copyright and license notice in any copy of the software/source.  There are many variations of this license in use.
