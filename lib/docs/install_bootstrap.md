# Pasos para instalar Bootstrap

1. Agrega en el Gemfile las siguientes líneas
    ```
    gem 'bootstrap', '~> 4.1.1'
    gem 'jquery-rails'
    ```

1. En la consola corre `bundle install`

1. Dentro de app/assets/stylesheets, renombra el archivo de application.css por application.scss
    
    Luego elimina TODO el contenido del mismo y agrega ésta línea:
    `@import "bootstrap";`

1. Dentro de app/assets/javascripts, modifica el archivo application.js y verifica que los `requires` sean los siguientes:
    ```
    //= require jquery
    //= require bootstrap
    //= require jquery_ujs
    //= require rails-ujs
    //= require turbolinks
    //= require_tree .
    ```

Listo! Ahora puedes agregar clases a tus tablas y vistas para que luzcan bien.
Puedes encontrar las clases para las tablas aqui: https://www.w3schools.com/bootstrap/bootstrap_ref_css_tables.asp

En la barra lateral encuentras como darle formato a botones, formas, barras y mas.

# Tarea
1. En donde se muestran todos los registros creados de Users y Events, agrega a la vista de la tabla la opción `table-striped`.

1. A los botones de las mismas vistas, agrega la opción de `btn-default`, únicamente al botón de registro agrega la opción de `btn-primary`.

1. Al botón de new user de ambas vistas, agrega también `btn-primary`.

    ***Need halp?** Busca cómo agregar clases al elemento `link_to` de rails*
