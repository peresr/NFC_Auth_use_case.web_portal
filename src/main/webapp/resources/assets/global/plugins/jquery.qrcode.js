(function( $ ){ 
 	$.fn.qrcode = function(options) { 
 		// if options is string,  
 		if( typeof options === 'string' ){ 
 			options	= { text: options }; 
 		} 
 
 		// set default values 
 		// typeNumber < 1 for automatic calculation 
 		options	= $.extend( {}, { 
 			render		: "table", 
 			width		: 132, 
 			height		: 132, 
 			typeNumber	: -1, 
 			correctLevel	: 
 				QRErrorCorrectLevel.H, 
                background      : "#ffffff", 
                foreground      : "#000000" 
 		}, options); 

 		// from Jon-Carlos Rivera (https://github.com/imbcmdth) 
 		var createTable	= function(){ 
 			// create the qrcode itself 
 			var qrcode	= new QRCode(options.typeNumber, options.correctLevel); 
 			qrcode.addData(options.text); 
 			qrcode.make(); 
 			 
 			// create table element 
 			var $table	= $('<table></table>') 
 				.css("width", options.width+"px") 
 				.css("height", options.height+"px") 
 				.css("border", "0px") 
 				.css("border-collapse", "collapse") 
 				.css('background-color', options.background); 
 		   
 			// compute tileS percentage 
 			var tileW	= options.width / qrcode.getModuleCount(); 
 			var tileH	= options.height / qrcode.getModuleCount(); 
 
 			// draw in the table 
 			for(var row = 0; row < qrcode.getModuleCount(); row++ ){ 
 				var $row = $('<tr></tr>').css('height', tileH+"px").appendTo($table); 
 				 
 				for(var col = 0; col < qrcode.getModuleCount(); col++ ){ 
 					$('<td></td>') 
 						.css('width', tileW+"px") 
 						.css('background-color', qrcode.isDark(row, col) ? options.foreground : options.background) 
 						.appendTo($row); 
 				}	 
 			} 
 			// return just built canvas 
 			return $table; 
 		} 
    
 		return this.each(function(){ 
 			var element	= createTable(); 
 			$(element).appendTo(this); 
 		}); 
 	}; 
 })( jQuery ); 