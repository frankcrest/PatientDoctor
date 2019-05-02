//
//  Doctor.h
//  PatientDoctor
//
//  Created by Frank Chen on 2019-05-02.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject

@property NSString* name;
@property NSString* specialization;
@property NSMutableSet* patientHealthCardNumbers;

-(instancetype)initWithName:(NSString*)name withSpecialization:(NSString*)specialization;

-(BOOL)allowPatientToVisit:(Patient*)patient;

-(NSMutableArray*)requestMedicationForPatient:(Patient*)patient;

@end

NS_ASSUME_NONNULL_END
