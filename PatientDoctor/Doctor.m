//
//  Doctor.m
//  PatientDoctor
//
//  Created by Frank Chen on 2019-05-02.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *)name withSpecialization:(NSString *)specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _patientHealthCardNumbers = [[NSMutableSet alloc]init];
    }
    return self;
}

- (BOOL)allowPatientToVisit:(Patient*)patient{
    if (patient.hasHealthCard) {
        [_patientHealthCardNumbers addObject:patient.healthCardNumber];
        return YES;
    } else{
        return NO;
    }
}

- (NSMutableArray*)requestMedicationForPatient:(Patient *)patient{
    NSMutableArray* prescriptions = [NSMutableArray new];
    if ([_patientHealthCardNumbers containsObject:patient.healthCardNumber]) {
        for (NSString* symptom in patient.symptoms) {
            if ([symptom isEqualToString:@"Cold"]) {
                [prescriptions addObject:@"Tylenol"];
                [patient.symptoms removeObject:@"Cold"];
            } else if ([symptom isEqualToString:@"Fever"]){
                [prescriptions addObject:@"SuperDrug"];
                [patient.symptoms removeObject:@"Fever"];
            }
        }
        for (NSString* prescription in prescriptions) {
            [patient.prescriptionsReceived addObject:prescription];
        }
    }
    return prescriptions;
}

@end
