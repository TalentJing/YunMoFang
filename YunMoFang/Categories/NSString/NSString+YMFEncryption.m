//
//  NSString+YMFEncryption.m
//  YunMoFang
//
//  Created by Talent Wang on 2017/2/22.
//  Copyright © 2017年 Yunyun Network Technology Co.,Ltd. All rights reserved.
//

#import "NSString+YMFEncryption.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (YMFEncryption)

- (NSString *)md5{
    const char *cStr = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, (uint32_t)strlen(cStr), result);
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3], result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11], result[12], result[13], result[14], result[15]
            ];
}

@end
