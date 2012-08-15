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
			
			// Opens window with facebook share dialog.
			// Remember to include OpenGraph meta tags in the page with sharing copy.

			var url = "http://targetron5000.com";
			window.open('http://facebook.com/sharer/sharer.php?u='+encodeURIComponent(url), '', 'left=0,top=0,width=650,height=420,personalbar=0,toolbar=0,scrollbars=0,resizable=0');
		},
		
		twitter: function(event) {
			
			// Opens a pop-up with twitter sharing dialog

			var url = "http://targetron5000.com";
			var audience = document.getElementsByName('target_audience');
			var text = audience[0].getAttribute('content') + ". Find yours at";
			window.open('http://twitter.com/share?url='+encodeURIComponent(url)+'&text='+encodeURIComponent(text), '', 'left=0,top=0,width=550,height=450,personalbar=0,toolbar=0,scrollbars=0,resizable=0');
		}
	}
	
	$('.facebook').bind('click', Targetron.facebook);
	$('.twitter').bind('click', Targetron.twitter);
	
	Targetron.address();
	
	$('#block_area').jScrollPane({ showArrows: true });
	
})(window, jQuery);