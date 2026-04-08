<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Test de Hardware</title>
      </head>
      <body>
        <h1>Test de Hardware</h1>
        <form id="testForm">

          <xsl:for-each select="DATA/ROW">
            <div class="pregunta">
              <p>
                <strong>P. <xsl:value-of select="id_pregunta"/>:</strong>
                <xsl:value-of select="pregunta"/>
              </p>

              <label class="opcion">
                <input type="radio" name="pregunta_{id_pregunta}" value="A"/> 
                <xsl:value-of select="opcion_a"/>
              </label>
              <label class="opcion">
                <input type="radio" name="pregunta_{id_pregunta}" value="B"/> 
                <xsl:value-of select="opcion_b"/>
              </label>
              <label class="opcion">
                <input type="radio" name="pregunta_{id_pregunta}" value="C"/> 
                <xsl:value-of select="opcion_c"/>
              </label>
            </div>
          </xsl:for-each>

          <input type="submit" value="Enviar" class="submit-btn"/>
        </form>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
