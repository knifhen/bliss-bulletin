<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="layout" content="main"/>
	<title><g:message code="bulletin.list.title"/></title>
</head>
<body>
<div class="wrapper">
	<div class="content">
		<div class="header">
			<img src="images/header.jpg"/>
		</div>
		<div class="mid">
			<div class="intro">
				<div class="readspeaker">
					<a onclick="readpage(this.href + escape(document.location.href), 1);return false;" href="http://wr.readspeaker.com/webreader/webreader.php?cid=7f1d6ffc7708a003c7cb1faa30cde946&template=web_free&title=readspeaker&url=">
						<img alt="${message(code:'bulletin.list.webreader.alt')}" title="${message(code:'bulletin.list.webreader.alt')}" style="border-style: none;" src="http://media.readspeaker.com/images/webreader/listen_sv_se.gif"/>
					</a>
					<div id="WR_1"></div>
				</div>
				<h1><g:message code="bulletin.list.title"/></h1>
				<p><g:message code="bulletin.list.instructions"/></p>
			</div>
			<g:each in="${bulletinInstanceList}" status="i" var="bulletin">
				<div class="issue">
					<img class="thumbnail" title="${bulletin.title}" alt="${bulletin.title}" src="${createLink(action: 'coverPage', id: bulletin.id)}"/>
					<div class="issue_info">
						<h2>${bulletin.title}</h2>
						<p class="dimmed summary">${bulletin.description}</p>
						<g:link class="icon_text pdf" action="data" id="${bulletin.id}"><g:message code="bulletin.list.downloadPDF"/></g:link>
						<g:each var="opf" in="${bulletin.opfs}">
							<br/>
							<a class="icon_text opf" href="${opf.url}">${opf.title}</a>
						</g:each>
						<div class="clear"></div>
					</div>
				</div>
			</g:each>
            <div class="footer"></div>
		</div>
	</div>
</div>


<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-9554565-1");
pageTracker._trackPageview();
} catch(err) {}</script>

</body>
</html>
