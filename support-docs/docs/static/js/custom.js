document.addEventListener('DOMContentLoaded', function () {
    document.querySelectorAll('a').forEach(function (link) {
        if (link.hostname !== window.location.hostname) {
            link.target = '_blank';
        }
    });
});
