
if(!jQuery)
    throw 'JQuery must be loaded first!';


function testCombination(combinationEnumerator, list, combinationSize, startIndex) {
    document.write("<div class='result'><ol>");
    document.write(zcl.formatObject("<p>Calling params: list=({list}), combination size={size}, startIndex={startIndex}</p>", { list: list, size: combinationSize, startIndex: startIndex }));
    combinationEnumerator(list, combinationSize, function (items) {
        document.write("<li class='combination'>");
        document.write(items);
        document.write("</li>");
    }, startIndex);
    document.write("</ol></div>");
}

//style the test results
$(function(){

	//set page title
	var title = window.location.href;
    title = zcl.subStrBetweenLastAndFirst(title, '/', '.');
	document.title = title;
	$("body").prepend("<h2>" + title + "</h2>");

    //output source code
	$("body script").each(function(){
		$(this).before("<p class='start'>Code is:</p><div><pre>" +  zcl.escapeHtml($(this).html()) + "</pre></div>");
		$(this).before("<p class='end'>Result is:</p>");
		
	});
});