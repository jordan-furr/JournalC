//
//  JEFEntryController.h
//  JournalC
//
//  Created by Jordan Furr on 3/24/20.
//  Copyright © 2020 Jordan Furr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JEFEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface JEFEntryController : NSObject

//MARK: Shared Instance and Source of Truth
+ (JEFEntryController *) shared;
@property (nonatomic, strong) NSMutableArray *entries;

//MARK: Helper Method
//- (NSArray *) addEntries;
- (void)addEntry:(JEFEntry *)entry;
- (void)removeEntry:(JEFEntry *)entry;
- (void)update:(JEFEntry *)entry;
@end

NS_ASSUME_NONNULL_END
