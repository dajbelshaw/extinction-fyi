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

			<link rel="icon" href="/favicon.ico" type="image/x-icon" />
			<link rel="stylesheet" type="text/css" href="/style.css" />
		</head>
		<body>

			<header>
				<h1 class="title">
					<xsl:value-of select="title" />
				</h1>

				<p class="description">
					<xsl:value-of select="description" />
				</p>
		        <nav>
		  <a href="/">Home</a>
		  <a href="/about">About</a>
		  <a href="/faq">FAQ</a>
		</nav>
		  </header>


			<ul class="posts">
				<xsl:for-each select="./item">

					<li class="posts__post post">

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

			<p class="footer">
				<a href="{ link }" class="footer__link">CC0</a>
			</p>

		</body>
		</html>

	</xsl:template>

</xsl:stylesheet>
