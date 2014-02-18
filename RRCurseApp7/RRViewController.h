//
//  RRViewController.h
//  RRCurseApp7
//
//  Created by rrodriguez on 18/02/14.
//  Copyright (c) 2014 EveronGames. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RRViewController : UIViewController{
    IBOutlet UITextField *display;
	double operando;
	enum operadores {
		SUMA, RESTA, MULTIPLICACION, DIVISION, IGUAL, NADA
	} operador;
}
-(IBAction) pulsacion:(id) sender;

@end
