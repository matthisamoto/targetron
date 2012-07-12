//= require jquery
//= require jquery_ujs
//= require jquery.address-1.4.min

var Targetron = {
	
	persona:    0,
	descriptor: 0,
	action:     0,
	
	address: function() {
		console.log("address fire")
		persona =    parseInt($('input#persona').val());
		descriptor = parseInt($('input#descriptor').val());
		action =     parseInt($('input#action').val());
		
		$.address.value('/');
		$.address.parameter('p', Targetron.persona,    true);
		$.address.parameter('d', Targetron.descriptor, true);
		$.address.parameter('a', Targetron.action,     true);
		$.address.update();
	}
	
}

$(function() {
	
	Targetron.address();

});