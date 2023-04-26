<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
    <head>
        <title>XSLT tutorial</title>
    </head>
<body>
    <table border="1" cellpadding="6" cellspacing="6">
     <thead bgcolor="#f2f2f2">
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Address</th>
    <th>Phone</th>   
</tr>
     </thead>
<tbody>

<xsl:for-each select="userInfo/user"> 
<xsl:sort select="@id" order="descending"/>
<xsl:if test="@id &lt;=2">
<tr>
<td><xsl:value-of select="@id"/></td>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="address"/></td>
<td><xsl:value-of select="phone"/></td>

</tr>   
</xsl:if>
</xsl:for-each>

</tbody>

        </table>
</body>



</html>    

</xsl:template>
</xsl:stylesheet>
