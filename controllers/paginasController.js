import { Viaje } from '../models/Viajes.js';
import { Testimonial } from '../models/Testimoniales.js';

const paginaInicio = async (req, res) => { //req- lo que enviamos : res- lo que express responde

    const promiseDB = [];
    promiseDB.push(Viaje.findAll({ limit: 3 }));
    promiseDB.push(Testimonial.findAll({ limit: 3 }));

    try {
        const respuesta = await Promise.all(promiseDB);
        const viajes = respuesta[0];
        const testimoniales = respuesta[1];

        res.render('inicio', {
            pagina: 'Inicio',
            clase: 'home',
            viajes,
            testimoniales
        });
    } catch (error) {
        console.log(error);
    }
};

const paginaNosotros = (req, res) => {
    res.render('nosotros', {
        pagina: 'Nosotros'
    });
}

const paginaViajes = async (req, res) => {
    try {
        const viajes = await Viaje.findAll();
        res.render('viajes', {
            pagina: 'Destinos',
            viajes
        });
    } catch (error) {
        console.log(error);
    }
    //console.log(viajes);
};

const paginaTestimoniales = async (req, res) => {

    try {
        const testimoniales = await Testimonial.findAll();
        res.render('testimoniales', {
            pagina: 'Testimoniales',
            testimoniales
        })
    } catch (error) {
        console.log(error);
    }
};

//Muestra la pagina por su slug:
const paginaDetalleViaje = async (req, res) => {
    const { destino } = req.params;
    try {
        const viaje = await Viaje.findOne({ where: { slug: destino } });
        res.render('viaje', {
            pagina: 'Información Viaje',
            viaje
        });
    } catch (error) {
        console.log(error);
    }
};

export {
    paginaInicio,
    paginaNosotros,
    paginaViajes,
    paginaTestimoniales,
    paginaDetalleViaje
};