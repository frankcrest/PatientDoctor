//
//  main.m
//  PatientDoctor
//
//  Created by Frank Chen on 2019-05-02.
//  Copyright © 2019 Frank Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        Patient* patient1 = [[Patient alloc]initWithName:@"kobe" withAge:24];
        Patient* patientWithoutHealthCard = [[Patient alloc]initWithName:@"shaq" withAge:30];
        
        Doctor* doctor1 = [[Doctor alloc]initWithName:@"Phil" withSpecialization:@"heart operations"];
        
        patient1.hasHealthCard = YES;
        patient1.healthCardNumber = @"123";
        
        patientWithoutHealthCard.hasHealthCard = NO;
        
        NSLog(@"%hhd",[doctor1 allowPatientToVisit:patient1]);
        NSLog(@"%hhd",[doctor1 allowPatientToVisit:patientWithoutHealthCard]);
        
        [patient1.symptoms addObject:@"Cold"];
        NSLog(@"%@",patient1.symptoms);
        
        NSLog(@"%@",[doctor1 requestMedicationForPatient:patient1]);
        NSLog(@"%@",[doctor1 requestMedicationForPatient:patient1]);
        NSLog(@"%@",[doctor1 requestMedicationForPatient:patient1]);
        
        NSLog(@"%@", [patient1 prescriptionsReceived]);
    }
    return 0;
}
