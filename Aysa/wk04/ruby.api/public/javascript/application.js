const modal = document.getElementById('myModal');
const button = document.getElementById('close');
let music;

function showModal () {
	modal.style.display = "block";
}

window.onload = setTimeout(showModal, 2000); 
window.onload = function () {
  console.log("hey");
  music = document.createElement('audio');
  music.setAttribute('src', "music/radiohead.mp3");
  music.setAttribute('autoplay','');
  document.getElementById('music').appendChild(music);
};

button.onclick = function() {
	if (document.getElementById('radiohead2').checked) {
		music.removeAttribute('src');
		music.setAttribute('src','music/radiohead2.mp3');
	} else if (document.getElementById('silence').checked) {
    console.log('hey');
    document.getElementById('music').removeChild(music);
	}
};


function surprise () {
  modal.style.display = "none";
  document.getElementById('jason').style.display = "block";
}

