//
//     Generated by class-dump 3.5 (64 bit).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2013 by Steve Nygard.
//

#import "SPQuery.h"

@class NSArray, NSObject<OS_dispatch_queue>;

@interface SPCalculatorQuery : SPQuery
{
    NSObject<OS_dispatch_queue> *_queue;
    NSArray *_results;
}

+ (BOOL)isQuerySupported:(unsigned long long)arg1;
+ (void)initialize;
+ (void)cacheSeparators;
@property(retain) NSArray *results; // @synthesize results=_results;
- (void).cxx_destruct;
- (BOOL)isCalculatorQuery;
- (void)start;
- (id)initWithUserQuery:(id)arg1 options:(unsigned long long)arg2;

@end
