//
//  IDLog.h
//  idlFrame
//  Abstract:Colorful & Interesting Log helper ：］
//  Created by Nick(xuli02) on 15/1/22.
//  Copyright (c) 2015年 Baidu. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    IDLogTypeError,
    IDLogTypeWarning,
    IDLogTypeDebug,
    IDLogTypeInfo,
} IDLogType;

#define IDLog(type,log) ([IDLog idlLogWithType:type andLogString:log andFileName:__FILE__ andLineNumber:__LINE__])

@interface IDLog : NSObject

+ (void)idlLogWithType:(IDLogType)type andLogString:log andFileName:(char *)fileName andLineNumber:(NSInteger)lineNumber;

@end
