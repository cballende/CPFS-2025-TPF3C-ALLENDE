# CPFS-2025-TPF2C--ALLENDE-
Trabajo practico final tercer cuatrimestre

# G2P - "Garage to Park"
Plataforma web de alquiler de estacionamientos :
*Full‑stack demo app built with NestJS, React & Materialize that searchs free parking cars space among commercials and housing.*
![img](https://github.com/cballende/CPFS-2025-TPF3C-ALLENDE/blob/Feature/Docs/Resource/Media/bienvenida.jpeg))

#### Tabla de contenido
    1. Descripción
    2. Demo
    3. Características principales
    4. Stack tecnológico
    5. Arquitectura
    6. Estructura del repositorio
    7. Requisitos previos
    8. Instalación
    9. Scripts npm
    10. Flujo de desarrollo
    11. Contribución
    12. Licencia
    13. Autores

#### Descripción
G2P es una aplicación web que permite:
* Buscar  garages particulares y comerciales disponibles.
* Generar un mercado en tiempo real entre la demanda y la oferta de espacios.
* Gestionar usuarios, cocheras, historial, pagos, imágenes y calificaciones.
* Ofrecer una experiencia simple, orientada hacia el conductor.

#### Demo

* [www.g2p.ar](http://www.g2p.ar).

#### Características principales
* Búsqueda de estacionamientos.
* Visualizacion de mapa  mediante la Google Maps API.
* Actualización periódica.
* Autenticación Google y CRUD completo de usuarios.

#### Stack tecnológico

|Capa| Tecnología|
| ------------- |:-------------:|
|   Frontend  | React 18  · TypeScript · MaterializeCSS |
|   Backend   | NestJS 10 · TypeScript |
|   BBDD (SQL)| MySQL + TypeORM |

#### Arquitectura

El sistema sigue una arquitectura client–server de tres capas:
* Frontend (presentación)
React SPA. Toda la comunicación con el backend se realiza vía HTTPS en formato JSON. .
* Backend (lógica de aplicación)
NestJS expone una API REST y se encarga de:
  - Autenticación.
  - Gestión de usuarios, historial, pagos, analíticas y sesiones (TypeORM ⇄ MySQL).
          
* Capa de datos (persistencia)
  - MySQL: entidades relacionales (usuarios, pagos, relaciones).

#### Estructura del repositorio
 ```root/
 ├─ apps/
 │  └─ frontend/ (React)
 ├─ src/ (Nest)
 │  ├─ modules/
 │  │   ├─ users/
 │  │   ├─ Servicios/
 │  │   └─ images/
 │  ├─ common/
 │  └─ main.ts
 ├─ database/ (TypeORM scripts)
 └─ docs/
```
#### Requisitos previos
* Node >= 20
* npm >= 10 (no yarn)
* MySQL 
* Claves API para Google
* API para Google Maps

#### Links de interes
* [Trello](https://trello.com/invite/b/6893b8634ecda0061c42440b/ATTI8e12b3eb22d6468ae883c4216367113aD5485EFD/cpfs-2025-tpf3c-allende).

#### Plantilla de Main


![img](https://github.com/cballende/CPFS-2025-TPF3C-ALLENDE/blob/Feature/Docs/Resource/Media/indicador_Perfil_pagos.jpeg)

#### Contribución
- 1: Fork & Clone.
- 2: Crear rama de feature.
- 3: Tests + lint deben pasar.
- 4: Abrir PR describiendo cambios.

#### Licencia
MIT © 2025 Grupo 1 – Curso Full Stack

#### Autores

|Nombre| Contacto|
| ------------- |:-------------:|
|   Sebastian  | cba.allende@gmail.com|
