tinymce.init({
    selector:   "textarea",
    width:      '100%',
    autoresize_max_height: 500,
    autoresize_min_height: 200,
    resize: 'both',
    plugins:    "link code autoresize fullscreen",
    statusbar:  false,
	menubar:    false,
    toolbar: 'insert | undo redo |  formatselect | bold italic backcolor  | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | removeformat | code | fullscreen   | help',
});
function decodeHTMLSpecialChars(text) {
    var map = {
        '&amp;': '&',
        '&#038;': "&",
        '&lt;': '<',
        '&gt;': '>',
        '&quot;': '"',
        '&#039;': "'",
        '&#8217;': "’",
        '&#8216;': "‘",
        '&#8211;': "–",
        '&#8212;': "—",
        '&#8230;': "…",
        '&#8221;': '”'
    };

    return text.replace(/\&[\w\d\#]{2,5}\;/g, function(m) { return map[m]; });
}
$(document).ready(function () {
    
    $('[data-toggle="tooltip"]').tooltip();
    $(".sidenav").hover(
        function () {
            $(this).removeClass("sidenavClose");
            $(this).addClass("sidenavOpen");
        },
        function () {
            //$(this).removeClass("sidenavOpen");
            //$(this).addClass("sidenavClose");
        }
    );
    $(".sideNavOpener").on("click",function() {
        $(".sidenav").removeClass("sidenavClose");
        $(".sidenav").addClass("sidenavOpen");
    });
    $(".sideNavCloser").on("click",function() {
        $(".sidenav").removeClass("sidenavOpen");
        $(".sidenav").addClass("sidenavClose");
    });
    $("#storyboard").sortable({
        items: "div:not(.unsortable)",
        revert: true,
        dropOnEmpty: false
    }); 
    /*    let editor;
        ClassicEditor
		.create( document.querySelector( '#editor' ))
		.then( editor => {
            editor=editor;
		    console.log( editor );
	    })
		.catch( error => {
			console.error( error );
        });
        console.log(editor);*/
    $('#storyboardModal').on('show.bs.modal', function (event) {
        console.log($(event.relatedTarget));
        console.log($(this));
        var sbID = $(event.relatedTarget).data('id');
        var mBody = $(event.relatedTarget).data('sbtext');
        if (mBody) {
            mBody = jQuery.parseJSON(mBody);
        }
        
        var mLabel = $(event.relatedTarget).data('sblabel');
        /*var myVal = $(event.relatedTarget).data('val');*/
        //$(this).find(".modal-title").text(mLabel);
        $(this).find("#editor").val(mBody);
        tinymce.get("editor").setContent(mBody);
        //console.log(sbID);
        $(this).find(".modal-title").html("<div class='form-group'><label>Storyboard Title</label> <input class='form-control' type='text' value='"+mLabel+"' id='sb_title'/></div>");
        
            
    });
    $("#storyboardModal").on('hide.bs.modal',function(event) {
        //console.log(editor);
    });
    $("#saveBtn").on("click",function(e) {
        var content = tinymce.get("editor").getContent();
        console.log(content,this,e);
    });
    $('#helpModal').on('show.bs.modal', function (event) {
        var el = $(event.relatedTarget).data('element');
        var h = decodeHTMLSpecialChars(help);
        thisHelp = jQuery.parseJSON(h);
        thisHelp = thisHelp[el];
        $(this).find(".modal-title").text(thisHelp.help_label);
        $(this).find(".modal-body").html(thisHelp.help_text);
        //var help = "<?php echo $help?>";
        console.log(thisHelp);
        
    });

    
});
