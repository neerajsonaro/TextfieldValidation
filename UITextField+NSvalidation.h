//
//  UITextField+NSvalidation.h
//  TextfieldValidation
//
//  Created by GBS-mac on 24/10/17.
//  Copyright © 2017 Globussoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (NSvalidation) <UITextFieldDelegate>

- (BOOL) requiredText;
- (BOOL) maximumTextRange:(NSString *) maxRange;
- (BOOL) validEmailAddress;
- (BOOL) validatePhoneNumber;
-(BOOL)allowAlphaNumeric;
-(BOOL)allowOnlyAlphabets;
-(BOOL)allowOnlyNumbers;
@end
