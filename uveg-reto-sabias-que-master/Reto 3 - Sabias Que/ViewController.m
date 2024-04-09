//
//  ViewController.m
//  Reto 3 - Sabias Que
//
//  Created by Forte Apps on 19/07/20.
//  Copyright © 2020 UVEG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *datosComida;
@property (nonatomic, strong) NSArray *datosHumano;
@property (nonatomic, strong) NSArray *datosHistoria;
@property (nonatomic, assign) NSInteger currentIndexComida;
@property (nonatomic, assign) NSInteger currentIndexHumano;
@property (nonatomic, assign) NSInteger currentIndexHistoria;
@property (nonatomic, weak) IBOutlet UILabel *datoCuriosoLabel;
@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Inicializa los datos curiosos para cada categoria
    self.datosComida = @[@"Los jitomates y los pepinos son frutas", @"Los ejotes son lo mismo que las judìas verdes", @"La calabaza italiana es lo mismo que la calabacita"];
    self.datosHumano = @[@"El cuerpo humano puede resistir 8 dìas sin alimento pero sòlo 2 sin agua", @"El ADN humano es 50% idèntico al ADN de un plàtano", @"El cerebro representa el 2% del peso del cuerpo, pero consume alrededor del 20% del oxìgeno y las calorìas que comemos"];
    self.datosHistoria = @[@"Los egipcios usaban grasa humana como perfume", @"Los Juego Olìmpicos solìan otorgar medallas por el arte", @"La fiebre amarilla llegò a Barcelona en 1821 a travès de dos barcos que atracaron en un puerto. Se calcula que murìo el 10% de la poblaciòn"];
    
    // Inicializa los ìndices actuales
    self.currentIndexComida = 0;
    self.currentIndexHumano = 0;
    self.currentIndexHistoria = 0;
    
    
}

- (IBAction)categoriaComidaTapped:(id)sender{
    // Muestra el dato curioso atual y avana al siguiente
    self.datoCuriosoLabel.text = self.datosComida[self.currentIndexComida];
    self.currentIndexComida = (self.currentIndexComida + 1) % self.datosComida.count;
}

- (IBAction)categoriaHumanoTapped:(id)sender {
    // Muestra el dato curioso y avanza al sigueinte
    self.datoCuriosoLabel.text = self.datosHumano[self.currentIndexHumano];
    self.currentIndexHumano = (self.currentIndexHumano +1) % self.datosHumano.count;
}

-(IBAction)categoriaHistoriaTapped:(id)sender {
    self.datoCuriosoLabel.text = self.datosHistoria[self.currentIndexHistoria];
    self.currentIndexHistoria = (self.currentIndexHistoria + 1) % self.datosHistoria.count;
}


@end
