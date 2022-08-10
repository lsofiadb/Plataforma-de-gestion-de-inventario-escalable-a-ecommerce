const API = "http://localhost:8081/";
let datosMiembro;

const buscarMiembro = async (miembro) => {
  try {
    const URL = `${API}auxiliar/consultarMiembroEquipoPorEstudiante?codigoEstudiante=${miembro.codMiembro}&codigoEquipo=${miembro.nomEquipo}`; //6,3
    const response = await fetch(URL);
    const data = await response.json();
    if (data.equipo.conseequipo !== null) {
      datosMiembro = data;
      console.log(datosMiembro);
      localStorage.setItem("datosMiembro", JSON.stringify(datosMiembro));
      window.location.href = "./AsistenciaMienequipo.html";
    } else {
      alert("No puede ingresar, Pasante no valido");
    }
  } catch (error) {
    alert("No puede ingresar, empleado no valido");
  }
};

const getInfoMiembro = () => {
  let datosFront = {
    codMiembro: document.getElementById("codMiembro").value,
    nomEquipo: document.getElementById("nomEquipo").value,
  };
  buscarMiembro(datosFront);
};
