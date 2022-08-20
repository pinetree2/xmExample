<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" doctype-system="about:legacy-compat"/>
    <xsl:template match="/">
    <html>
        <head>
            <meta charset="utf-8"/>
            <title>Students</title>
            <style type="text/css">
                td {
                    color: blue;
                }
            </style>
        </head>
 
        <body>
            <table>
            <caption>Information about various students</caption>
                <thead>
                    <tr>
                        <th>이름</th>
                        <th>학번</th>
                    </tr>
                </thead>
                <xsl:for-each select="/students/student">
                    <tr>
                        <td><xsl:value-of select="name"/></td> <!-- Attribute는 @을 앞에 붙이세요.-->
                        <td><xsl:value-of select="student_id"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>
