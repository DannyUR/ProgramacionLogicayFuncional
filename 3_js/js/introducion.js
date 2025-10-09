var ul = document.getElementById("lista")
var lis=""

let url ="https://thesimpsonsapi.com/api/"
let arr_original = []

var getLista = (page)=>{
fetch(url+"characters?page="+page).then(response=>{
    if(!response.ok){
        console.log("Error en la red")
    }
    return response.json()
}).then(data=>{
    console.log("Datos del personaje: ", data)

    data.results.forEach(personaje=>{
        arr_original.push({
            personaje:personaje,
            datos:null
        })
        lis+=`
        <li>
            <img src="https://cdn.thesimpsonsapi.com/500${personaje.portrait_path}" width="200px" />
            <h2>${personaje.name}</h2>
        </li>`
    })
    ul.innerHTML = lis
    console.log("Arreglo final", arr_original)
})
}
for(let i=1;i<=5;i++){
    getLista(i)
}
setTimeout(()=>{
    document.getElementById("preloader").style.display="none"
},1000)
const imprimir = (arr)=>{
    var todo = "";
    arr.forEach(item=>{
        todo+=`
        <li>
            <img src="https://cdn.thesimpsonsapi.com/500${item.personaje.portrait_path}" width="200px" />
            <h2>${item.personaje.name}</h2>
        </li>`
    })
    ul.innerHTML=todo
}
//Mostrar todo
document.querySelector("#mostrarTodo").addEventListener('click',(evt)=>{
    evt.preventDefault
    imprimir(arr_original)
})

//Edad menor que 18
document.querySelector("#linkEdad").addEventListener('click',(evt)=>{
    //evitar recarga
    evt.preventDefault()
    let res = arr_original.filter((item)=>item.personaje.age < 18 && item.personaje.age != null)
    console.log("EDAD", res)
    imprimir(res)
})

//Personajes muertos
document.querySelector("#linkMuertos").addEventListener('click',(evt)=>{
    evt.preventDefault();
    let res = arr_original.filter(item => item.personaje.status === "Deceased" || item.personaje.status === "Dead");
    imprimir(res);
});

//Promedio de edad
document.querySelector("#linkPromedio").addEventListener('click',(evt)=>{
    evt.preventDefault();
    let edades = arr_original.map(item => item.personaje.age).filter(age => age != null);
    let promedio = edades.reduce((a,b)=>a+b,0) / edades.length;
    alert("Promedio de edad: " + promedio.toFixed(2));
});

//Ordenar por edad ASC
document.querySelector("#linkOrdenEdad").addEventListener('click',(evt)=>{
    evt.preventDefault();
    let res = [...arr_original].sort((a,b)=> (a.personaje.age ?? 0) - (b.personaje.age ?? 0));
    imprimir(res);
});

//Mostrar el mas viejo y el mas joven
document.querySelector("#linkviejoJoven").addEventListener('click',(evt)=>{
    evt.preventDefault();
    let filtrados = arr_original.filter(item => item.personaje.age != null);
    let masJoven = filtrados.reduce((min, item) => item.personaje.age < min.personaje.age ? item : min);
    let masViejo = filtrados.reduce((max, item) => item.personaje.age > max.personaje.age ? item : max);
    imprimir([masJoven, masViejo]);
});

//Estudiantes
document.querySelector("#linkEstudiantes").addEventListener('click',(evt)=>{
    evt.preventDefault();
    let res = arr_original.filter(item => 
        item.personaje.occupation && item.personaje.occupation.toLowerCase().includes("student")
    );
    imprimir(res);
});

//Fecha de nacimiento sea < 1980/02/01
document.querySelector("#linkNacimiento").addEventListener('click',(evt)=>{
    evt.preventDefault();
    let limite = new Date("1980-02-01");
    let res = arr_original.filter(item => {
        if(!item.personaje.birthdate) return false;
        return new Date(item.personaje.birthdate) < limite;
    });
    imprimir(res);
});

// Buscador por frases
document
  .querySelector(".search input[type='search']")
  .addEventListener("keypress", (evt) => {
    if (evt.key === "Enter") {
      let palabra = evt.target.value.toLowerCase();
      if (palabra.trim() === "") return alert("Ingrese una frase o palabra");
 
      let res = arr_original.filter((item) =>
        item.personaje.phrases.some((f) => f.toLowerCase().includes(palabra))
      );
      console.log("Coincidencias por frase", res);
      imprimir(res);
    }
  });


/* Moridos, menores de edad, promedio de edad(alerta), 
ordenar por edad ASC, mostrar el mas viejo y el mas joven, mostrar los que son estudiantes,
fecha de nacimiento sea < 1980/02/01, buscar por frases */

