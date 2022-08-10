let Elementos;
let dataPasante = {};
let Practicas;

if (localStorage.getItem("datosPasante")) {
  dataPasante = JSON.parse(localStorage.getItem("datosPasante"));
}

console.log(dataPasante);


const buscarPracticas = async () => {
  //usar el local storage
  try {
    //const URL = `${API}auxiliar/consultarCursosPorDocente?nombre=${docente.nomempleado}&apellido=${docente.apellempleado}`;
    const URL = `http://localhost:8081/auxiliar/consultarPracticasPorEstudiante?codigo=${dataPasante[0].estudiante.codestudiante}`;
    const response = await fetch(URL);
    const data = await response.json();
    console.log(data);
    Practicas = data;
    modificarData(Practicas);
    console.log(Practicas[0].fechafin);
    console.log(Practicas[0].fechafin.substring(0, 10));
    if (
      Practicas[0].fechafin.substring(0, 10) >= "2022-05-05" &&
      Practicas[0].fechaini.substring(0, 10) <= "2022-05-05" &&
      ((Practicas[0].programacion.horaFin.idhora >= "13" &&
      Practicas[0].programacion.horaInicio.idhora <= "13") ||
      (Practicas[0].programacion.horaInicio.idhora <= "11" &&
      Practicas[0].programacion.horaInicio.idhora <= "11") ||
      (Practicas[0].programacion.horaInicio.idhora <= "15" &&
      Practicas[0].programacion.horaInicio.idhora <= "15"))
    ) {
      document.getElementById("horaInicio").innerHTML+=(Practicas[0].programacion.horaInicio.idhora)+":00";
      document.getElementById("horaFin").innerHTML+=(Practicas[0].programacion.horaFin.idhora)+":00";
      document.getElementById("practicaLibre").innerHTML +=Practicas[0].programacion.actividad.descactividad;
      document.getElementById("cantEstudiantes").innerHTML +=Practicas[0].programacion.noinscrito;
      document.getElementById("deporte").innerHTML += Practicas[0].programacion.deporte.nomdeporte;
      document.getElementById("espacio").innerHTML += Practicas[0].programacion.espacio.nomespacio;
      document.getElementById("dia").innerHTML += Practicas[0].programacion.dia.nomdia;
      document.getElementById("periodo").innerHTML += Practicas[0].programacion.periodo.idperiodo;
    } else {
      document.getElementById("practicaLibre").innerHTML ="No hay practica Activa";
    }
  } catch (error) {
    //alert("No puede ingresar, empleado no valido");
  }
};

const modificarData = (data) => {
  document.getElementById(
    "codigo"
  ).textContent = `Codigo: ${data[0].estudiante.codestudiante}`;
  document.getElementById(
    "nombre"
  ).textContent = `${data[0].estudiante.nomestudiante} ${data[0].estudiante.apellestudiante}`;
  document.getElementById(
    "sede"
  ).textContent = `Sede: ${data[0].programacion.espacio.espacio.nomespacio} `;
};

modificarData(dataPasante);
buscarPracticas();

const getElemen = async (Deporte) => {
  const response = await fetch(API);
  const dataElemen = await response.json();
  Elementos = data;
};

let containerElementos = document.getElementById("modal-body");

const crearCheckBox= async(cod) =>{
  try{
    const URL = `http://localhost:8081/auxiliar/consultarElementosDeportivosEstudiante?codigo=${cod}`;
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
  }
  }catch{
    containerElementos.innerHTML=`<h1 class="warning">No hay elementos disponibles</h1>`;
  }
}

crearCheckBox(dataPasante[0].estudiante.codestudiante);

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
