<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Test de Hardware</title>
        <style>
        body {
            font-family: Arial, sans-serif;
            background-color: whitesmoke;
            padding: 1.5em;
            font-size: 1em;
        }

        h1 {
            text-align: center;
            color: rgb(78, 48, 37);
            font-size: 2em;
            margin-bottom: 1em;
        }

        form {
            width: 70%;
            margin: auto;
        }

        .pregunta {
            background-color: white;
            border: 0.15em solid rgb(78, 48, 37);
            border-radius: 0.6em;
            padding: 1em;
            margin-bottom: 1em;
        }

        .pregunta p {
            font-size: 1.2em;
            margin-bottom: 0.6em;
        }

        .opcion {
            display: block;
            margin-left: 1em;
            margin-bottom: 0.4em;
            font-size: 1em;
            cursor: pointer;
        }

        input[type="radio"] {
            margin-right: 0.5em;
        }

        .submit-btn {
            display: block;
            margin: 1.5em auto;
            padding: 0.6em 1.5em;
            font-size: 1em;
            background-color: rgb(78, 48, 37);
            color: white;
            border: none;
            border-radius: 0.5em;
            cursor: pointer;
        }

        .submit-btn:hover {
            background-color: rgb(120, 80, 60);
        }
    </style>
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
