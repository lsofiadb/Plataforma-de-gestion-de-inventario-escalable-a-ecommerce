let Elementos;
const API = "http://localhost:8081/";
let Cursos;
let dataDocente = {};

if (localStorage.getItem("datosDocente")) {
  dataDocente = JSON.parse(localStorage.getItem("datosDocente"));
}

console.log(dataDocente);

const buscarCursos = async () => {
  //usar el local storage
  try {
    //const URL = `${API}auxiliar/consultarCursosPorDocente?nombre=${docente.nomempleado}&apellido=${docente.apellempleado}`;
    const URL = `http://localhost:8081/auxiliar/consultarCursosPorDocente?nombre=${dataDocente.nomempleado}&apellido=${dataDocente.apellempleado}`;
    const response = await fetch(URL);
    const data = await response.json();
    console.log(data);
    Cursos = data;
    modificarData(Cursos);
    console.log(Cursos[0].fechafin);
    console.log(Cursos[0].fechafin.substring(0, 10));
    if (
      Cursos[0].fechafin.substring(0, 10) >= "2022-05-03" &&
      Cursos[0].fechaini.substring(0, 10) <= "2022-05-03" &&
      ((Cursos[0].programacion.horaFin.idhora >= "09" &&
      Cursos[0].programacion.horaInicio.idhora <= "09") ||
      Cursos[0].programacion.horaInicio.idhora <= "11" &&
      Cursos[0].programacion.horaInicio.idhora <= "11")
    ) {
      document.getElementById("fechaInicio").innerHTML+=(Cursos[0].fechaini.substring(0,10));
      document.getElementById("fechaFin").innerHTML+=(Cursos[0].fechafin.substring(0,10));
      document.getElementById("horaInicio").innerHTML+=(Cursos[0].programacion.horaInicio.idhora)+":00";
      document.getElementById("horaFin").innerHTML+=(Cursos[0].programacion.horaFin.idhora)+":00";
      document.getElementById("curso").innerHTML +=Cursos[0].programacion.actividad.descactividad;
      document.getElementById("cantEstudiantes").innerHTML +=Cursos[0].programacion.noinscrito;
      document.getElementById("deporte").innerHTML += Cursos[0].programacion.deporte.nomdeporte;
      document.getElementById("espacio").innerHTML += Cursos[0].programacion.espacio.nomespacio;
    } else {
      document.getElementById("curso").innerHTML ="No hay Curso Activo";
    }
  } catch (error) {
    //alert("No puede ingresar, empleado no valido");
  }
};

buscarCursos();

const modificarData = (data) => {
  document.getElementById(
    "codigo"
  ).textContent = `Codigo: ${data[0].empleado.codempleado}`;
  document.getElementById(
    "nombre"
  ).textContent = `${data[0].empleado.nomempleado} ${data[0].empleado.apellempleado}`;
  document.getElementById(
    "sede"
  ).textContent = `Sede: ${data[0].programacion.espacio.espacio.nomespacio} `;
};

let containerElementos = document.getElementById("modal-body");

const crearCheckBox= async() =>{
  try{
    const URL = `http://localhost:8081/auxiliar/consultarElementosDeportivos?nombre=${dataDocente.nomempleado}&apellido=${dataDocente.apellempleado}`;
    const response = await fetch(URL);
    const data = await response.json();
    Elementos=data;
    console.log(Elementos)
    if(Elementos.estado.idestado === '1'){
    containerElementos.innerHTML += `<form name="formElementos"action="">`;
    containerElementos.innerHTML += `<input type="checkbox" class="casilla" id="Elemento" name="${Elementos.consecelemento}" value="${Elementos.consecelemento}">
                              <label class="nombreElem" for="${Elementos.consecelemento}"> ${Elementos.tipoElemento.desctipoelemento} </label>
                              <label class="cantidadElem" for="${Elementos.consecelemento}"> Marca: ${Elementos.marca.nommarca}</label>`;
  ;

  containerElementos.innerHTML += `</form>`;}
  else{
    containerElementos.innerHTML=`<h1 class="warning">No hay elementos disponibles</h1>`;
  }
  }catch{

  }
}

crearCheckBox();

const registrarAsistencia = async(consecElemento) => {
  const URL = `http://localhost:8081/auxiliar/cambiarEstadoElementoDeportivo/${consecElemento}`;
  const response = await fetch(URL,{method: 'PUT'})
  }


function BtnRegistrar(){
  if(document.getElementById('Elemento').checked){
    registrarAsistencia(document.getElementById('Elemento').value)
    //console.log(document.getElementById('Elemento').value)
  }else{
    console.log("No hay na manito")
  }
}


var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal
btn.onclick = function () {
  modal.style.display = "block";
};

// When the user clicks on <span> (x), close the modal
span.onclick = function () {
  modal.style.display = "none";
};

// When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
};
