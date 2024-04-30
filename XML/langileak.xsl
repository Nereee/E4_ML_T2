<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Spoty5</title>
                <meta name="keywords" content="musika, erreproduktorea,spoty5"/>
                <meta name="author" content="haia"/>
                <meta name="description" content="Musika eta pdcast erreproduktore aplikazio bat da Spoty5"/>
                <meta charset="UTF-8"/>
                <link rel="stylesheet" href="../CSS/style.css"/>
                <link rel="shortcut icon" href="favicon-16x16.png" type="image/x-icon"/>
                <link rel="icon" href="favicon-16x16.png" type="image/x-icon"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
            </head>
            <body>
                <header>
                    <div class="container">
                        <div class="logo">
                            <img src="../img/logo.png" alt="logoa"/>
                        </div>
                    </div>
                </header>
                <nav>
                    <div class="nabegaziobarra">
                        <ul>
                            <li><a href="../index.html">Hasiera</a></li>
                            <li><a href="#">Bilatu</a></li>
                            <li><a href="../PHP/hasisaioa.php">Hasi saioa </a></li>
                            <li><a href="../PHP/departamentuak.php">Departamentuak </a></li>
                        </ul>
                    </div>
                </nav>
                <section>
                    <xsl:apply-templates select="enpresa/langileak/langilea"/>
                </section>
                <footer>
                    <div class="container3">
                        <div class="info-footer">
                            <h4>Enpresa</h4>
                            <ul>
                                <li>Buruz</li>
                                <li>Enplegua</li>
                                <li>Erregistrorako</li>
                                <li>
                                    <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">
                                        <img alt="Licencia Creative Commons" style="border-width:0"
                                             src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png"/>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="komunitatea">
                            <h4>Komunitateak</h4>
                            <ul>
                                <li>Artistentzat</li>
                                <li>Garatzaileak</li>
                                <li>Publizitatea</li>
                                <li>Inbertitzaileak</li>
                                <li>Hornitzaileak</li>
                            </ul>
                        </div>
                        <div class="saresozial">
                            <h4>Sare Sozialak</h4>
                            <a href="URL_de_Instagram" target="_blank">
                                <i class="fa-brands fa-instagram fa-sm" style="color: #ffffff;"></i>
                            </a>
                            <br/>
                            <a href="URL_de_Twitter" target="_blank">
                                <i class="fa-brands fa-x-twitter"></i>
                            </a>
                            <br/>
                            <a href="URL_de_Facebook" target="_blank">
                                <i class="fa-brands fa-facebook"></i>
                            </a>
                        </div>
                    </div>
                </footer>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="langilea">
        <div class="container4">
            <b><xsl:value-of select="izena"/> <xsl:value-of select="abizena"/></b><br/>
            <p>Email: <xsl:value-of select="email"/></p><br/>
            <p>Teléfono: <xsl:value-of select="telefonoa"/></p><br/>
            <img src="{img}" alt="Langilearen irudia"/><br/>
            <p>Departamentua: <xsl:value-of select="postua/departamentu/@kodea"/></p><br/>
            <p>Ardura: <xsl:value-of select="postua/ardurak/ardura/@kodea"/></p>
        </div>
    </xsl:template>
</xsl:stylesheet>
