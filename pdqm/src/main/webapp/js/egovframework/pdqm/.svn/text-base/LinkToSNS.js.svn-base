/**
 * khyoon 2011.11.14
 * SNS 연계 함수 모음
 */

function fn_send_twitter(subject, url) {
	var href = "https://twitter.com/intent/tweet?source=webclient&text="
				+ encodeURIComponent(subject)
				+ " " + encodeURIComponent(url);
	
	fn_open_sns_window(href, 'twitter');
}

function fn_send_facebook(subject, url) {
	var href = "http://www.facebook.com/sharer.php?u="
				+ encodeURIComponent(url)
				+ "&t=" + encodeURIComponent(subject);
	
	fn_open_sns_window(href, 'facebook');
}

function fn_send_me2day(subject, url) {
	var href = "http://me2day.net/posts/new?new_post[body]="
		+ encodeURIComponent(subject)
		+ " " + encodeURIComponent(url);

	fn_open_sns_window(href, 'me2day');				
}

function fn_open_sns_window(href, sns_typ) {
	var wnd = window.open(href, sns_typ, '');
	if(wnd) wnd.focus();
}