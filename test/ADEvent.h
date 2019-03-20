//
//  ADEvent.h
//  test
//
//  Created by PengFan Hsieh on 2018/12/11.
//  Copyright © 2018 bc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ADEvent : NSObject

+(instancetype)initWithObject:(NSDictionary *)obj;

@property (nonatomic,copy) NSString *objectId;
@property (nonatomic,copy) NSString *url;
@property (nonatomic,copy) NSDate *startAt;
@property (nonatomic,copy) NSDate *endAt;

@end

NS_ASSUME_NONNULL_END
