//
//  Patient.h
//  PatientDoctor
//
//  Created by Frank Chen on 2019-05-02.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Patient : NSObject

@property (nonatomic)NSString* name;
@property (nonatomic)int age;
@property (nonatomic) BOOL hasHealthCard;
@property (nonatomic) NSString* healthCardNumber;
@property (nonatomic)NSMutableSet* symptoms;
@property (nonatomic, readonly)NSMutableArray* prescriptionsReceived;

-(instancetype)initWithName:(NSString*)name withAge:(int)age;

@end

NS_ASSUME_NONNULL_END
