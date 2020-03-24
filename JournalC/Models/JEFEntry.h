//
//  JEFEntry.h
//  JournalC
//
//  Created by Jordan Furr on 3/24/20.
//  Copyright © 2020 Jordan Furr. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JEFEntry : NSObject

@property (nonatomic, copy, readwrite) NSString *title;
@property (nonatomic, copy, readwrite) NSString *text;
@property (nonatomic, copy, readwrite) NSDate *timestamp;

-(instancetype)initWithTitle: (NSString *)title
                        text: (NSString *)text;


@end

NS_ASSUME_NONNULL_END
