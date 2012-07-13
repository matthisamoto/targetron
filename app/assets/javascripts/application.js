//= require jquery
//= require jquery_ujs

var Targetron = {
	persona:    0,
	descriptor: 0,
	action:     0,
	address: function() {
		Targetron.persona =    parseInt($('input#persona').val());
		Targetron.descriptor = parseInt($('input#descriptor').val());
		Targetron.action =     parseInt($('input#action').val());
		
		
		var state = "?p=" + Targetron.persona + "&d=" + Targetron.descriptor + "&a=" + Targetron.action; // { "p": Targetron.persona, "d": Targetron.descriptor, "a": Targetron.action }
		
		window.history.replaceState({}, document.title, state);
		
	}
}

$(function() {
	Targetron.address();
});