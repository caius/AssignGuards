//
//  Foo.h
//  AssignGuards
//
//  Created by Caius Durling on 13/09/2010.
//  Copyright 2010 Swedishcampground Software. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Foo : NSObject {
  NSString *_sed;
  NSString *_bar;
  NSString *_fred;
  NSString *_george;
  NSString *_size;
  NSString *_x;
  NSString *_y;
}

@property (nonatomic, copy) NSString *sed;
@property (nonatomic, copy) NSString *bar;
@property (nonatomic, copy) NSString *fred;
@property (nonatomic, copy) NSString *george;
@property (nonatomic, copy) NSString *size;
@property (nonatomic, copy) NSString *x;
@property (nonatomic, copy) NSString *y;

@end
