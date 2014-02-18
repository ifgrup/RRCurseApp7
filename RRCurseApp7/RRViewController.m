//
//  RRViewController.m
//  RRCurseApp7
//
//  Created by rrodriguez on 18/02/14.
//  Copyright (c) 2014 EveronGames. All rights reserved.
//

#import "RRViewController.h"

@interface RRViewController ()

@end

@implementation RRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction) pulsacion:(id) sender {
	UIButton *boton = (UIButton*) sender;
    
	if ([boton.titleLabel.text isEqualToString: @"+"]) {
		operador = SUMA;
		operando = [[display text] doubleValue];
		[display setText: @""];
	}
	else if ([boton.titleLabel.text isEqualToString: @"-"]) {
		operador = RESTA;
		operando = [[display text] doubleValue];
		[display setText: @""];
	}
	else if ([boton.titleLabel.text isEqualToString: @"x"]) {
		operador = MULTIPLICACION;
		operando = [[display text] doubleValue];
		[display setText: @""];
	}
	else if ([boton.titleLabel.text isEqualToString: @"/"]) {
		operador = DIVISION;
		operando = [[display text] doubleValue];
		[display setText: @""];
	}
	else if ([boton.titleLabel.text isEqualToString: @"="]) {
		switch (operador) {
			case SUMA:
				display.text = [NSString stringWithFormat:@"%f",  operando + [[display text] doubleValue]];
				operando = 0;
				break;
			case RESTA:
				display.text = [NSString stringWithFormat:@"%f",  operando - [[display text] doubleValue]];
				operando = 0;
				break;
			case MULTIPLICACION:
				display.text = [NSString stringWithFormat:@"%f",  operando * [[display text] doubleValue]];
				operando = 0;
				break;
			case DIVISION:
				display.text = [NSString stringWithFormat:@"%f",  operando / [[display text] doubleValue]];
				operando = 0;
				break;
			default:
				display.text = @"";
				break;
		}
		operando = 0;
		operador = IGUAL;
	}
	else {
		if (operador != IGUAL)
		{
			[display setText: [[display text] stringByAppendingString:boton.titleLabel.text]];
		}
		else {
			[display setText: boton.titleLabel.text];
			operador = NADA;
		}
        
	}
}

@end
