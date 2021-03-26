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
			<link rel="icon" href="favicon.ico" type="image/x-icon" />
			<link rel="stylesheet" type="text/css" href="/style.css" class="image" />
			<link rel="alternate" type="application/atom+xml" title="Feed for extinction.fyi" href="http://extinction.fyi/test/index.xml" />

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

				<p class="description" style="padding-top:0.5em !important;">
					<xsl:value-of select="description" />
				</p>
		        <nav>
		  <a href="/test">Home</a>
		  <a href="/test/about">About</a>
		  <a href="/test/faq">FAQ</a>
		</nav>
		  </header>


			<ul class="posts" style="list-style-type: none !important;">
				<xsl:for-each select="./item">

					<li class="posts__post post" style="padding-top:1.25em !important;">

						<p class="post__title">
							 <a href="{ link }" class="post__link">
								<xsl:value-of select="title" />
							 </a>
							 &#32;
 							&#40;<xsl:value-of select="source" />&#41;
						</p>

						<p class="post__preview">
							<xsl:value-of select="description" />
						</p>

					</li>

				</xsl:for-each>
			</ul>

			<footer>
				<a href="https://creativecommons.org/choose/zero/" class="footer__link">CC0. This page is an RSS feed.</a>
			</footer>

		</body>
		</html>

	</xsl:template>

</xsl:stylesheet>
