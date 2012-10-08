/* Additional
----------------------------------------------------------------------------------------------------*/
(function($) {

    // get opacity
    jQuery.fn.getOpacity = function() {
        var ori = $(this).css('opacity');
        var ori2 = $(this).css('filter');
        if (ori2) {
            ori2 = parseInt( ori2.replace(')','').replace('alpha(opacity=','') ) / 100;
            if (!isNaN(ori2) && ori2 != '') {
                ori = ori2;
            }
        }
        return ori;
    }

    // Sets to group of objects of one width
    $.fn.equalWidth = function() {
        vari = 0;
        $(this).each(function() {
            thisWidth = $(this).width();
            if(thisWidth > vari) {vari = thisWidth;}
        });
        $(this).width(vari);
    };

    // Returns the maximum value of width at group elements
    $.fn.getMaxWidth = function() {
        vari = 0;
        $(this).each(function() {
            thisWidth = $(this).width();
            if(thisWidth > vari) {vari = thisWidth;}
        });
        return vari;
    };

    // Returns the maximum value of width at group elements (with padding-s and border-s)
    $.fn.getMaxOuterWidth = function() {
        vari = 0;
        $(this).each(function() {
            thisWidth = $(this).outerWidth();
            if(thisWidth > vari) {vari = thisWidth;}
        });
        return vari;
    };

    // Returns the minimum value of width at group elements
    $.fn.getMinWidth = function() {
        vari = 9999999999;
        $(this).each(function() {
            thisWidth = $(this).width();
            if(thisWidth < vari) {vari = thisWidth;}
        });
        return vari;
    };

    // Returns the minimum value of width at group elements (with padding-s and border-s)
    $.fn.getMinOuterWidth = function() {
        vari = 9999999999;
        $(this).each(function() {
            thisWidth = $(this).outerWidth();
            if(thisWidth < vari) {vari = thisWidth;}
        });
        return vari;
    };

    // Sets to group of objects of one height
    $.fn.equalHeight = function() {
        vari = 0;
        $(this).each(function() {
            if ($(this).is(':visible')) {
            $(this).css('height','auto');
            thisHeight = $(this).height();
            if(thisHeight > vari) {vari = thisHeight;}
            }
        });
        $(this).height(vari);
    };

    // Returns the maximum value of height at group elements
    $.fn.getMaxHeight = function() {
        vari = 0;
        $(this).each(function() {
            thisWidth = $(this).height();
            if(thisWidth > vari) {vari = thisWidth;}
        });
        return vari;
    };

    // Returns the maximum value of height at group elements
    $.fn.getMinHeight = function() {
        vari = 9999999999;
        $(this).each(function() {
            thisWidth = $(this).height();
            if(thisWidth < vari) {vari = thisWidth;}
        });
        return vari;
    };

    // Returns value of width of the text for the first element of group
    $.fn.getTextWidth = function() {
        var sensor = $('<div />').css({margin:0, padding:0});
        $(this).append(sensor);
        var width = sensor.width();
        sensor.remove();
        return width;
    };

    // Returns tag name of element
    $.fn.tagName = function() {
        return this.get(0).tagName.toLowerCase();
    };

    // Returns width of element text for first element in group
    $.fn.getTextWidth = function() {
        var sensor = $('<div />').css({margin: 0, padding: 0});
        $(this).append(sensor);
        var width = sensor.width();
        sensor.remove();
        return width;
    };

    // Return tag name of element
    $.fn.tagName = function() {
        return this.get(0).tagName.toLowerCase();
    };

    // blink
    $.fn.blink = function() {
        var bgcolor = $(this).css("background-color");
        var color = $(this).css("background-color");
        $(this).animate({backgroundColor: "#D61B51", color: "#FFFFFF"}, 100, function () {
            $(this).animate({backgroundColor: bgcolor, color: color}, 200, function () {
                $(this).removeAttr("style");
            });
        });
    };

    // By analogy with hasClass
    $.fn.hasAttr = function(name) {
        return $(this).attr(name) !== undefined;
    };

    // Centering object
    jQuery.fn.center = function() {
        var w = $(window);
        this.css("position","absolute");
        this.css("top",(w.height()-this.height())/2+w.scrollTop() + "px");
        this.css("left",(w.width()-this.width())/2+w.scrollLeft() + "px");
        return this;
    }
})(jQuery);

/* Init
----------------------------------------------------------------------------------------------------*/
$(function(){

    // enable placeholder
    jQuery("input[placeholder], textarea[placeholder]").enablePlaceholder();
    
    // dropdown ie7 fixes
    $('.dropdown').each(function() {
        $(this).parents('div.row').css('z-index','2');
    });
    $('.dropdownlist').ajaxStop(function() {
        if (($(this).is(':visible')) && ($(this).html() !== "")) {
            $(this).parents('div.row').css('z-index','3');
        }
        else {
            $(this).parents('div.row').css('z-index','2');
        }
    });

    // Ajax for form helpers
    $(".list_item").live('hover',function(){
        $(".list_item_hover").removeClass("list_item_hover");
        $(this).addClass("list_item_hover");
    });

	// Ajax for search helpers
    $(".search_item").live('click',function(){
        $(this).parent().siblings(".dropdown").val($(this).html());
        $(this).parent().hide();
    });

	// Ajax for "quicksearch"
    $("#quicksearchtext").live('keyup',function(){
        val=$(this).val();
        if(val.length<3){
            $(".dropdownlist", $(this).parents('form')).hide();
        }else{
            textfield=this;
            return $.post('/dhjajax/getsearchstrings', {
                searchstring: val
            }, function(data) {
                ajax_arr=data.ajax_array;
                ajax_html="";
                for(i=0;i<ajax_arr.length;i++){
                    ajax_html = ajax_html + '<div class="list_item search_item">' + ajax_arr[i][1] + '</div>';
                }
                $(".dropdownlist", $(textfield).parents('form')).html(ajax_html).show();
            }, 'json'
            );
        }
    });

});

