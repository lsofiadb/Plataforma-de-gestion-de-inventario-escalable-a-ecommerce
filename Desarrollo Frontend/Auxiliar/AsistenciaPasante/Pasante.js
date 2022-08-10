let Elementos;
const API = "";

const buscarDocente = async(id) => {
  const URL = ``
  const response = await fetch(URL)
  const dataDocente = await response.json()
  //sessionStorage.setItem("Docente", JSON.stringify(data))
}

const getInfoPasante = () => {
  let data = {
    codPasante: (document.getElementById("codPasante").value),
  }

  buscarPasante(data.codPasante);
}

const getElemen = async(Deporte) => {
  const response = await fetch(API)
  const dataElemen = await response.json()
  Elementos = data
}

let container = document.getElementById('modal-body');

function crearCheckBox(){
    container.innerHTML +=`<form action="">`
    console.log(objeto2);
    Object.entries(Elementos).forEach(([key, value])=> {
    container.innerHTML += `<input type="checkbox" class="casilla" id="objeto1" name="${value.nombre}" value="${value.nombre}">
                            <label class="nombreElem" for="${value.nombre}"> ${value.nombre} de marca ${value.marca}</label>
                            <label class="cantidadElem" for="${value.nombre}"> Cantidad: ${value.cantidad}</label>`
})

container.innerHTML+= `</form>`
}



crearCheckBox();

var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}