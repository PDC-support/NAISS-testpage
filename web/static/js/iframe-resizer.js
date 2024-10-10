function resizeIframe() {
    var iframe = document.getElementById('mkdocs-iframe');
    iframe.onload = function() {
        var iframeDocument = iframe.contentDocument || iframe.contentWindow.document;
        iframe.style.height = iframeDocument.documentElement.scrollHeight + 'px';
    };
}

window.addEventListener('load', resizeIframe);
