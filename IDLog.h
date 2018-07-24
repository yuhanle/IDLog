//
//  IDLog.h
//  idlFrame

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

#define IDLog(type,fmt,...) 		\
[IDLog idlLogWithType:type andLogString:[NSString stringWithFormat:fmt,##__VA_ARGS__] andFileName:__FILE__ andLineNumber:__LINE__]
#define IDLogError(fmt,...) 		IDLog(IDLogTypeError,fmt,##__VA_ARGS__)
#define IDLogWarning(fmt,...) 	    IDLog(IDLogTypeWarning,fmt,##__VA_ARGS__)
#define IDLogDebug(fmt,...) 		IDLog(IDLogTypeDebug,fmt,##__VA_ARGS__)
#define IDLogInfo(fmt,...) 	    IDLog(IDLogTypeInfo,fmt,##__VA_ARGS__)

@interface IDLog : NSObject

+ (void)idlLogWithType:(IDLogType)type andLogString:(NSString *)log andFileName:(char *)fileName andLineNumber:(NSInteger)lineNumber;

@end
