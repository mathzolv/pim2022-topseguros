function envio() {

    Swal.fire({
        title: 'Sucesso!',
        text: 'E-mail enviado!',
        icon: 'success',
        confirmButtonText: 'Ok'
    })
};

function scrollto(id) {
    console.log(id)
    var access = document.getElementById(id);
    access.scrollIntoView({ behavior: 'smooth' }, true);
}