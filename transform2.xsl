<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<head>
<style rel="stylesheet" type="text/css">
body {font-family:arial;font-size:15px}
table{width:100%;border:1px solid}
th{background: -webkit-linear-gradient(left top, #000d1a , #0066cc); /* For Safari 5.1 to 6.0 */
background: -o-linear-gradient(bottom right, #000d1a, #0066cc); /* For Opera 11.1 to 12.0 */
background: -moz-linear-gradient(bottom right, #000d1a, #0066cc); /* For Firefox 3.6 to 15 */
background: linear-gradient(to bottom right, #000d1a , #0066cc); /* Standard syntax */
color:#ffffff;padding:10px}
td,tr{border:1px solid;padding:2px;vertical-align:top;background-color:#dae6f1}
span{color:green;padding-left:5px}
#x{color:red}
</style>
</head>
<body>
  <h2>Corrección</h2>
  <table>
    <tr>
      <th>Pregunta</th>
      <th>Opciones</th>
	  <th>Respuesta</th>
    </tr>
    <xsl:for-each select="questions/question">      
    <tr>
      <td style="vertical-align: middle"><xsl:value-of select="title" /></td>
      <td>
       <xsl:for-each select="answer">
        <xsl:choose>
         <xsl:when test="../type = 'text'">
          <span><xsl:value-of select="text()"/></span>
         </xsl:when>
        </xsl:choose>         
       </xsl:for-each>
       <xsl:for-each select="option">
         <xsl:variable name="optposition" select="position()"/>
        O<xsl:value-of select="$optposition"/>: <xsl:value-of select="text()"/>
         <xsl:for-each select="../answer">
          <xsl:variable name="correctanswer" select="text()"/>
          <xsl:if test="$optposition=$correctanswer">
            <span>&#x2713;</span>
          </xsl:if>
         </xsl:for-each><br/><br/>
       </xsl:for-each>
      </td>
      <td>
       <xsl:for-each select="useranswer">
        <xsl:variable name="useranswer" select="text()"/>
        <xsl:value-of select="text()"/>
        <xsl:for-each select="../answer">
          <xsl:choose>
           <xsl:when test="../type = 'text'">
            <xsl:variable name="correctanswertext" select="text()"/>
            <xsl:if test="$useranswer=$correctanswertext">
              <span>&#x2713;</span>
            </xsl:if>
           </xsl:when>
           <xsl:otherwise>
            <xsl:variable name="correctanswer" select="text()+1"/>
           <xsl:if test="$useranswer=$correctanswer">
              <span>&#x2713;</span>
            </xsl:if>
           </xsl:otherwise>
          </xsl:choose>
         </xsl:for-each>
         <!--<xsl:if test="$count=1">
           <span id='x'>&#x2715;</span>
         </xsl:if> -->
         <br/><br/>
       </xsl:for-each>       
     </td>
    </tr>
    </xsl:for-each>
  </table>
 </body>
 </html>
</xsl:template>

</xsl:stylesheet>
