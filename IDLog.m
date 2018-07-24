//
//  IDLog.m
//  idlFrame
//  Abstract:Colorful & Interesting Log helper ：］
//  Created by Nick(xuli02) on 15/1/22.
//  Copyright (c) 2015年 Baidu. All rights reserved.
//

#import "IDLog.h"

@implementation IDLog

+ (void)idlLogWithType:(IDLogType)type andLogString:(NSString *)log andFileName:(char *)fileName andLineNumber:(NSInteger)lineNumber
{
#ifdef DEBUG
    NSString *idlPrefix = @"ℹ️ IDLogInfo:";
    switch (type) {
        case IDLogTypeError:
            idlPrefix = @"❌ IDLogError:";
            break;
        case IDLogTypeWarning:
            idlPrefix = @"⚠️ IDLogWarning:";
            break;
        case IDLogTypeDebug:
            idlPrefix = @"🔧 IDLogDebug:";
        default:
            break;
    }
    
    NSString *file = [NSString stringWithUTF8String:fileName];
    file = [file lastPathComponent];
    
    NSLog(@"%@ %@(%ld) - %@",idlPrefix,file,lineNumber,log);
#endif
}

@end
