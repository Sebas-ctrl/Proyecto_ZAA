import mock from '../../mockAdapter';
// import type { ContactType } from '@/types/apps/ContactType';

import user1 from '@/assets/images/profile/user-1.jpg';
import user2 from '@/assets/images/profile/user-2.jpg';
import user3 from '@/assets/images/profile/user-3.jpg';
import user4 from '@/assets/images/profile/user-4.jpg';
import user5 from '@/assets/images/profile/user-5.jpg';
import user6 from '@/assets/images/profile/user-6.jpg';
import user7 from '@/assets/images/profile/user-7.jpg';


fetch('http://localhost:8000/gimnasio/api/v1Equipo/')
            .then(res => {
                if (!res.ok) {
                    throw new Error('Error al obtener los registros');
                }
                return res.json();
            })
            .then(equipo => {
		console.log(equipo)
            })
            .catch(error => {
                console.error('Error al obtener los registros: ' + error);
            });
// types
export type KeyedObject = {
    [key: string]: string | number | KeyedObject | any;
};

const contacts: KeyedObject[] = [
    {
        id: '123',
        userinfo: 'Minibandas',
        phone: 'Las minibandas son bandas elásticas de resistencia compactas y versátiles, utilizadas para ejercicios de fuerza y ​​movilidad en rutinas de entrenamiento físico.',
        jdate: '12-10-2014',
    },
    {
        id: '452',
        userinfo: 'Torre Inflable',
        phone: 'Una torre inflable de gimnasio es un equipo de ejercicio que consiste en una estructura inflable con ',
        jdate: '10-09-2014',
    },
    {
        id: '65',
        userinfo: 'Bola Gimnasia',
        phone: 'Una bola de gimnasia, también conocida como bola de estabilidad o fitball, es un equipo de entrenamiento que consiste en una pelota grande y resistente hecha de ',
        jdate: '01-10-2013',
    },
    {
        id: '785',
        userinfo: 'Mancuerna',
        phone: 'Una mancuerna es un equipo de entrenamiento utilizado en ejercicios de fuerza que consiste en una barra corta con pesos en ambos extremos',
        jdate: '02-10-2017',
    },
    {
        id: '564',
        userinfo: 'Brincolin',
        phone: 'Un brincolín de gimnasio es una estructura elástica y resistente que se utiliza para realizar ejercicios de saltos y rebotes. ',
        jdate: '10-9-2015',
    },
    {
        id: '980',
        userinfo: 'Tabla Abdominal',
        phone: 'Una tabla abdominal básica es un equipo de gimnasio diseñado específicamente para ejercitar los músculos abdominales. ',
        jdate: '10-5-2013',
    },
    {
        id: '521',
        userinfo: 'Liga de Resistencia',
        phone: 'Una máquina para pectorales y brazos es un equipo de gimnasio diseñado específicamente para fortalecer los músculos del pecho y los brazos.',
        jdate: '05-10-2012',
    },
    
];

// ==============================|| MOCK SERVICES ||============================== //

// mock.onGet('/api/products/list').reply(200, { products });
mock.onGet('/api/contacts').reply(() => {
    return [200, contacts];
});


export default contacts;
