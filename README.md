# LSMGI_05

En esta tarea nuevamente he tenido muchos problemas usando Javascript, tanto es así que no he conseguido hacer funcionar X-Path.   

Por ejemplo, para una pregunta tipo SELECT podía extraer los enunciados del documento xml, pero no aparecían las respuestas utilizando el código de la aplicación de ejemplo:

```js
 //SELECT
 //Recuperamos el título y las opciones (que están dentro de los nodos seleccionados con Xpath: nodesSelect) 
 var tituloSelect=xmlDoc.getElementsByTagName("title")[0].innerHTML;
 var xpath="/questions/question[@id='q_001']/option";
 var nodesSelect = xmlDoc.evaluate(xpath, xmlDoc, null, XPathResult.ANY_TYPE, null);
 ponerDatosSelectHtml(tituloSelect,nodesSelect);
 //guardamos la respuesta correcta
 respuestaSelect=parseInt(xmlDoc.getElementsByTagName("answer")[0].innerHTML);
 ```

Lo único que puedo entregar es la parte de XSL con su respectivo XML. 
Aquí pueden verse las tablas formateadas:
- http://rawgit.com/AlbertoSB/LSMGI_05/master/questions.xml   
- http://rawgit.com/AlbertoSB/LSMGI_05/master/questions2.xml   
<br>
Llegados a este punto, no tengo muy claro que pueda entregar algo en el proyecto final, pero se intentará.   
<br>
<br>
> Durante el mes transcurrido entre la entrega de la anterior tarea y esta he estado mirando cosas sobre Javascript y haciendo algunas actividades iniciales, todo de un nivel muy básico y aunque ahora entiendo algunas cosas, me sigo perdiendo en el código de estas tareas, lo encuentro demasiado complejo para alguien que no había usado nunca ese lenguaje.
