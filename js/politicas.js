document.getElementById('politicas-link').addEventListener('click', function() {
    var modal = document.getElementById('modal');
    modal.style.display = 'block';
    document.body.classList.add('modal-open');

    document.getElementById('close-modal').addEventListener('click', function() {
        modal.style.display = 'none';
        document.body.classList.remove('modal-open');
    });

    window.addEventListener('click', function(event) {
        if (event.target == modal) {
            modal.style.display = 'none';
            document.body.classList.remove('modal-open');
        }
    });
});
