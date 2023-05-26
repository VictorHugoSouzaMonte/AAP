
/*function previewImagem() {
    var preview = document.getElementById('Image1');
    var file = document.getElementById('foto').files[0];
    var reader = new FileReader();

    reader.onloadend = function () {
        preview.src = reader.result;
        preview.style.display = "block";
    }

    if (file) {
        reader.readAsDataURL(file);
    } else {
        preview.src = "";
    }
}*/

/*function ValidaIdade() {
    var idade = parseInt(document.getElementById("txtIdade").value);
    if (idade >= 0 | idade <= 99) {
        document.getElementById("lblMensagem").value = "A idade invalida";
    }

    else {
        document.getElementById("lblMensagem").value="A idade valida";
    }

}*/
function mascara_CEP() {
    var cep = document.getElementById('txtCep')
    if (cep.value.length == 5) {
        cep.value += "-";
    }
}

function mascara_Fone() {
    var fone = document.getElementById('txtFone')
    if (fone.value.length == 7) {
        fone.value += "-";
    }
}

function mascara_FoneCom() {
    var foneCom = document.getElementById('txtFoneCom')
    if (foneCom.value.length == 4) {
        foneCom.value += "-";
    }
}
function mascara_FoneEsc() {
    var foneEsc = document.getElementById('txtFoneEsc')
    if (foneEsc.value.length == 4) {
        foneEsc.value += "-";
    }
}