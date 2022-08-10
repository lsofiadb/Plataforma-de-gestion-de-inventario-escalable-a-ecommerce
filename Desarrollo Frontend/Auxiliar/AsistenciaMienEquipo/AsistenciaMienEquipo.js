let Elementos;
let dataMiembro = {};

if (localStorage.getItem("datosMiembro")) {
  dataMiembro = JSON.parse(localStorage.getItem("datosMiembro"));
}

console.log(dataMiembro);

const modificarData = (data) => {
  document.getElementById(
    "codigo"
  ).textContent = `Codigo: ${data.estudiante.codestudiante}`;
  document.getElementById(
    "nombre"
  ).textContent = `${data.estudiante.nomestudiante} ${data.estudiante.apellestudiante}`;
  document.getElementById(
    "sede"
  ).textContent = `Sede: ${data.estudiante.espacio.nomespacio} `;
  document.getElementById(
    "equipo"
  ).textContent = `Equipo: ${data.equipo.deporte.nomdeporte} `;
};

modificarData(dataMiembro);
