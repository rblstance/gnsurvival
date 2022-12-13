
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