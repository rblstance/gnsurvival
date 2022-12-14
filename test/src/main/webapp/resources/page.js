
function prev(){
	
	location.href='index';
}

function nextpage(){
	document.form.submit();
}

const vibration = (target) => {
  target.classList.add("vibration");

  setTimeout(function() {
    target.classList.remove("vibration");
  }, 400);
}
	
const shareButton = document.querySelector('#share_btn');
/*
shareButton.addEventListener('click', async () => {
	if(navigator.share){
		navigator.share({
			title: "",
			text:"",
			url: "",
		})
		.then(() => console.log("공유"))
		.catch((e) => console.log("공유 실패", e));
	}
});*/