<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match = "/class">
    <html>
        <body>
            <h2>Student List</h2>
            <table border = "1">

                <xsl:for-each select = "student">
                    <tr>
                        <th>FirstName</th>
                        <td><xsl:value-of select = "firstname"></xsl:value-of></td>
                    </tr>
                    <tr>
                        <th>Last Name</th>
                        <td><xsl:value-of select = "lastname"></xsl:value-of></td>
                    </tr>
                    <tr>
                        <th>Nick Name</th>
                        <td><xsl:value-of select = "nickname"></xsl:value-of></td>
                    </tr>
                    <tr>
                        <th>Age</th>
                        <td><xsl:value-of select = "age"></xsl:value-of></td>

                    </tr>
                    <tr>
                    <th>gender</th>
                    <td><xsl:value-of select = "gender"></xsl:value-of></td>
                    </tr>
                    <tr>
                        <th>Birth</th>
                        <td><xsl:value-of select = "birth"></xsl:value-of></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>