function openvideo(url) {  
    z = "width=760,height=530,toolbar=0,menubar=0,scrollbars=0,resizable=0,location=0,status=no";
	pop = window.open(url,"pop",z);
	pop.focus();	
	if (pop.focus!=null)
    pop.focus();
}