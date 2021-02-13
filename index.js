// const express = require('express'); //Requieres la biblioteca o framework 
// Ojo esta es la versión anterior de llamar a la biblioteca y es commonjs
// Esta manera no es nativa de javaScript

import express from 'express'; //forma nueva con los modulos nativos de javaScript
import router from './routes/index.js';
import db from './config/db.js';
import dotenv from 'dotenv';

dotenv.config({ path: 'variables.env' });

const app = express(); //Se lo asignas a una variable

//Conectar a la base de datos;
db.authenticate()
    .then(() => console.log('Conectado a la base de datos'))
    .catch(error => console.error(`${error}`))

//Habilitar pug:
app.set('view engine', 'pug');

//Obtener el año actual:
app.use((req, res, next) => {
    const year = new Date();
    res.locals.actualYear = year.getFullYear();
    res.locals.nombreSitio = 'Agencia de Viajes';
    next();
});

//Definir la carpeta publica para buscar las imagenes:
app.use(express.static('public'));

//Agregar body parse para leer los datos del formulario:
app.use(express.urlencoded({ extended: true }));

//Agregar Router:
app.use('/', router);

/* Puerto y host para la APP */

//Definir puerto:

const host = process.env.HOST || '0.0.0.0'
const port = process.env.PORT || 4000; //asignas el puerto

app.listen(port, host, () => { //Aquí Arrancas el servidor
    console.log(`El servidor esta funcionando en el puerto ${port}`);
});