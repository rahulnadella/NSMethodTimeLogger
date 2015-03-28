NSMethodTimeLogger
==================

Overview
----------

The NSMethodTimeLogger measures the time elapsed when a specific method or function is executed.  The elapsed time is outputted in milliseconds.

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
