<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="xs"
                version="2.0">
    
    <xsl:template match="/">
        <html>
            <head>
                <title> TP XML </title>
            </head>
            <body>
                
                <h1> AFFICHAGE RELEVEE </h1>
                <ul>
                    <li> RIB : <xsl:value-of select="releve/@RIB"/></li>
                    <li> Date Releve : <xsl:value-of select="releve/dateReleve"/>  </li>
                    <li> Solde : <xsl:value-of select="releve/dateReleve"/>  </li>
                </ul>
                
                
                <br></br>
                <table>
                    <thead>
                        <th>
                            TYPE
                        </th>
                        <th>
                            DATE
                        </th>
                        <th>
                            MONTANT
                        </th>
                        <th>
                            DESCRIPTION
                        </th>
                        <th> Total debit</th>
                    </thead>
                    <tbody>
                        <xsl:for-each select="releve/operations/operation">
                            <tr>
                                
                                <td>
                                    <xsl:value-of select="@type"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@date"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@montant"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@description"/>
                                </td>
                                
                            </tr>
                            
                            
                        </xsl:for-each>
                        <ul>
                            <li>
                                Sum debit : <xsl:value-of select="sum(releve/operations/operation[@type='DEBIT']/@montant)"/>
                            </li>
                            <li>
                                Sum credit : <xsl:value-of select="sum(releve/operations/operation[@type='CREDIT']/@montant)"/>
                            </li>
                        </ul>
                    </tbody>
                </table>
                
                <h1> AFFICHAGE OPERATIONS CREDIT </h1>
                
                <table>
                    <thead>
                        <th>
                            TYPE
                        </th>
                        <th>
                            DATE
                        </th>
                        <th>
                            MONTANT
                        </th>
                        <th>
                            DESCRIPTION
                        </th>
                        <th> Total debit</th>
                    </thead>
                    <tbody>
                        <xsl:for-each select="releve/operations/operation[@type='CREDIT']">
                            <tr>
                                
                                <td>
                                    <xsl:value-of select="@type"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@date"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@montant"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@description"/>
                                </td>
                                
                            </tr>
                            
                            
                        </xsl:for-each>
                        
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>