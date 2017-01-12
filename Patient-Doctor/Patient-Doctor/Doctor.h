//
//  Doctor.h
//  Patient-Doctor
//
//  Created by Alex Bearinger on 2017-01-12.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Medication.h"

@interface Doctor : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *specialization;
@property (nonatomic) NSMutableSet *patients;

-(instancetype)initWithName:(NSString *)name specialization:(NSString *)specialization;

-(BOOL)acceptedPatient:(Patient *)patient;

-(Medication *)medicate:(Patient *)patient;

@end
