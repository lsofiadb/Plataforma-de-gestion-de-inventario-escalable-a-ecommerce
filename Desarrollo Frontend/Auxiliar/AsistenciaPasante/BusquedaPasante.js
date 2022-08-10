const API = "http://localhost:8081/";
let datosPasante;

const buscarPasante = async (pasante) => {
  try {
    const URL = `${API}auxiliar/consultarPracticasPorEstudiante?codigo=${pasante}`;
    const response = await fetch(URL);
    const data = await response.json();
    if (data[0].empleado !== null) {
      datosPasante = data;
      console.log(datosPasante);
      localStorage.setItem("datosPasante", JSON.stringify(datosPasante));
      window.location.href = "./AsistenciaPasante.html";
    } else {
      alert("No puede ingresar, Pasante no valido");
    }
  } catch (error) {
    alert("No puede ingresar, Pasante no valido");
  }
};

const getInfoPasante = () => {
  codPasante = document.getElementById("codPasante").value;
  buscarPasante(codPasante);
};
