<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" doctype-system="about:legacy-compat"/>
    <xsl:template match="/students">
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
                        <th>성</th>
                        <th>닉네임</th>
                        <th>나이</th>
                        <th>성별</th>
                        <th>생일</th>

                    </tr>
                </thead>
                <xsl:for-each select="/students/student">
                    <tr>
                         <!-- Attribute는 @을 앞에 붙이세요.-->
                        <td><xsl:value-of select = "firstname"></xsl:value-of></td>
                        <td><xsl:value-of select = "lastname"></xsl:value-of></td>
                        <td><xsl:value-of select = "nickname"></xsl:value-of></td>
                        <td><xsl:value-of select = "age"></xsl:value-of></td>
                        <td><xsl:value-of select = "gender"></xsl:value-of></td>
                        <td><xsl:value-of select = "birth"></xsl:value-of></td>

                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>
