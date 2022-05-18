<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" />
    <xsl:template match="/tienda">
    
    <html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" href="3_tienda.css"/>
        <title><xsl:value-of select="title"/></title>
    </head>
    <body>
    <div id="titulo">
        <h1><xsl:value-of select="encabezado"/></h1>
        <h2><xsl:value-of select="descripcion"/></h2>
    </div>
        <div id="tarjetas">
            <xsl:for-each select="/tienda/productos/producto">
                <div class="tarjeta">
                    <h3><xsl:value-of select="nombre"/></h3>
                    <p><xsl:value-of select="descripcion"/></p>
                    <p><xsl:value-of select="precio"/></p>
                </div>
            </xsl:for-each>
            
        </div>
    </body>
    </html>
    
    </xsl:template>


    

</xsl:stylesheet>