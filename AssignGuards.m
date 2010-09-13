#import <Foundation/Foundation.h>
#import "Foo.h"

int main (int argc, const char * argv[]) {
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  
  NSDictionary *a = [NSDictionary dictionaryWithObjectsAndKeys:
  @"sed", @"sed",
  [NSNull null], @"bar",
  @"fred", @"fred",
  [NSNull null], @"george",
  @"size", @"size",
  @"x", @"x",
  @"y", @"y",
  nil];
  
  NSLog(@"a: %@", a);

  
#pragma mark -
  printf("\n\n");
  NSLog(@"If statements");
  
  Foo *f = [Foo new];
  
  if ([a valueForKey:@"bar"] != [NSNull null])
    f.bar = [a valueForKey:@"bar"];

  if ([a valueForKey:@"fred"] != [NSNull null])
    f.fred = [a valueForKey:@"fred"];

  if ([a valueForKey:@"george"] != [NSNull null])
    f.george = [a valueForKey:@"george"];

  if ([a valueForKey:@"sed"] != [NSNull null])
    f.sed = [a valueForKey:@"sed"];

  if ([a valueForKey:@"size"] != [NSNull null])
    f.size = [a valueForKey:@"size"];

  if ([a valueForKey:@"x"] != [NSNull null])
    f.x = [a valueForKey:@"x"];

  if ([a valueForKey:@"y"] != [NSNull null])
    f.y = [a valueForKey:@"y"];

  
  NSLog(@"f.bar: %@", f.bar);
  NSLog(@"f.fred: %@", f.fred);
  NSLog(@"f.george: %@", f.george);
  NSLog(@"f.sed: %@", f.sed);
  NSLog(@"f.size: %@", f.size);
  NSLog(@"f.x: %@", f.x);
  NSLog(@"f.y: %@", f.y);
  
#pragma mark -
  printf("\n\n");
  NSLog(@"Magic");
  
  Foo *f2 = [Foo new];

  NSArray *keys = [NSArray arrayWithObjects:@"bar", @"fred", @"george", @"sed", @"size", @"x", @"y", nil];

  for (NSString *k in keys) {
    if ([a valueForKey:k] != [NSNull null]) {
      [f2 setValue:[a valueForKey:k] forKey:k];
    }
  }
  
  NSLog(@"f2.bar: %@", f2.bar);
  NSLog(@"f2.fred: %@", f2.fred);
  NSLog(@"f2.george: %@", f2.george);
  NSLog(@"f2.sed: %@", f2.sed);
  NSLog(@"f2.size: %@", f2.size);
  NSLog(@"f2.x: %@", f2.x);
  NSLog(@"f2.y: %@", f2.y);

  [pool drain];
  return 0;
}
