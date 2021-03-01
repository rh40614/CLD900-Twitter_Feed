<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h2>Possible Influencers on Twitter</h2>
  <p>Customer are exported from SAP Event Ticketing.</p>
  <table border="1">
    <tr bgcolor="#F0AB00">
      <th style="text-align:left">First Name</th>
      <th style="text-align:left">Last Name</th>
	  <th style="text-align:left">Mail Address</th>
	  <th style="text-align:left">Twitter</th>
	  <th style="text-align:left">Followers</th>
    </tr>
    <xsl:for-each select="CustomerInstances/customer">
    <tr>
      <td><xsl:value-of select="firstName"/></td>
      <td><xsl:value-of select="lastName"/></td>
	  <td><xsl:value-of select="email"/></td>
	  <td><xsl:value-of select="twitter"/></td>
	  <td><xsl:value-of select="followers_count"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>