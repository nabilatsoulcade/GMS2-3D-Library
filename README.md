# GMS2-3D-Library
A library for making 3D more accesible in Gamemaker Studio 2

This asset provides you with a simpler code-base for setting up 3D in Game Maker Studio 2. It includes a well commented example that allows
you to experiment with different camera projection settings. The library condenses all the functions required to initialize 3D to a 
few scripts and creates cameras that can be manipulated with a series of variables. There is also a series of functions that replace the
D3D functions from previous versions of Gamemaker.

![alt tag](https://marketplacecdn.yoyogames.com/images/assets/5960/screenshots/15025_original.png?1506909234)
![alt tag](https://marketplacecdn.yoyogames.com/images/assets/5960/screenshots/15026_original.png?1506909243)

## Getting Started

The latest stable version of this is readily avalaible to import directly into your project file via the YoYoGames Marketplace upon release, and the latest unstable version will be avaliable here. 

### Prerequisites

Gamemaker Studio 2, and preferably software to model in as a reference when building 3D models

### Functions
```
render_3d_init();
render_3d_init_ext(zwrite,ztest,cullmode);
camera_init(camera_index,camera_enabled,fov,ratio,znear,zfar,camera_script)
camera_variables_init();
camera_update_script();
vertex_buffer_create_quadrilateral_pos(x1,y1,z1,x2,y2,z2,x3,y3,z3,x4,y4,z4);
vertex_buffer_create_quadrilateral_fixed(x1,y1,z1,x2,y2,z2);
```

### Gifs
![alt tag](https://media.giphy.com/media/3ohc1bPSQG3YT0rLDa/giphy.gif)
![alt tag](https://media.giphy.com/media/1jl0S9bAZrbwBRdeSs/giphy.gif)
![alt tag](https://media.giphy.com/media/1BeD0seJGPFlMyaylX/giphy-downsized-large.gif)

## Built With

* [Gamemaker Studio 2](http://www.dropwizard.io/1.0.2/docs/) - IDE

## Authors

* **Nabil Sekirime** - *Programming* - [GitHub](https://github.com/nabilatsoulcade)

## License

This project is licensed under the MIT License - see [https://opensource.org/licenses/MIT](LICENSE.md) for details


