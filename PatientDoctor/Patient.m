//
//  Patient.m
//  PatientDoctor
//
//  Created by Frank Chen on 2019-05-02.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name withAge:(int)age
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _symptoms = [[NSMutableSet alloc]init];
        _prescriptionsReceived = [[NSMutableArray alloc]init];
    }
    return self;
}


@end
