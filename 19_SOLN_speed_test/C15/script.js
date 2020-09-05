window.onload = () => {
    window.addEventListener('mousemove', function ({pageX,pageY}) {
        const x = window.innerWidth / 2 - pageX;
        const y = window.innerHeight / 2 - pageY;
        document.getElementById('img-1').style.transform = `translate(${x*.1}px, ${y*.1}px)`;
        document.getElementById('img-2').style.transform = `translate(${x*.4}px, ${y*.4}px)`;
        document.getElementById('img-3').style.transform = `translate(${x*.9}px, ${y*.9}px)`;
    });
}
