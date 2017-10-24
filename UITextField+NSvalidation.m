//
//  UITextField+NSvalidation.m
//  TextfieldValidation
//
//  Created by GBS-mac on 24/10/17.
//  Copyright © 2017 Globussoft. All rights reserved.
//

#import "UITextField+NSvalidation.h"

@implementation UITextField (NSvalidation)

//Validate Text
-(BOOL)requiredText{
    if (self.text.length>0) {
        return YES;
    }
    return NO;
}

//Maximum Text Range
-(BOOL)maximumTextRange:(NSString *)maxRange
{
       if (self.text.length > [maxRange intValue]) {
           return NO;
    }
    return YES;
}

//Validate Phone Number
-(BOOL)validatePhoneNumber{
    
    NSString *phoneNumber = self.text;
    NSString *phoneRegex = @"[235689][0-9]{6}([0-9]{3})?";
    NSPredicate *test = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", phoneRegex];
    BOOL matches = [test evaluateWithObject:phoneNumber];
    return matches;
}

//Allow Alpha Numeric
-(BOOL)allowAlphaNumeric
{
    NSCharacterSet *myCharSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"];
    for (int i = 0; i < [self.text length]; i++)
    {
        unichar c = [self.text characterAtIndex:i];
        if (![myCharSet characterIsMember:c])
        {
            return NO;
        }
    }
       return YES;
}

-(BOOL)allowOnlyNumbers{
    
    NSCharacterSet *numbersOnly = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
    NSCharacterSet *characterSetFromTextField = [NSCharacterSet characterSetWithCharactersInString:self.text];
    
    BOOL stringIsValid = [numbersOnly isSupersetOfSet:characterSetFromTextField];
    return stringIsValid;
 }

-(BOOL)allowOnlyAlphabets
{
    NSCharacterSet *myCharSet = [NSCharacterSet characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"];
    for (int i = 0; i < [self.text length]; i++)
    {
        unichar c = [self.text characterAtIndex:i];
        if (![myCharSet characterIsMember:c])
        {
            return NO;
        }
    }
    return YES;
}


//Validate Email
-(BOOL)validateRegEx:(NSString *)regexString{
    NSError *error = NULL;
    NSRegularExpression *regex = [NSRegularExpression  regularExpressionWithPattern:regexString options:NSRegularExpressionCaseInsensitive error:&error];
    
    NSUInteger numberOfMatches = [ regex numberOfMatchesInString:self.text options:0 range:NSMakeRange(0, [self.text length])];
    return numberOfMatches>0;
}

-(BOOL)validEmailAddress{
    return [self validateRegEx:@"[A-Z0-9a-z][A-Z0-9a-z._%+-]*@[A-Za-z0-9][A-Za-z0-9.-]*\\.[A-Za-z]{2,6}"];
}



@end
