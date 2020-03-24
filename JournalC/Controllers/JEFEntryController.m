//
//  JEFEntryController.m
//  JournalC
//
//  Created by Jordan Furr on 3/24/20.
//  Copyright © 2020 Jordan Furr. All rights reserved.
//

#import "JEFEntryController.h"
#import "JEFEntry.h"


@implementation JEFEntryController

//MARK: shared instance

+ (JEFEntryController *) shared {
    static JEFEntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [JEFEntryController new];
    });
    return shared;
}

//MARK: initializer
- (instancetype)init
{
    self = [super init];
    return self;
}

//MARK: Helper Methods
- (void)addEntry:(JEFEntry *)entry {
    NSMutableArray *entries = _entries;
    JEFEntry *entry1 = [[JEFEntry alloc] initWithTitle:entry.title text:entry.text];
    [entries removeObject:entry1];
}
- (void)removeEntry:(JEFEntry *)entry{
    NSMutableArray *entries = _entries;
    NSInteger index = [_entries indexOfObject:(entry)];
    [entries removeObjectAtIndex:index];
}

- (void) update:(JEFEntry *)entry{
    NSMutableArray *entries = _entries;
    NSInteger index = [_entries indexOfObject:(entry)];
    
}


@end
