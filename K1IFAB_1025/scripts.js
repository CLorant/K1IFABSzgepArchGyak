const v = document.getElementById("videom");
const z = document.getElementById("zene");
const effektem = document.getElementById("effekt");

function playPauseVideo() {
    v.paused ? v.play() : v.pause();
}
function playPauseAudio() {
    z.paused ? z.play() : z.pause();
}

function pickEffect(source) {
    effektem.src = source;
    effektem.play;
}

z.onended = () => alert("VÉGE");