const API = "http://localhost:8081/";
let globalDataAux = {};
const URLAux = "../Auxiliar/Auxiliar.html";
const URLDir = "../Director/Director.html";

const IngresarDir = async (id) => {
  try {
    const URL = `${API}directorDeportivo/validarDirectorDeportivo/${id}`;
    const response = await fetch(URL);
    const data = await response.json();
    console.log(data);
    if (data.cargo.idcargo === "3") {
      redireccion("auxDirec", data, URLDir);
    } else {
      alert("No puede ingresar, codigo de empleado no existe");
    }
  } catch (error) {
    alert("No puede ingresar, codigo de empleado no existe");
  }
};

const IngresarAux = async (id) => {
  try {
    const URL = `${API}auxiliar/validarAuxiliar/${id}`;
    const response = await fetch(URL);
    const data = await response.json();
    if (data.cargo.idcargo === "1") {
      redireccion("auxData", data, URLAux);
    } else {
      alert("No puede ingresar, codigo de empleado no existe");
    }
  } catch (error) {
    alert("No puede ingresar, codigo de empleado no existe");
  }
};

const getInfoDir = () => {
  const idcodigoempleado = Number(document.getElementById("ID_Dir").value); //mirar nom variables
  IngresarDir(idcodigoempleado);
};

const getInfoAux = () => {
  const idcodigoAuxiliar = Number(document.getElementById("ID_Aux").value); //mirar nom variables
  IngresarAux(idcodigoAuxiliar);
};

const obtenerData = (data) => {
  const newData = {
    codigoEmpleado: data.empleado.codempleado,
    apellido: data.empleado.apellempleado,
    nombre: data.empleado.nomempleado,
    sede: data.espacio.nomespacio,
  };
  return newData;
};

const redireccion = (tipo, data, url) => {
  localStorage.setItem(tipo, JSON.stringify(obtenerData(data)));
  setTimeout(function () {
    window.location.href = url;
  }, 1000);
};
