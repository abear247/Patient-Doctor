//
//  Doctor.m
//  Patient-Doctor
//
//  Created by Alex Bearinger on 2017-01-12.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

-(instancetype)initWithName:(NSString *)name specialization:(NSString *)specialization{
    self = [super init];
    if (self){
        _name = name;
        _specialization = specialization;
        _patients = [[NSMutableSet alloc]init];
    }
        return self;
}

-(BOOL)acceptedPatient:(Patient *)patient{
    if(!patient.validCard){
        NSLog(@"invalid health care card");
        return NO;
    }
    [self.patients addObject:patient];
}

-(Medication *)medicate:(Patient *)patient{
    NSMutableSet *symptoms = patient.symptoms;
    if ([symptoms containsObject:@"headache"]){
        Medication *medication = [[Medication alloc] initWithName:@"Aleve" purpose:@"treat headache" amount:2];
        [patient.medications addObject:medication];
        return medication;
        }
    if ([symptoms containsObject:@"back pain"]){
        Medication *medication = [[Medication alloc] initWithName:@"Tylonal" purpose:@"back pain" amount:1];
        [patient.medications addObject:medication];
        return medication;
    }
    return nil;
}

@end
