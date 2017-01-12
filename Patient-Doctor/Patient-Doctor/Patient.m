//
//  Patient.m
//  Patient-Doctor
//
//  Created by Alex Bearinger on 2017-01-12.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "Patient.h"

@implementation Patient


-(instancetype)initWithName:(NSString *)name age:(NSInteger)age{
    self = [super init];
    if (self){
        _name = name;
        _age = age;
        _symptoms = [[NSMutableSet alloc]init];
    }
        
    return self;
}

-(void)visitDoctor:(Doctor *)doctor{
    if(![doctor acceptedPatient:self])
        return;
}

-(void)requestMedication:(Doctor *)doctor{
    if(![doctor.patients containsObject:self]){
        NSLog(@"Not a patient");
        return;
    }
    [doctor medicate:self];
}

@end
