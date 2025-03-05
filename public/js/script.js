document.addEventListener("DOMContentLoaded", function () {
    const form = document.getElementById("quiz-form");

    form.addEventListener("submit", function (event) {
        if (!form.checkValidity()) {
            event.preventDefault();
            alert("Veuillez répondre à toutes les questions.");
        }
    });
});
