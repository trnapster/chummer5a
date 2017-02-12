<?xml version="1.0" encoding="UTF-8" ?>
<!-- Text-Only Character Sheet -->
<!-- Created by Keith Rudolph, krudolph@gmail.com -->
<!-- Version -500 -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template match="/characters/character">
		<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
			<head>
				<meta http-equiv="x-ua-compatible" content="IE=Edge"/>
				<title><xsl:value-of select="name" /></title>
				<style type="text/css">
					*
					{
						font-family: courier new, courier;
						font-size: 8pt;
					}
				</style>
			</head>
			<body>
				== Info ==
				<br />Straßenname: <xsl:value-of select="alias" />
				<br />Name: <xsl:value-of select="name" />
				<br />Bewegung: <xsl:value-of select="movement" />
				<br />Karma: <xsl:value-of select="totalkarma" />
				<br />Straßenruf: <xsl:value-of select="totalstreetcred" />
				<br />Schlechter Ruf: <xsl:value-of select="totalnotoriety" />
				<br />Prominenz: <xsl:value-of select="totalpublicawareness" />
				<br /><xsl:value-of select="metatype" />
					<xsl:if test="metavariant != ''">
						(<xsl:value-of select="metavariant" />)
					</xsl:if>
					<xsl:if test="sex != ''"><xsl:text> </xsl:text><xsl:value-of select="sex" /></xsl:if>
					<xsl:if test="age != ''"><xsl:text> </xsl:text>Age <xsl:value-of select="age" /></xsl:if>
				<xsl:if test="height != '' or weight != ''">
					<br />
					<xsl:if test="height != ''">Größe <xsl:value-of select="height" /><xsl:text> </xsl:text></xsl:if>
					<xsl:if test="weight != ''">Gewicht <xsl:value-of select="weight" /> </xsl:if>
				</xsl:if>
				<br />Selbstbeherrschung: <xsl:value-of select="composure" />
				<br />Menschenkenntnis: <xsl:value-of select="judgeintentions" />
				<br />Heben/Tragen: <xsl:value-of select="liftandcarry" /> (<xsl:value-of select="liftweight" /> kg/<xsl:value-of select="carryweight" /> kg)
				<br />Erinnerungsvermögen: <xsl:value-of select="memory" />
				<br />Nuyen: <xsl:value-of select="nuyen" />
				
				<br />
				<br />== Attribute ==
				<br />KON: <xsl:value-of select="attributes/attribute[name = 'BOD']/base" />
						<xsl:if test="attributes/attribute[name = 'BOD']/total != attributes/attribute[name = 'BOD']/base">
							(<xsl:value-of select="attributes/attribute[name = 'BOD']/total" />)
						</xsl:if>
				<br />GES: <xsl:value-of select="attributes/attribute[name = 'AGI']/base" />
						<xsl:if test="attributes/attribute[name = 'AGI']/total != attributes/attribute[name = 'AGI']/base">
							(<xsl:value-of select="attributes/attribute[name = 'AGI']/total" />)
						</xsl:if>
				<br />REA: <xsl:value-of select="attributes/attribute[name = 'REA']/base" />
						<xsl:if test="attributes/attribute[name = 'REA']/total != attributes/attribute[name = 'REA']/base">
							(<xsl:value-of select="attributes/attribute[name = 'REA']/total" />)
						</xsl:if>
				<br />STR: <xsl:value-of select="attributes/attribute[name = 'STR']/base" />
						<xsl:if test="attributes/attribute[name = 'STR']/total != attributes/attribute[name = 'STR']/base">
							(<xsl:value-of select="attributes/attribute[name = 'STR']/total" />)
						</xsl:if>
				<br />CHA: <xsl:value-of select="attributes/attribute[name = 'CHA']/base" />
						<xsl:if test="attributes/attribute[name = 'CHA']/total != attributes/attribute[name = 'CHA']/base">
							(<xsl:value-of select="attributes/attribute[name = 'CHA']/total" />)
						</xsl:if>
				<br />INT: <xsl:value-of select="attributes/attribute[name = 'INT']/base" />
						<xsl:if test="attributes/attribute[name = 'INT']/total != attributes/attribute[name = 'INT']/base">
							(<xsl:value-of select="attributes/attribute[name = 'INT']/total" />)
						</xsl:if>
				<br />LOG: <xsl:value-of select="attributes/attribute[name = 'LOG']/base" />
						<xsl:if test="attributes/attribute[name = 'LOG']/total != attributes/attribute[name = 'LOG']/base">
							(<xsl:value-of select="attributes/attribute[name = 'LOG']/total" />)
						</xsl:if>
				<br />WIL: <xsl:value-of select="attributes/attribute[name = 'WIL']/base" />
						<xsl:if test="attributes/attribute[name = 'WIL']/total != attributes/attribute[name = 'WIL']/base">
							(<xsl:value-of select="attributes/attribute[name = 'WIL']/total" />)
						</xsl:if>
				<br />EDG: <xsl:value-of select="attributes/attribute[name = 'EDG']/base" />
						<xsl:if test="attributes/attribute[name = 'EDG']/total != attributes/attribute[name = 'EDG']/base">
							(<xsl:value-of select="attributes/attribute[name = 'EDG']/total" />)
						</xsl:if>
				<xsl:if test="magenabled = 'True'">
					<br />MAG: <xsl:value-of select="attributes/attribute[name = 'MAG']/base" />
					<xsl:if test="attributes/attribute[name = 'MAG']/total != attributes/attribute[name = 'MAG']/base">
						(<xsl:value-of select="attributes/attribute[name = 'MAG']/total" />)
					</xsl:if>
				</xsl:if>
				<xsl:if test="resenabled = 'True'">
					<br />RES: <xsl:value-of select="attributes/attribute[name = 'RES']/base" />
					<xsl:if test="attributes/attribute[name = 'RES']/total != attributes/attribute[name = 'RES']/base">
						(<xsl:value-of select="attributes/attribute[name = 'RES']/total" />)
					</xsl:if>
				</xsl:if>
				
				<br />
				<br />== Abgeleitete Attribute ==
				<br />Essenz:
					<xsl:call-template name="for.loop">
						<xsl:with-param name="i">
							<xsl:value-of select="string-length('Essence:')" />
						</xsl:with-param>
						<xsl:with-param name="count">
							<xsl:value-of select="25" />
						</xsl:with-param>
					</xsl:call-template>
					<xsl:value-of select="attributes/attribute[name = 'ESS']/base" />
				<br />Initiative:
					<xsl:call-template name="for.loop">
						<xsl:with-param name="i">
							<xsl:value-of select="string-length('Initiative:')" />
						</xsl:with-param>
						<xsl:with-param name="count">
							<xsl:value-of select="25" />
						</xsl:with-param>
					</xsl:call-template>
					<xsl:value-of select="init/base" />
					<xsl:if test="init/total != init/base">
						(<xsl:value-of select="init/total" />)
					</xsl:if>
				<br />INI-Durchgänge:
					<xsl:call-template name="for.loop">
						<xsl:with-param name="i">
							<xsl:value-of select="string-length('IP:')" />
						</xsl:with-param>
						<xsl:with-param name="count">
							<xsl:value-of select="25" />
						</xsl:with-param>
					</xsl:call-template>
					<xsl:value-of select="ip/base" />
					<xsl:if test="ip/total != ip/base">
						(<xsl:value-of select="ip/total" />)
					</xsl:if>
				<xsl:if test="astralip/base">
					<br />Astrale Initiative:
					<xsl:call-template name="for.loop">
						<xsl:with-param name="i">
							<xsl:value-of select="string-length('Astral Initiative:')" />
						</xsl:with-param>
						<xsl:with-param name="count">
							<xsl:value-of select="25" />
						</xsl:with-param>
					</xsl:call-template>
					<xsl:value-of select="astralinit/base" />
					<br />Astral IP:
					<xsl:call-template name="for.loop">
						<xsl:with-param name="i">
							<xsl:value-of select="string-length('Astral IP:')" />
						</xsl:with-param>
						<xsl:with-param name="count">
							<xsl:value-of select="25" />
						</xsl:with-param>
					</xsl:call-template>
					<xsl:value-of select="astralip/base" />
				</xsl:if>
				<xsl:if test="matrixip/base">
					<br />Matrixinitiative:
					<xsl:call-template name="for.loop">
						<xsl:with-param name="i">
							<xsl:value-of select="string-length('Matrix Initiative:')" />
						</xsl:with-param>
						<xsl:with-param name="count">
							<xsl:value-of select="25" />
						</xsl:with-param>
					</xsl:call-template>
					<xsl:value-of select="matrixinit/base" />
					<br />Matrix INI-Duchgänge:
					<xsl:call-template name="for.loop">
						<xsl:with-param name="i">
							<xsl:value-of select="string-length('Matrix IP:')" />
						</xsl:with-param>
						<xsl:with-param name="count">
							<xsl:value-of select="25" />
						</xsl:with-param>
					</xsl:call-template>
					<xsl:value-of select="matrixip/base" />
				</xsl:if>
				<br />Körperliche Schadensleiste:
					<xsl:call-template name="for.loop">
						<xsl:with-param name="i">
							<xsl:value-of select="string-length('Physical Damage Track:')" />
						</xsl:with-param>
						<xsl:with-param name="count">
							<xsl:value-of select="25" />
						</xsl:with-param>
					</xsl:call-template>
					<xsl:value-of select="physicalcm" />
				<br />Geistige Schadensleiste:
					<xsl:call-template name="for.loop">
						<xsl:with-param name="i">
							<xsl:value-of select="string-length('Stun Damage Track:')" />
						</xsl:with-param>
						<xsl:with-param name="count">
							<xsl:value-of select="25" />
						</xsl:with-param>
					</xsl:call-template>
					<xsl:value-of select="stuncm" />
				
				<br />
				<br />== Aktionsfertigkeiten ==
				<xsl:call-template name="skills" />
				
				<br />
				<br />== Wissensfertigkeiten ==
				<xsl:call-template name="knowledgeskills" />
				
				<xsl:if test="contacts/contact">
				<br />
				<br />== Connections ==
				<xsl:call-template name="contacts" />
				</xsl:if>
				
				<xsl:if test="qualities/quality">
				<br />
				<br />== Gaben/Handicaps ==
				<xsl:call-template name="qualities" />
				</xsl:if>
				
				<xsl:if test="spells/spell">
					<br />
					<br />== Zaubersprüche ==
					<br />(Tradition: <xsl:value-of select="tradition/name" />, Entzugswiderstand gegen <xsl:value-of select="tradition/drain" />)
					<xsl:call-template name="spells" />
				</xsl:if>
				
				<xsl:if test="powers/power">
					<br />
					<br />== Kräfte ==
					<xsl:call-template name="powers" />
				</xsl:if>
				
				<xsl:if test="complexforms/complexform">
					<br />
					<br />== Komplexe Formen ==
					<br />(Tradition: <xsl:value-of select="stream" />, Schwundwiderstand gegen <xsl:value-of select="drain" />)
					<xsl:call-template name="complexforms" />
				</xsl:if>

        <xsl:if test="aiprograms/aiprogram">
          <br />
          <br />== KI Programme und fortgeschrittene Programme ==
          <xsl:call-template name="aiprograms" />
        </xsl:if>
				
				<xsl:if test="critterpowers/critterpower">
					<br />
					<br />== Critterkräfte ==
					<xsl:call-template name="critterpowers" />
				</xsl:if>
				
				<xsl:if test="lifestyles/lifestyle">
					<br />
					<br />== Lifestile ==
					<xsl:call-template name="lifestyle" />
				</xsl:if>
				
				<xsl:if test="cyberwares/cyberware">
					<br />
					<br />== Cyberware/Bioware ==
					<xsl:call-template name="cyberware" />
				</xsl:if>
				
				<xsl:if test="armors/armor">
					<br />
					<br />== Panzerung ==
					<xsl:call-template name="armors" />
				</xsl:if>
				
				<xsl:if test="weapons/weapon">
					<br />
					<br />== Waffen ==
					<xsl:call-template name="weapons" />
				</xsl:if>

				<xsl:if test="martialarts/martialart">
					<br />
					<br />== Kampfkünste ==
					<xsl:call-template name="martialarts" />
				</xsl:if>
				
				<xsl:if test="gears/gear[iscommlink = 'True'] or armors/armor/gears/gear[iscommlink = 'True'] or cyberwares/cyberware/gears/gear[iscommlink = 'True'] or cyberwares/cyberware/children/cyberware/gears/gear[iscommlink = 'True'] or weapons/weapon/accessories/accessory/gears/gear[iscommlink = 'True']">
					<br />
					<br />== Kommlink ==
					<xsl:call-template name="commlinks" />
				</xsl:if>
				
				<xsl:if test="gears/gear[iscommlink != 'True']">
					<br />
					<br />== Ausrüstung ==
					<xsl:call-template name="gear" />
				</xsl:if>
				
				<xsl:if test="vehicles/vehicle">
					<br />
					<br />== Fahrzeuge ==
					<xsl:call-template name="vehicles" />
				</xsl:if>
				
				<xsl:if test="expenses">
					<br />
					<br />== Ausgegebenes Karma ==
					<xsl:call-template name="karmaexpenses" />
				</xsl:if>
				
				<xsl:if test="expenses">
					<br />
					<br />== Ausgegebene Nuyen ==
					<xsl:call-template name="nuyenexpenses" />
				</xsl:if>
				
				<xsl:if test="description != ''">
					<br />
					<br />== Beschreibung ==<br />
					<xsl:call-template name="PreserveLineBreaks">
						<xsl:with-param name="text" select="description" />
					</xsl:call-template>
				</xsl:if>
				
				<xsl:if test="background != ''">
					<br />
					<br />== Hintergrund ==<br />
					<xsl:call-template name="PreserveLineBreaks">
						<xsl:with-param name="text" select="background" />
					</xsl:call-template>
				</xsl:if>
				
				<xsl:if test="concept != ''">
					<br />
					<br />== Konzept ==<br />
					<xsl:call-template name="PreserveLineBreaks">
						<xsl:with-param name="text" select="concept" />
					</xsl:call-template>
				</xsl:if>
				
				<xsl:if test="notes != ''">
					<br />
					<br />== Notizen ==<br />
					<xsl:call-template name="PreserveLineBreaks">
						<xsl:with-param name="text" select="notes" />
					</xsl:call-template>
				</xsl:if>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template name="for.loop">
		<xsl:param name="i" />
		<xsl:param name="count" />
		<xsl:if test="$i &lt;= $count">
			<xsl:text>&#160;</xsl:text>
			<xsl:call-template name="for.loop">
				<xsl:with-param name="i">
					<xsl:value-of select="$i + 1" />
				</xsl:with-param>
				<xsl:with-param name="count">
					<xsl:value-of select="$count" />
				</xsl:with-param>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	
	<xsl:template name="skills">
		<xsl:variable name="items" select="skills/skill[knowledge = 'False' and (rating &gt; 0 or total &gt; 0)]"/>
		<xsl:for-each select="$items">
			<xsl:sort select="name" />
				<br /><xsl:value-of select="name" />
				<xsl:call-template name="for.loop">
					<xsl:with-param name="i">
						<xsl:value-of select="string-length(name)" />
					</xsl:with-param>
					<xsl:with-param name="count">
						<xsl:value-of select="25" />
					</xsl:with-param>
				</xsl:call-template>
				: <xsl:value-of select="rating" />
				<xsl:choose>
					<xsl:when test="spec != ''">
						[<xsl:value-of select="spec" />]
						<xsl:call-template name="for.loop">
							<xsl:with-param name="i">
								<xsl:value-of select="string-length(spec) + 4" />
							</xsl:with-param>
							<xsl:with-param name="count">
								<xsl:value-of select="20" />
							</xsl:with-param>
						</xsl:call-template>
					</xsl:when>
					<xsl:otherwise>
						<xsl:call-template name="for.loop">
							<xsl:with-param name="i">
								<xsl:value-of select="0" />
							</xsl:with-param>
							<xsl:with-param name="count">
								<xsl:value-of select="20" />
							</xsl:with-param>
						</xsl:call-template>
					</xsl:otherwise>
				</xsl:choose>
				Pool: <xsl:value-of select="total" />
				<xsl:if test="spec != '' and exotic = 'False'"> (<xsl:value-of select="total + 2" />)</xsl:if>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="knowledgeskills">
		<xsl:variable name="items" select="skills/skill[knowledge = 'True']"/>
		<xsl:for-each select="$items">
			<xsl:sort select="name" />
				<br /><xsl:value-of select="name" />
				<xsl:call-template name="for.loop">
					<xsl:with-param name="i">
						<xsl:value-of select="string-length(name)" />
					</xsl:with-param>
					<xsl:with-param name="count">
						<xsl:value-of select="25" />
					</xsl:with-param>
				</xsl:call-template>
				: 
				<xsl:choose>
				<xsl:when test="islanguage = 'True' and rating = 0">
					N
					<xsl:call-template name="for.loop">
						<xsl:with-param name="i">
							<xsl:value-of select="1" />
						</xsl:with-param>
						<xsl:with-param name="count">
							<xsl:value-of select="20" />
						</xsl:with-param>
					</xsl:call-template>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="rating" />
					<xsl:choose>
						<xsl:when test="spec != ''">
							[<xsl:value-of select="spec" />]
							<xsl:call-template name="for.loop">
								<xsl:with-param name="i">
									<xsl:value-of select="string-length(spec) + 4" />
								</xsl:with-param>
								<xsl:with-param name="count">
									<xsl:value-of select="20" />
								</xsl:with-param>
							</xsl:call-template>
						</xsl:when>
						<xsl:otherwise>
							<xsl:call-template name="for.loop">
								<xsl:with-param name="i">
									<xsl:value-of select="0" />
								</xsl:with-param>
								<xsl:with-param name="count">
									<xsl:value-of select="20" />
								</xsl:with-param>
							</xsl:call-template>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:otherwise>
				</xsl:choose>
				Pool: <xsl:value-of select="total" />
				<xsl:if test="spec != '' and exotic = 'False'"> (<xsl:value-of select="total + 2" />)</xsl:if>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="contacts">
		<xsl:for-each select="contacts/contact">
			<xsl:sort select="name" />
			<br /><xsl:value-of select="name" /> (<xsl:value-of select="connection" />, <xsl:value-of select="loyalty" />)
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="qualities">
		<xsl:for-each select="qualities/quality">
			<xsl:sort select="name" />
			<br /><xsl:value-of select="name" />
			<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="spells">
		<xsl:for-each select="spells/spell">
			<xsl:sort select="name" />
			<br /><xsl:value-of select="name" />
			<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
			<xsl:choose>
				<xsl:when test="extra != ''">
					<xsl:call-template name="for.loop">
						<xsl:with-param name="i">
							<xsl:value-of select="string-length(name) + string-length(extra) + 3" />
						</xsl:with-param>
						<xsl:with-param name="count">
							<xsl:value-of select="25" />
						</xsl:with-param>
					</xsl:call-template>
				</xsl:when>
				<xsl:otherwise>
					<xsl:call-template name="for.loop">
						<xsl:with-param name="i">
							<xsl:value-of select="string-length(name)" />
						</xsl:with-param>
						<xsl:with-param name="count">
							<xsl:value-of select="25" />
						</xsl:with-param>
					</xsl:call-template>
				</xsl:otherwise>
			</xsl:choose>
			DV: <xsl:value-of select="dv" />
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="powers">
		<xsl:for-each select="powers/power">
			<xsl:sort select="name" />
			<br /><xsl:value-of select="name" />
				<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
				<xsl:if test="rating &gt; 0"> Wert: <xsl:value-of select="rating" /></xsl:if>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="critterpowers">
		<xsl:for-each select="critterpowers/critterpower">
			<xsl:sort select="name" />
			<br /><xsl:value-of select="name" />
				<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
				<xsl:if test="rating &gt; 0"> Wert: <xsl:value-of select="rating" /></xsl:if>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="complexforms">
		<xsl:for-each select="complexforms/complexform">
			<xsl:sort select="name" />
			<br /><xsl:value-of select="name" />
				<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
				<xsl:if test="rating &gt; 0"> Wert: <xsl:value-of select="rating" /></xsl:if>
				<xsl:if test="programoptions/programoption">
					(<xsl:for-each select="programoptions/programoption">
						<xsl:sort select="name" />
						<xsl:value-of select="name" />
						<xsl:if test="rating &gt; 0"><xsl:text> </xsl:text><xsl:value-of select="rating" /></xsl:if>
						<xsl:if test="position() != last()">, </xsl:if>
					</xsl:for-each>)
				</xsl:if> Ziel: <xsl:value-of select="target"/>,
      Dauer: <xsl:value-of select="duration"/>,
      Schwund: <xsl:value-of select="fv"/>
		</xsl:for-each>
	</xsl:template>

  <xsl:template name="aiprograms">
    <xsl:for-each select="aiprograms/aiprogram">
      <xsl:sort select="name"/>
      <br/>
      <xsl:value-of select="name"/>
      <xsl:if test="extra != ''">
        (<xsl:value-of select="extra"/>)
      </xsl:if>
      <xsl:if test="requiresprogram != ''">
        Benötigt: <xsl:value-of select="requiresprogram"/>
      </xsl:if>
      <xsl:if test="programoptions/programoption">
        (<xsl:for-each
                  select="programoptions/programoption">
          <xsl:sort select="name"/>
          <xsl:value-of select="name"/>
          <xsl:if test="rating &gt; 0">
            <xsl:text> </xsl:text>
            <xsl:value-of select="rating"
                        />
          </xsl:if>
          <xsl:if test="position() != last()">, </xsl:if>
        </xsl:for-each>)
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
	
	<xsl:template name="lifestyle">
		<xsl:for-each select="lifestyles/lifestyle">
			<xsl:sort select="name" />
			<br /><xsl:value-of select="name" />
				<xsl:if test="lifestylename != ''"> ("<xsl:value-of select="lifestylename" />")</xsl:if>
				&#160;<xsl:value-of select="months" /> Monate
				<xsl:if test="comforts != ''">
					<br />&#160;&#160;&#160;Komfort:&#160;&#160;&#160;&#160;&#160; <xsl:value-of select="comforts" />
					<br />&#160;&#160;&#160;Unterhaltung: <xsl:value-of select="entertainment" />
					<br />&#160;&#160;&#160;Grundversorgung:&#160;&#160; <xsl:value-of select="necessities" />
					<br />&#160;&#160;&#160;Wohngegend:&#160; <xsl:value-of select="neighborhood" />
					<br />&#160;&#160;&#160;Sicherheit:&#160;&#160;&#160;&#160;&#160; <xsl:value-of select="security" />
					<xsl:if test="qualities/quality">
						<br />&#160;&#160;&#160;Gaben/Handicaps: &#160;&#160;&#160;
						<xsl:for-each select="qualities/quality">
							<xsl:value-of select="." />
							<xsl:if test="position() != last()"><br />&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</xsl:if>
						</xsl:for-each>
					</xsl:if>
				</xsl:if>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="cyberware">
		<xsl:for-each select="cyberwares/cyberware">
			<xsl:sort select="name" />
			<br /><xsl:value-of select="name" />
				<xsl:if test="rating != 0"> Stufe <xsl:value-of select="rating" /></xsl:if>
				<xsl:if test="location != ''"> (<xsl:value-of select="location" />)</xsl:if>
				<xsl:if test="children/cyberware">
					<xsl:for-each select="children/cyberware">
						<br />&#160;&#160;&#160;+<xsl:value-of select="name" />
						<xsl:if test="rating != 0"> Rating <xsl:value-of select="rating" /></xsl:if>
					</xsl:for-each>
				</xsl:if>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="gearplugin">
		<xsl:param name="gear" />
		<xsl:for-each select="children/gear">
			<xsl:sort select="name" />
							<xsl:value-of select="name" />
							<xsl:if test="rating != 0"><xsl:text> </xsl:text><xsl:value-of select="rating" /></xsl:if>
							<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
							<xsl:if test="children/gear">
								[<xsl:call-template name="gearplugin">
									<xsl:with-param name="gear" select="." />
								</xsl:call-template>]
							</xsl:if>
							<xsl:if test="position() != last()">; </xsl:if>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="gear">
		<xsl:for-each select="gears/gear[iscommlink != 'True']">
			<xsl:sort select="name" />
			<br /><xsl:value-of select="name" />
				<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
				<xsl:if test="rating != 0"> Stufe <xsl:value-of select="rating" /></xsl:if>
				<xsl:if test="qty &gt; 1"> x<xsl:value-of select="qty" /></xsl:if>
				<xsl:if test="children/gear">
					<xsl:for-each select="children/gear">
						<br />&#160;&#160;&#160;+<xsl:value-of select="name" />
						<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
						<xsl:if test="rating != 0"> Stufe <xsl:value-of select="rating" /></xsl:if>
						<xsl:if test="children/gear">
							[<xsl:call-template name="gearplugin">
								<xsl:with-param name="gear" select="." />
							</xsl:call-template>]
						</xsl:if>
					</xsl:for-each>
				</xsl:if>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="commlinks">
		<xsl:for-each select="gears/gear[iscommlink = 'True']">
			<xsl:sort select="name" />
			<br /><xsl:value-of select="name" /> (<xsl:value-of select="response" />, <xsl:value-of select="system" />, <xsl:value-of select="firewall" />, <xsl:value-of select="signal" />)
				<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
				<xsl:if test="rating != 0"> Stufe <xsl:value-of select="rating" /></xsl:if>
				<xsl:if test="qty &gt; 1"> x<xsl:value-of select="qty" /></xsl:if>
				<xsl:if test="children/gear">
					<xsl:for-each select="children/gear">
						<br />&#160;&#160;&#160;+<xsl:value-of select="name" />
						<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
						<xsl:if test="rating != 0"> Stufe <xsl:value-of select="rating" /></xsl:if>
						<xsl:if test="children/gear">
							[<xsl:for-each select="children/gear">
								<xsl:sort select="name" />
								<xsl:value-of select="name" />
								<xsl:if test="rating != 0"><xsl:text> </xsl:text><xsl:value-of select="rating" /></xsl:if>
								<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
								<xsl:if test="position() != last()">, </xsl:if>
							</xsl:for-each>]
						</xsl:if>
					</xsl:for-each>
				</xsl:if>
				<xsl:if test="gears/gear[isprogram = 'True']">
					<xsl:for-each select="gears/gear[isprogram = 'True']">
						<xsl:sort select="name" />
						<br />&#160;&#160;&#160;+<xsl:value-of select="name" />
						<xsl:if test="rating &gt; 0"><xsl:text> </xsl:text><xsl:value-of select="rating" /></xsl:if>
						<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
						<xsl:if test="children/gear">
							[<xsl:for-each select="children/gear">
								<xsl:sort select="name" />
								<xsl:value-of select="name" />
								<xsl:if test="rating != 0"><xsl:text> </xsl:text><xsl:value-of select="rating" /></xsl:if>
								<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
								<xsl:if test="position() != last()">, </xsl:if>
							</xsl:for-each>]
						</xsl:if>
					</xsl:for-each>
				</xsl:if>
		</xsl:for-each>
		<xsl:for-each select="armors/armor/gears/gear[iscommlink = 'True']">
			<xsl:sort select="name" />
			<br /><xsl:value-of select="name" /> (<xsl:value-of select="response" />, <xsl:value-of select="system" />, <xsl:value-of select="firewall" />, <xsl:value-of select="signal" />)
				<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
				<xsl:if test="rating != 0"> Rating <xsl:value-of select="rating" /></xsl:if>
				<xsl:if test="qty &gt; 1"> x<xsl:value-of select="qty" /></xsl:if>
				<xsl:if test="children/gear">
					<xsl:for-each select="children/gear">
						<br />&#160;&#160;&#160;+<xsl:value-of select="name" />
						<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
						<xsl:if test="rating != 0"> Rating <xsl:value-of select="rating" /></xsl:if>
						<xsl:if test="children/gear">
							[<xsl:for-each select="children/gear">
								<xsl:sort select="name" />
								<xsl:value-of select="name" />
								<xsl:if test="rating != 0"><xsl:text> </xsl:text><xsl:value-of select="rating" /></xsl:if>
								<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
								<xsl:if test="position() != last()">, </xsl:if>
							</xsl:for-each>]
						</xsl:if>
					</xsl:for-each>
				</xsl:if>
				<xsl:if test="gears/gear[isprogram = 'True']">
					<xsl:for-each select="gears/gear[isprogram = 'True']">
						<xsl:sort select="name" />
						<br />&#160;&#160;&#160;+<xsl:value-of select="name" />
						<xsl:if test="rating &gt; 0"><xsl:text> </xsl:text><xsl:value-of select="rating" /></xsl:if>
						<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
						<xsl:if test="children/gear">
							[<xsl:for-each select="children/gear">
								<xsl:sort select="name" />
								<xsl:value-of select="name" />
								<xsl:if test="rating != 0"><xsl:text> </xsl:text><xsl:value-of select="rating" /></xsl:if>
								<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
								<xsl:if test="position() != last()">, </xsl:if>
							</xsl:for-each>]
						</xsl:if>
					</xsl:for-each>
				</xsl:if>
		</xsl:for-each>
		<xsl:for-each select="cyberwares/cyberware/gears/gear[iscommlink = 'True']">
			<xsl:sort select="name" />
			<br /><xsl:value-of select="name" /> (<xsl:value-of select="response" />, <xsl:value-of select="system" />, <xsl:value-of select="firewall" />, <xsl:value-of select="signal" />)
				<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
				<xsl:if test="rating != 0"> Rating <xsl:value-of select="rating" /></xsl:if>
				<xsl:if test="qty &gt; 1"> x<xsl:value-of select="qty" /></xsl:if>
				<xsl:if test="children/gear">
					<xsl:for-each select="children/gear">
						<br />&#160;&#160;&#160;+<xsl:value-of select="name" />
						<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
						<xsl:if test="rating != 0"> Rating <xsl:value-of select="rating" /></xsl:if>
						<xsl:if test="children/gear">
							[<xsl:for-each select="children/gear">
								<xsl:sort select="name" />
								<xsl:value-of select="name" />
								<xsl:if test="rating != 0"><xsl:text> </xsl:text><xsl:value-of select="rating" /></xsl:if>
								<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
								<xsl:if test="position() != last()">, </xsl:if>
							</xsl:for-each>]
						</xsl:if>
					</xsl:for-each>
				</xsl:if>
				<xsl:if test="gears/gear[isprogram = 'True']">
					<xsl:for-each select="gears/gear[isprogram = 'True']">
						<xsl:sort select="name" />
						<br />&#160;&#160;&#160;+<xsl:value-of select="name" />
						<xsl:if test="rating &gt; 0"><xsl:text> </xsl:text><xsl:value-of select="rating" /></xsl:if>
						<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
						<xsl:if test="children/gear">
							[<xsl:for-each select="children/gear">
								<xsl:sort select="name" />
								<xsl:value-of select="name" />
								<xsl:if test="rating != 0"><xsl:text> </xsl:text><xsl:value-of select="rating" /></xsl:if>
								<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
								<xsl:if test="position() != last()">, </xsl:if>
							</xsl:for-each>]
						</xsl:if>
					</xsl:for-each>
				</xsl:if>
		</xsl:for-each>
		<xsl:for-each select="cyberwares/cyberware/children/cyberware/gears/gear[iscommlink = 'True']">
			<xsl:sort select="name" />
			<br /><xsl:value-of select="name" /> (<xsl:value-of select="response" />, <xsl:value-of select="system" />, <xsl:value-of select="firewall" />, <xsl:value-of select="signal" />)
				<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
				<xsl:if test="rating != 0"> Rating <xsl:value-of select="rating" /></xsl:if>
				<xsl:if test="qty &gt; 1"> x<xsl:value-of select="qty" /></xsl:if>
				<xsl:if test="children/gear">
					<xsl:for-each select="children/gear">
						<br />&#160;&#160;&#160;+<xsl:value-of select="name" />
						<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
						<xsl:if test="rating != 0"> Rating <xsl:value-of select="rating" /></xsl:if>
						<xsl:if test="children/gear">
							[<xsl:for-each select="children/gear">
								<xsl:sort select="name" />
								<xsl:value-of select="name" />
								<xsl:if test="rating != 0"><xsl:text> </xsl:text><xsl:value-of select="rating" /></xsl:if>
								<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
								<xsl:if test="position() != last()">, </xsl:if>
							</xsl:for-each>]
						</xsl:if>
					</xsl:for-each>
				</xsl:if>
				<xsl:if test="gears/gear[isprogram = 'True']">
					<xsl:for-each select="gears/gear[isprogram = 'True']">
						<xsl:sort select="name" />
						<br />&#160;&#160;&#160;+<xsl:value-of select="name" />
						<xsl:if test="rating &gt; 0"><xsl:text> </xsl:text><xsl:value-of select="rating" /></xsl:if>
						<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
						<xsl:if test="children/gear">
							[<xsl:for-each select="children/gear">
								<xsl:sort select="name" />
								<xsl:value-of select="name" />
								<xsl:if test="rating != 0"><xsl:text> </xsl:text><xsl:value-of select="rating" /></xsl:if>
								<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
								<xsl:if test="position() != last()">, </xsl:if>
							</xsl:for-each>]
						</xsl:if>
					</xsl:for-each>
				</xsl:if>
		</xsl:for-each>
		<xsl:for-each select="weapons/weapon/accessories/accessory/gears/gear[iscommlink = 'True']">
			<xsl:sort select="name" />
			<br /><xsl:value-of select="name" /> (<xsl:value-of select="response" />, <xsl:value-of select="system" />, <xsl:value-of select="firewall" />, <xsl:value-of select="signal" />)
				<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
				<xsl:if test="rating != 0"> Rating <xsl:value-of select="rating" /></xsl:if>
				<xsl:if test="qty &gt; 1"> x<xsl:value-of select="qty" /></xsl:if>
				<xsl:if test="children/gear">
					<xsl:for-each select="children/gear">
						<br />&#160;&#160;&#160;+<xsl:value-of select="name" />
						<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
						<xsl:if test="rating != 0"> Rating <xsl:value-of select="rating" /></xsl:if>
						<xsl:if test="children/gear">
							[<xsl:for-each select="children/gear">
								<xsl:sort select="name" />
								<xsl:value-of select="name" />
								<xsl:if test="rating != 0"><xsl:text> </xsl:text><xsl:value-of select="rating" /></xsl:if>
								<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
								<xsl:if test="position() != last()">, </xsl:if>
							</xsl:for-each>]
						</xsl:if>
					</xsl:for-each>
				</xsl:if>
				<xsl:if test="gears/gear[isprogram = 'True']">
					<xsl:for-each select="gears/gear[isprogram = 'True']">
						<xsl:sort select="name" />
						<br />&#160;&#160;&#160;+<xsl:value-of select="name" />
						<xsl:if test="rating &gt; 0"><xsl:text> </xsl:text><xsl:value-of select="rating" /></xsl:if>
						<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
						<xsl:if test="children/gear">
							[<xsl:for-each select="children/gear">
								<xsl:sort select="name" />
								<xsl:value-of select="name" />
								<xsl:if test="rating != 0"><xsl:text> </xsl:text><xsl:value-of select="rating" /></xsl:if>
								<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
								<xsl:if test="position() != last()">, </xsl:if>
							</xsl:for-each>]
						</xsl:if>
					</xsl:for-each>
				</xsl:if>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="weapons">
		<xsl:for-each select="weapons/weapon">
			<xsl:sort select="name" />
			<br /><xsl:value-of select="name" />
			<xsl:if test="weaponname != ''">
				("<xsl:value-of select="weaponname" />")
			</xsl:if>
			<xsl:if test="accessories/accessory or mods/weaponmod">
				<xsl:for-each select="accessories/accessory">
					<xsl:sort select="name" />
					<br />&#160;&#160;&#160;+<xsl:value-of select="name" />
				</xsl:for-each>
				<xsl:for-each select="mods/weaponmod">
					<xsl:sort select="name" />
					<xsl:if test="rating > 0">
					Rating <xsl:value-of select="rating" />
					</xsl:if>
					<br />&#160;&#160;&#160;+<xsl:value-of select="name" />
				</xsl:for-each>
			</xsl:if>
			<br />&#160;&#160;&#160;Pool: <xsl:value-of select="dicepool" />&#160;&#160;&#160;Schaden: <xsl:value-of select="damage" />&#160;&#160;&#160;PB: <xsl:value-of select="ap" />&#160;&#160;&#160;RK: <xsl:value-of select="rc" />
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="armors">
		<xsl:for-each select="armors/armor">
			<xsl:sort select="name" />
			<br /><xsl:value-of select="name" />
			<xsl:if test="armorname != ''">
				("<xsl:value-of select="armorname" />")
			</xsl:if>
			<xsl:call-template name="for.loop">
				<xsl:with-param name="i">
					<xsl:value-of select="string-length(name)" />
				</xsl:with-param>
				<xsl:with-param name="count">
					<xsl:value-of select="25" />
				</xsl:with-param>
			</xsl:call-template>
			<xsl:value-of select="b" />/<xsl:value-of select="i" />
			<xsl:if test="armormods/armormod">
				<xsl:for-each select="armormods/armormod">
					<xsl:sort select="name" />
					<br />&#160;&#160;&#160;+<xsl:value-of select="name" />
					<xsl:if test="rating != 0"><xsl:text> </xsl:text><xsl:value-of select="rating" /></xsl:if>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="gears/gear">
				<xsl:for-each select="gears/gear">
					<xsl:sort select="name" />
					<br />&#160;&#160;&#160;+<xsl:value-of select="name" />
						<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
						<xsl:if test="rating != 0"> Stufe <xsl:value-of select="rating" /></xsl:if>
						<xsl:if test="qty &gt; 1"> x<xsl:value-of select="qty" /></xsl:if>
						<xsl:if test="children/gear">
							<xsl:for-each select="children/gear">
								<br />&#160;&#160;&#160;&#160;&#160;&#160;+<xsl:value-of select="name" />
								<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
								<xsl:if test="rating != 0"> Stufe <xsl:value-of select="rating" /></xsl:if>
								<xsl:if test="children/gear">
									[<xsl:for-each select="children/gear">
										<xsl:sort select="name" />
										<xsl:value-of select="name" />
										<xsl:if test="rating != 0"><xsl:text> </xsl:text><xsl:value-of select="rating" /></xsl:if>
										<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
										<xsl:if test="position() != last()">, </xsl:if>
									</xsl:for-each>]
								</xsl:if>
							</xsl:for-each>
						</xsl:if>
				</xsl:for-each>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="vehicles">
		<xsl:for-each select="vehicles/vehicle">
			<xsl:sort select="name" />
			<br /><xsl:value-of select="name" />
			<xsl:if test="vehiclename != ''">
				("<xsl:value-of select="vehiclename" />")
			</xsl:if>
			<xsl:if test="mods/mod">
				<xsl:for-each select="mods/mod">
					<xsl:sort select="name" />
					<br />&#160;&#160;&#160;+<xsl:value-of select="name" />
						<xsl:if test="rating != 0"> Stufe <xsl:value-of select="rating" /></xsl:if>
						<xsl:if test="cyberwares/cyberware">
							(<xsl:for-each select="cyberwares/cyberware">
								<xsl:sort select="name" />
								<br />&#160;&#160;&#160;&#160;&#160;&#160;+<xsl:value-of select="name" />
								<xsl:if test="rating != 0"> Stufe <xsl:value-of select="rating" /></xsl:if>
							</xsl:for-each>)
						</xsl:if>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="gears/gear">
				<xsl:for-each select="gears/gear[iscommlink != 'True']">
					<xsl:sort select="name" />
					<br />&#160;&#160;&#160;+<xsl:value-of select="name" />
						<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
						<xsl:if test="rating != 0"> Stufe <xsl:value-of select="rating" /></xsl:if>
						<xsl:if test="qty &gt; 1"> x<xsl:value-of select="qty" /></xsl:if>
						<xsl:if test="children/gear">
							<xsl:for-each select="children/gear">
								<br />&#160;&#160;&#160;&#160;&#160;&#160;+<xsl:value-of select="name" />
								<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
								<xsl:if test="rating != 0"> Stufe <xsl:value-of select="rating" /></xsl:if>
								<xsl:if test="children/gear">
									[<xsl:for-each select="children/gear">
										<xsl:sort select="name" />
										<xsl:value-of select="name" />
										<xsl:if test="rating != 0"><xsl:text> </xsl:text><xsl:value-of select="rating" /></xsl:if>
										<xsl:if test="extra != ''"> (<xsl:value-of select="extra" />)</xsl:if>
										<xsl:if test="position() != last()">, </xsl:if>
									</xsl:for-each>]
								</xsl:if>
							</xsl:for-each>
						</xsl:if>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="weapons/weapon">
				<xsl:for-each select="weapons/weapon">
					<xsl:sort select="name" />
					<br />&#160;&#160;&#160;+<xsl:value-of select="name" />
					<xsl:if test="weaponname != ''">
						("<xsl:value-of select="weaponname" />")
					</xsl:if>
					<xsl:if test="accessories/accessory or mods/weaponmod">
						<xsl:for-each select="accessories/accessory">
							<xsl:sort select="name" />
							<br />&#160;&#160;&#160;&#160;&#160;&#160;+<xsl:value-of select="name" />
						</xsl:for-each>
						<xsl:for-each select="mods/weaponmod">
							<xsl:sort select="name" />
							<br />&#160;&#160;&#160;&#160;&#160;&#160;+<xsl:value-of select="name" />
							<xsl:if test="rating > 0">
							Stufe <xsl:value-of select="rating" />
							</xsl:if>
						</xsl:for-each>
					</xsl:if>
					<br />&#160;&#160;&#160;&#160;&#160;&#160;Schade: <xsl:value-of select="damage" />&#160;&#160;&#160;PB: <xsl:value-of select="ap" />&#160;&#160;&#160;RK: <xsl:value-of select="rc" />
				</xsl:for-each>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="martialarts">
		<xsl:for-each select="martialarts/martialart">
			<xsl:sort select="name" />
			<br /><xsl:value-of select="name" />
			<xsl:for-each select="martialartadvantages/martialartadvantage">
				<xsl:sort select="." />
				<br />&#160;&#160;&#160;+<xsl:value-of select="." />
			</xsl:for-each>
		</xsl:for-each>
		<xsl:for-each select="martialartmaneuvers/martialartmaneuver">
			<xsl:sort select="name" />
			<br /><xsl:value-of select="name" />
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="karmaexpenses">
		<xsl:for-each select="expenses/expense[type = 'Karma']">
			<br /><xsl:value-of select="date" />
			<xsl:call-template name="for.loop">
				<xsl:with-param name="i">
					<xsl:value-of select="string-length(date)" />
				</xsl:with-param>
				<xsl:with-param name="count">
					<xsl:value-of select="25" />
				</xsl:with-param>
			</xsl:call-template>
			<xsl:value-of select="amount" />
			<xsl:call-template name="for.loop">
				<xsl:with-param name="i">
					<xsl:value-of select="string-length(amount)" />
				</xsl:with-param>
				<xsl:with-param name="count">
					<xsl:value-of select="12" />
				</xsl:with-param>
			</xsl:call-template>
			<xsl:value-of select="reason" />
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="nuyenexpenses">
		<xsl:for-each select="expenses/expense[type = 'Nuyen']">
			<br /><xsl:value-of select="date" />
			<xsl:call-template name="for.loop">
				<xsl:with-param name="i">
					<xsl:value-of select="string-length(date)" />
				</xsl:with-param>
				<xsl:with-param name="count">
					<xsl:value-of select="25" />
				</xsl:with-param>
			</xsl:call-template>
			<xsl:value-of select="amount" />
			<xsl:call-template name="for.loop">
				<xsl:with-param name="i">
					<xsl:value-of select="string-length(amount)" />
				</xsl:with-param>
				<xsl:with-param name="count">
					<xsl:value-of select="12" />
				</xsl:with-param>
			</xsl:call-template>
			<xsl:value-of select="reason" />
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="PreserveLineBreaks">
		<xsl:param name="text"/>
		<xsl:choose>
			<xsl:when test="contains($text,'&#xA;')">
				<xsl:value-of select="substring-before($text,'&#xA;')"/>
				<br/>
				<xsl:call-template name="PreserveLineBreaks">
					<xsl:with-param name="text">
						<xsl:value-of select="substring-after($text,'&#xA;')"/>
					</xsl:with-param>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$text"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
