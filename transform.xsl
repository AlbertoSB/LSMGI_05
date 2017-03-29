<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body style="font-family:arial">
  <h2>Cuestionario Psicología</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>Enunciado</th>
      <th>Opciones</th>
      <th>Respuestas</th>
    </tr>
    <xsl:for-each select="questions/question">
    <tr bgcolor="#e6ffcc">
      <td><xsl:value-of select="title"/></td>
      <td>
       <xsl:for-each select="option">
        <xsl:value-of select="position()"/>: <xsl:value-of select="text()"/><br/>
       </xsl:for-each>
      </td>
      <td style="text-align:center">
       <xsl:for-each select="answer">
        <xsl:value-of select="text()"/><br/>
       </xsl:for-each>
      </td>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
