//
//  JEFEntry.m
//  JournalC
//
//  Created by Jordan Furr on 3/24/20.
//  Copyright © 2020 Jordan Furr. All rights reserved.
//

#import "JEFEntry.h"

@implementation JEFEntry

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text
{
    self = [super init];
    
    if (self) {
        _title = [title copy];
        _text = [text copy];
        _timestamp = [NSDate now];
    }
    
    return self;
}
@end
