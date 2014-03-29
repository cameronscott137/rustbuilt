$(document).ready(function(){
        $('#twtxtarea').jqEasyCounter({
            'maxChars': 140, 
            'maxCharsWarning': 140, 
            'msgFontColor': '#ccc',
            'msgFontSize': '19px',
            'msgFontFamily': '"ff-meta-serif-web-pro",serif'
  
        });
        $('#sharetwt').click(function(){
            $('.tbox').hide();
        });
        $('#submit').click(function() {
                var twtid = $('#twitterid').val();
                $.ajax({
			type : 'POST',
			url : '../../insertAccelerist.php',
			dataType : 'json',
			data: {	twitterid : $('#twitterid').val() },
			success : function(data){
				$('#twitterid').removeClass('error success').addClass((data.error === true) ? 'error' : 'success').val(data.msg);     
				$('#submit').attr('disabled', 'disabled').val((data.error === true) ? 'Try Again' : 'Thanks');
				if(data.hand) $('#addedacc').prepend(data.hand);
				if(data.error === false){
                                    var text = '@'+twtid+' is an Accelerist. Are you? Join the others who do more, faster. bit.ly/AxBg4A cc @thinktiv #accelerists';
                                    $('#twtxtarea').val(text);
                                    $('.tbox').show();   
                                }
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) {
                                $('#twitterid').removeClass('error success').addClass('error').val('There was an error.');
                                $('#submit').attr('disabled', 'disabled').val('Try Again');         
			}
		});
		return false;
	});
});

var names;
function initTwitterids(){
        var ids = "";
        $('.ablock').each(function(){
  	    ids += $(this).attr('rel')+',';
	});
        if(ids.length>0 && ids.match(",$")){
	    ids = ids.substring(0,ids.length-1);
        }
        names = ids.split(",")
}

function Linkify(text) {
    if(text == null)
    return "";
    text = text.replace(/(https?:\/\/\S+)/gi, function (s) {
        return '<a target="_blank" href="' + s + '">' + s + '</a>';
    });

    text = text.replace(/(^|)@(\w+)/gi, function (s) {
        return '<a target="_blank" href="http://twitter.com/' + s + '">' + s + '</a>';
    });

    text = text.replace(/(^|)#(\w+)/gi, function (s) {
        return '<a target="_blank" href="http://search.twitter.com/search?q=' + s.replace(/#/,'%23') + '">' + s + '</a>';
     });
    return text;
}

function getTwitterUserInfo(count){
        initTwitterids();
	var start = Math.round(count/100)*100;
	var end = start + 99;
	if(names.length<end)
		end = names.length;
	var scr_names = "";
	for(var i=start; i<end ; i++){
		scr_names = scr_names + names[i] + ","; 	
	}
	var getInfoUrl = 'https://api.twitter.com/1/users/lookup.json?screen_name='+scr_names;
	$.ajax({
		url: getInfoUrl,
		type: 'GET',
		dataType: 'jsonp',
		success: function(data) { 
			$.each(data, function(index, user) {
                            var userInfo = '<div class="popupin filled"><h2 class="head1"><a href="http://twitter.com/'+user.screen_name+'" target="_blank">'+user.name+'</a> is an accelerist</h2><div class="clearfix"><a href="https://twitter.com/intent/follow?screen_name='+user.screen_name+'" class="follow head3">Follow <span class="cw">@'+user.screen_name+'</span></a></div><div class="tdesc">'+Linkify(user.description)+'</div></div>';
                            $('div[rel="'+user.screen_name+'"]').children('.popup').html(userInfo); 
			});
		}
	});
}

$(document).ready(function(){
        $('.ablock').live('mouseover',function(){ 
                                        $(this).children('.popup').css({ top:$(this).position().top - $(this).children('.popup').height()-17, left:$(this).position().left-88}); 
					if($(this).children('.popup').children('.filled').length>0) {}
					else getTwitterUserInfo($(this).index());
					
					 });


	$('.ablock').live('mouseout',function(){ $(this).children('.popup').css({ top:'-9999px', left:'-9999px' }); });
       
});


$(document).ready(function(){
    $('#twitterid').blur(function(){
        if(this.value=='') this.value='Add your twitter ID to the list';
    });

    $('#twitterid').focus(function(){ 
        if( (this.value=='Add your twitter ID to the list') || ($('#submit').attr('disabled')=='disabled') ){ 
            this.value='';
            $('#twitterid').removeClass('error success'); 
            $('#submit').removeAttr('disabled').val('Add me');
        }
    });
});
