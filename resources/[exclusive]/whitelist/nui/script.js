$(document).ready(function(){
	window.addEventListener("message",function(event){
        if(event.data.openNUI){
            $("body").css("display", "block");
            $(".code").html(event.data.id)
        }else{
            $("body").css("display", "none");
        }

        if(event.data.hide){
            $("body").css("display", "none");

        }
	});

});

const confirm = () => {
    $.post("http://whitelist/update", JSON.stringify({}));

}

const openNavigator = () => {
    window.invokeNative("openUrl", "https://discord.gg/pr4FBk9B")
}
