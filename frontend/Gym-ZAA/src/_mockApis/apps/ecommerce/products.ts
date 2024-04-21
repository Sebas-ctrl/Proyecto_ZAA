import mock from '../../mockAdapter';

// third-party
import { add, sub } from 'date-fns';
import { Chance } from 'chance';
import product1 from '@/assets/images/products/s11.jpg';
import product2 from '@/assets/images/products/s2.jpg';
import product3 from '@/assets/images/products/s3.jpg';
import product4 from '@/assets/images/products/s4.jpg';
import product5 from '@/assets/images/products/s5.jpg';
import product6 from '@/assets/images/products/s6.jpg';
import product7 from '@/assets/images/products/s7.jpg';
import product8 from '@/assets/images/products/s8.jpg';

//Types
import type { Products } from '@/types/apps/EcommerceType';

const chance = new Chance();
// products list
const products: Products[] = [
    {
        id: 1,
        image: product1,
        name: 'Minibandas "Disponible"',
        description:'Las minibandas son bandas elásticas de resistencia compactas y versátiles, utilizadas para ejercicios de fuerza y ​​movilidad en rutinas de entrenamiento físico.Las minibandas son bandas elásticas de resistencia compactas y versátiles, utilizadas para ejercicios de fuerza y ​​movilidad en rutinas de entrenamiento físico.',
        rating: chance.floating({ min: 0.1, max: 5.0 }),
     
        popularity: chance.natural(),
        date: chance.natural(),
        created: sub(new Date(), { days: 8, hours: 6, minutes: 20 }),
        
    },
    {
        id: 2,
        image: product2,
        name: 'Torre Inflable "Disponible"',
        description:'Una torre inflable de gimnasio es un equipo de ejercicio que consiste en una estructura inflable con múltiples estaciones integradas para realizar diferentes ejercicios de fuerza y ​​flexibilidad. Este tipo de aparato proporciona una alternativa portátil y versátil para entrenar en interiores o exteriores.',
        popularity: chance.natural(),
        
        created: sub(new Date(), { days: 10, hours: 8, minutes: 69 }),
      
    },
    {
        id: 3,
        image: product3,
        name: 'Bola Gimnasia "Agotado"',
        description: 'Una bola de gimnasia, también conocida como bola de estabilidad o fitball, es un equipo de entrenamiento que consiste en una pelota grande y resistente hecha de material elástico. Se utiliza para realizar una variedad de ejercicios que ayudan a mejorar el equilibrio, la fuerza central, la flexibilidad y la estabilidad.',
        rating: chance.floating({ min: 0.1, max: 5.0 }),
        popularity: chance.natural(),
        date: chance.natural(),
        created: sub(new Date(), { days: 4, hours: 9, minutes: 50 }),
    },
    {
        id: 4,
        image: product4,
        name: 'Mancuerna "Disponible"',
        description: 'Una mancuerna es un equipo de entrenamiento utilizado en ejercicios de fuerza que consiste en una barra corta con pesos en ambos extremos. Se utiliza para realizar una amplia gama de ejercicios de levantamiento de peso, fortalecimiento muscular y tonificación, tanto para la parte superior como inferior del cuerpo. Las mancuernas vienen en una variedad de pesos y tamaños para adaptarse a diferentes niveles de habilidad y objetivos de entrenamiento.',
        
        popularity: chance.natural(),
        date: chance.natural(),
        created: sub(new Date(), { days: 7, hours: 6, minutes: 45 }),
        
    },
    {
        id: 5,
        image: product5,
        name: 'Maquina "Mantenimiento"',
        description: 'Una máquina para pectorales y brazos es un equipo de gimnasio diseñado específicamente para fortalecer los músculos del pecho y los brazos. Estas máquinas suelen incluir diferentes estaciones o ajustes que permiten realizar ejercicios específicos para el pecho, como press de pecho y flys, así como ejercicios para los brazos, como curls de bíceps y extensiones de tríceps. Ayudan a trabajar de manera efectiva estos grupos musculares de forma segura y controlada.',
        rating: chance.floating({ min: 0.1, max: 5.0 }),
        
        popularity: chance.natural(),
        date: chance.natural(),
        created: sub(new Date(), { days: 2, hours: 9, minutes: 45 }),
       
    },
    {
        id: 6,
        image: product6,
        name: 'Brincolin "Disponible"',
        description: 'Un brincolín de gimnasio es una estructura elástica y resistente que se utiliza para realizar ejercicios de saltos y rebotes. Consiste en una superficie de tela tensada sobre un marco metálico con resortes, diseñado para absorber el impacto y proporcionar un rebote controlado. Se utiliza para mejorar la resistencia cardiovascular, la coordinación y la fuerza de piernas, así como para actividades de calentamiento y entrenamiento de bajo impacto.',
        rating: chance.floating({ min: 0.1, max: 5.0 }),
        
        popularity: chance.natural(),
        date: chance.natural(),
        created: add(new Date(), { days: 6, hours: 10, minutes: 0 }),
        
    },
    {
        id: 7,
        image: product7,
        name: 'Tabla Abdominal Básica "No Disponible"',
        description: 'Una tabla abdominal básica es un equipo de gimnasio diseñado específicamente para ejercitar los músculos abdominales. Consiste en una tabla acolchada con una almohadilla para la cabeza y un soporte para los pies. Se utiliza principalmente para realizar ejercicios de crunches y variaciones de abdominales, ayudando a fortalecer y tonificar los músculos del core. Es una herramienta efectiva para mejorar la fuerza y la estabilidad del abdomen.',
        rating: chance.floating({ min: 0.1, max: 5.0 }),
       
        popularity: chance.natural(),
        date: chance.natural(),
        created: add(new Date(), { days: 14, hours: 1, minutes: 55 }),
        
    },
    {
        id: 8,
        image: product8,
        name: 'Liga de Resistencia "Disponible"',
        description: 'Una liga de resistencia es un equipo de entrenamiento que consiste en una banda elástica utilizada para añadir resistencia a los ejercicios. Estas bandas vienen en diferentes niveles de resistencia, determinados por el grosor y la fuerza de la banda. Se utilizan para una amplia variedad de ejercicios de fuerza, ​​flexibilidad y rehabilitación, ofreciendo resistencia variable para trabajar diferentes grupos musculares. Las ligas de resistencia son portátiles y versátiles, lo que las hace ideales para entrenamiento en casa o en cualquier lugar.',
        popularity: chance.natural(),
        date: chance.natural(),
        created: sub(new Date(), { days: 0, hours: 11, minutes: 10 }),
      
    }
];

// ==============================|| MOCK SERVICES ||============================== //

// mock.onGet('/api/products/list').reply(200, { products });
mock.onGet('/api/products/list').reply(() => {
    return [200, products];
});

export default products;

