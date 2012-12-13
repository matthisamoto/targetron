//= require jquery
//= require jquery_ujs
//= require jquery.mousewheel
//= require mwheelIntent
//= require jquery.jscrollpane.min
(function(window, $) {
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
		},
		facebook: function(event) {
			var url = document.URL;
			window.open('http://facebook.com/sharer/sharer.php?u='+encodeURIComponent(url), '', 'left=0,top=0,width=650,height=420,personalbar=0,toolbar=0,scrollbars=0,resizable=0');
		},
		twitter: function(event) {
			var url = document.URL;
			var audience = document.getElementsByName('target_audience');
			var text = "My audience: " + $('input#descriptor-des').val() + " " + $('input#persona-des').val() + ". Find yours at "+url;
			window.open('http://twitter.com/share?url=&text='+encodeURIComponent(text), '', 'left=0,top=0,width=550,height=450,personalbar=0,toolbar=0,scrollbars=0,resizable=0');
		}
	}
	Targetron.address();
	$('.facebook').bind('click', Targetron.facebook);
	$('.twitter').bind('click', Targetron.twitter);
	$('#block_area').jScrollPane({ showArrows: true });
})(window, jQuery);