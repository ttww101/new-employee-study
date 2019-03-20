//
//  ADEvent.m
//  test
//
//  Created by PengFan Hsieh on 2018/12/11.
//  Copyright © 2018 bc. All rights reserved.
//

#import "ADEvent.h"
#import <AVOSCloud/AVOSCloud.h>

@implementation ADEvent

+(instancetype)initWithObject:(NSDictionary *)obj{
    ADEvent *event = [[ADEvent alloc]init];
    event.url = [obj objectForKey:@"url"];
    event.startAt = [obj objectForKey:@"startAt"];
    event.endAt = [obj objectForKey:@"endAt"];
    return event;
}

@end
