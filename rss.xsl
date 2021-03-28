<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html" doctype-system="about:legacy-compat" indent="yes" />

	<xsl:template match="/rss/channel">

		<html lang="en">
		<head>
			<meta charset="utf-8" />
			<meta name="viewport" content="width=device-width, initial-scale=1" />

			<title>
				<xsl:value-of select="title" />
			</title>
			<link rel="stylesheet" type="text/css" href="/style.css" media="screen" />
			<link rel="alternate" type="application/atom+xml" title="Feed for extinction.fyi" href="http://extinction.fyi/index.xml" />

			<title>extinction.fyi</title>
			<meta name="description" content="Documenting the climate emergency" />

		</head>
		<body>

			<header>
				<!-- Add header image as defined in index.xml -->

				<xsl:if test="/rss/channel/image">
                    			<a class="head_logo">
                        		<xsl:attribute name="href">
                            		<xsl:value-of select="/rss/channel/link" />
                        		</xsl:attribute>
                        		<img width="200px">
                        		<xsl:attribute name="src">
                            		<xsl:value-of select="/rss/channel/image/url" />
                       		 	</xsl:attribute>
                        		<xsl:attribute name="title">
                            		<xsl:value-of select="/rss/channel/title" />
                        		</xsl:attribute>
                       			</img>
                    			</a>
                		</xsl:if>
				<h1 class="title">
					<xsl:value-of select="title" />
				</h1>

				<p class="description" style="padding-top:0 !important;">
					<xsl:value-of select="description" />
				</p>
		        <nav>
		  <a href="/">Home</a>
		  <a href="/about">About</a>
		  <a href="/faq">FAQ</a>
		</nav>
		  </header>

			<ul class="posts" style="list-style-type: none !important;">
				<xsl:for-each select="./item[position() &lt;= 3]">

					<li class="posts__post post" style="padding-top:1.25em !important;">

						<p class="post__title">
							 <a href="{ link }" class="post__link">
								<strong>
									<xsl:value-of select="title" />
								 </strong>
							 </a>&#32;
 							&#40;<xsl:value-of select="source" />&#41;
						</p>

						<p class="post__preview">
							<xsl:value-of select="description" />
						</p>

						<p class="post__date" style="font-size:0.7em !important;">
							<xsl:value-of select="pubDate" />
						</p>

					</li>

				</xsl:for-each>
			</ul>

			<footer>
				<a href="https://creativecommons.org/choose/zero/" class="footer__link">CC0 license</a>. This page is an RSS feed.
			</footer>

		</body>
		</html>

	</xsl:template>

</xsl:stylesheet>
