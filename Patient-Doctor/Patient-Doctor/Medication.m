//
//  Medications.m
//  Patient-Doctor
//
//  Created by Alex Bearinger on 2017-01-12.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "Medication.h"

@implementation Medication

-(instancetype)initWithName:(NSString *)name purpose:(NSString *)purpose amount:(NSInteger)amount{
    self = [super init];
    if (self){
        _name = name;
        _purpose = purpose;
        _amount = amount;
    }
    return self;
}

@end
