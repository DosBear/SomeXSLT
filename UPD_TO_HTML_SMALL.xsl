<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	            doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	            encoding="utf-8"
	            indent="yes"
	            media-type="text/html"
	            method="html"
	            omit-xml-declaration="yes"
	            version="1.0"/>
	<xsl:template match="/">
	
	<html>
<head>
<title>Untitled Document</title>
</head>

<body>
    <style>
    @page {
      /*size: 210mm 297mm; */
    size:  297mm 210mm;
      /* Chrome sets own margins, we change these printer settings */
      margin: 10mm 10mm 10mm 10mm;
    }

        body {
	margin:0px;
	width:100%;
	height:100%;
	background:#FFF;
}

@media screen {
    body {
        padding: 30px;
    }
}

* {
	-moz-box-sizing:border-box;
	-webkit-box-sizing:border-box;
	box-sizing:border-box;
}

body,td,th {
	font-family: sans-serif;
	font-weight: normal;
	color:#000;
}
        
body .upd, .upd td, .upd th {
    font-size: 11px;
    vertical-align: top;
}

.bold {
	font-weight: bold;
}

a {
	color:#000;
    text-decoration: underline !important;
}
a img {
	border:none;
}

img.full_width {
	width:100%;
	height:auto;
}

h1,h2,h3 {
    font-weight: bold;
}

body,td,th {
	font-size:16px;
}
h1 {
	font-size:30px;
}
h2 {
	font-size:24px;
}
h3 {
	font-size:18px;
}

.gap {
	height:30px;
}

.nowrap {
	white-space:nowrap;
}

.clear {
	clear:both;
	height:0px;
	line-height:0px;
	font-size:0px;
}
.clearfix {
	overflow:hidden;
}

.vertical_centered_content {
	display: -webkit-flex;
	-webkit-align-items: center; 
	display: flex;
	align-items: center;
}
.vertical_centered_content > .inner {
	display:inline;
	width:100%;
}
.horizontal_centered_content {
	display: -webkit-flex;
	-webkit-justify-content: center;
	display: flex;
	justify-content: center;
	text-align:center;
}
.horizontal_centered_content > .inner {
	display:inline;
	width:100%;
}

@media screen {
    .doc.landscape {
        width: 1080px;
    }
    .doc.portrait {
        width: 720px;
    }
}
        
        .updorderlist, .updorderlist td {
            border: 1px solid #000;
            border-collapse: collapse;
        }
        
        .updskeleton, .updskeleton > tbody > tr > td {
            border: 1px solid #FFF;
        }
        
        table {
    border-collapse: collapse;
}

        
    </style>
    <div class="doc landscape upd">
        
<table class="updskeleton" width="100%" border="0" cellspacing="0" cellpadding="0">
  <tbody>
        <tr>
          <td width="110" style="padding: 5px">
                Универсальный передаточный документ

                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <td style="vertical-align: middle !important;">Статус:</td>
                            <td style="width: 50%; border: 1px solid #000; text-align: center !important; padding: 5px">2</td>
                        </tr>
                    </tbody>
                </table>
                
                1 — счет-фактура и передаточный документ (акт)

                2 — передаточный документ (акт)
            </td>
            <td style="border-left: 2px solid #000">
                <table width="100%" border="0" cellspacing="0" cellpadding="5">
                    <tbody>
                        <tr>
                            <td width="100">Счет-фактура №</td>
                            <td width="100" style="border-bottom: 1px solid #000; text-align: center !important">
								<xsl:value-of select="//*[local-name()='СвСчФакт']/@НомерСчФ"/>
                            </td>
                            <td width="20">от</td>
                            <td width="100" style="border-bottom: 1px solid #000; text-align: center !important">
									<xsl:value-of select="//*[local-name()='СвСчФакт']/@ДатаСчФ"/>
                            </td>
                            <td width="20">(1)</td>
                            <td rowspan="2" style="text-align: right !important; font-size: 9px">
                                -
                            </td>
                        </tr>
                        <tr>
                            <td>Исправление №</td>
                            <td style="border-bottom: 1px solid #000">-</td>
                            <td>от</td>
                            <td style="border-bottom: 1px solid #000">-</td>
                            <td>(1а)</td>
                        </tr>
                    </tbody>
                </table>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <td width="50%">
                                <table width="100%" border="0" cellspacing="0" cellpadding="5">
                                    <tbody>
                                        <tr>
                                            <td width="170"><b>Продавец:</b></td>
                                            <td style="border-bottom: 1px solid #000">
<xsl:value-of select="//*[local-name()='СвПрод']/ИдСв/СвЮЛУч/@НаимОрг"/>                                            
                                            </td>
                                            <td width="20">(2)</td>
                                        </tr>
                                        <tr>
                                            <td>Адрес:</td>
                                            <td style="border-bottom: 1px solid #000">
													<xsl:value-of select="//*[local-name()='СвПрод']/Адрес/АдрРФ/@Индекс"/>,   
													<xsl:call-template name="regionName"><xsl:with-param name="code" select="//*[local-name()='СвПрод']/Адрес/АдрРФ/@КодРегион" /></xsl:call-template>, 
													<xsl:value-of select="//*[local-name()='СвПрод']/Адрес/АдрРФ/@Город"/>,    
													<xsl:value-of select="//*[local-name()='СвПрод']/Адрес/АдрРФ/@Улица"/>,  
													<xsl:value-of select="//*[local-name()='СвПрод']/Адрес/АдрРФ/@Дом"/>,  
													<xsl:value-of select="//*[local-name()='СвПрод']/Адрес/АдрРФ/@Кварт"/>                         
                                            </td>
                                            <td>(2а)</td>
                                        </tr>
                                        <tr>
                                            <td>ИНН/КПП продавца:</td>
                                            <td style="border-bottom: 1px solid #000">
                                            <xsl:value-of select="//*[local-name()='СвПрод']/ИдСв/СвЮЛУч/@ИННЮЛ"/> / <xsl:value-of select="//*[local-name()='СвПрод']/ИдСв/СвЮЛУч/@КПП"/>
                                            </td>
                                            <td>(2б)</td>
                                        </tr>
                                        <tr>
                                            <td>Банковские реквизиты:</td>
                                            <td style="border-bottom: 1px solid #000">
Р/с <xsl:value-of select="//*[local-name()='СвПрод']/БанкРекв/@НомерСчета"/>, 
<xsl:value-of select="//*[local-name()='СвПрод']/БанкРекв/СвБанк/@НаимБанк"/>, 
БИК <xsl:value-of select="//*[local-name()='СвПрод']/БанкРекв/СвБанк/@БИК"/>
                                            </td>
                                            <td></td>
                                        </tr>
                                         <tr>
                                            <td>Контактные данные:</td>
                                            <td style="border-bottom: 1px solid #000">
Тел. <xsl:value-of select="//*[local-name()='СвПрод']/Контакт/@Тлф"/>
                                            </td>
                                            <td></td>
                                        </tr>
                                           <tr>
                                            <td>Грузополучатель и его адрес:</td>
                                            <td style="border-bottom: 1px solid #000">-</td>
                                            <td>(3)</td>
                                        </tr>
                                        <tr>
                                            <td>Грузополучатель и его адрес:</td>
                                            <td style="border-bottom: 1px solid #000">-</td>
                                            <td>(4)</td>
                                        </tr>
                                        <tr>
                                            <td>К платежно-расчетному документу №</td>
                                            <td style="border-bottom: 1px solid #000">-</td>
                                            <td>(5)</td>
                                        </tr>
                                        <tr>
                                            <td>Документ об отгрузке</td>
                                            <td style="border-bottom: 1px solid #000">
                                            <xsl:value-of select="//*[local-name()='ДокПодтвОтгр']/@НаимДокОтгр"/>,
                                            №<xsl:value-of select="//*[local-name()='ДокПодтвОтгр']/@НомДокОтгр"/>
											от <xsl:value-of select="//*[local-name()='ДокПодтвОтгр']/@ДатаДокОтгр"/>
                                            </td>
                                            <td>(5a)</td>
                                        </tr>
                                    </tbody>
                                </table>
                                
                            </td>
                            <td>
                                <table width="100%" border="0" cellspacing="0" cellpadding="5">
                                    <tbody>
                                        <tr>
                                            <td width="170"><b>Покупатель:</b></td>
                                            <td style="border-bottom: 1px solid #000">
												<xsl:value-of select="//*[local-name()='СвПокуп']/ИдСв/СвЮЛУч/@НаимОрг"/>                                    
                                            </td>
                                            <td width="20">(6)</td>
                                        </tr>
                                        <tr>
                                            <td>Адрес:</td>
                                            <td style="border-bottom: 1px solid #000">
												<xsl:value-of select="//*[local-name()='СвПокуп']/Адрес/АдрРФ/@Индекс"/>,   
													<xsl:call-template name="regionName"><xsl:with-param name="code" select="//*[local-name()='СвПокуп']/Адрес/АдрРФ/@КодРегион" /></xsl:call-template>, 
													<xsl:value-of select="//*[local-name()='СвПокуп']/Адрес/АдрРФ/@Город"/>,    
													<xsl:value-of select="//*[local-name()='СвПокуп']/Адрес/АдрРФ/@Улица"/>,  
													<xsl:value-of select="//*[local-name()='СвПокуп']/Адрес/АдрРФ/@Дом"/>,  
													<xsl:value-of select="//*[local-name()='СвПокуп']/Адрес/АдрРФ/@Кварт"/>                                                   
                                            </td>
                                            <td>(6а)</td>
                                        </tr>
                                        <tr>
                                            <td>ИНН/КПП покупателя:</td>
                                            <td style="border-bottom: 1px solid #000">
													<xsl:value-of select="//*[local-name()='СвПокуп']/ИдСв/СвЮЛУч/@ИННЮЛ"/> / <xsl:value-of select="//*[local-name()='СвПокуп']/ИдСв/СвЮЛУч/@КПП"/>
                                            </td>
                                            <td>(6б)</td>
                                        </tr>
                                        
                                                               <tr>
                                            <td>Банковские реквизиты:</td>
                                            <td style="border-bottom: 1px solid #000">
												Р/с <xsl:value-of select="//*[local-name()='СвПокуп']/БанкРекв/@НомерСчета"/>, 
												<xsl:value-of select="//*[local-name()='СвПокуп']/БанкРекв/СвБанк/@НаимБанк"/>, 
												БИК <xsl:value-of select="//*[local-name()='СвПокуп']/БанкРекв/СвБанк/@БИК"/>
                                            </td>
                                            <td></td>
                                        </tr>
                                        
                                        
                                        <tr>
                                            <td>Валюта: наименование, код</td>
                                            <td style="border-bottom: 1px solid #000">Российский рубль, 643</td>
                                            <td>(7)</td>
                                        </tr>
                                        <tr>
                                            <td>Идентификатор государственного контракта, договора (соглашения) (при наличии):</td>
                                            <td style="border-bottom: 1px solid #000"> </td>
                                            <td>(8)</td>
                                        </tr>
                                    </tbody>
                                </table>
                                
                            </td>
                        </tr>
                    </tbody>
                </table>

            </td>
        </tr>
    </tbody>
</table>
        
<table class="updorderlist" width="100%" border="0" cellspacing="0" cellpadding="5">
  <tbody>
    <tr style="font-size:9px">
      <td width="110" rowspan="2">Код товара / работ, услуг</td>
      <td width="30" rowspan="2" style="border-left:2px solid #000">№ п/п</td>
      <td rowspan="2">Наименование товара (описание выполненных работ, оказанных услуг), имущественного права</td>
      <td rowspan="2" width="40">Код вида това-
ра</td>
      <td colspan="2">Единица измерения</td>
      <td rowspan="2" width="70">Количест-
во (объём)</td>
      <td rowspan="2" width="70">Цена (тариф) за единицу измерения</td>
      <td rowspan="2" width="70">Стоимость товаров (работ, услуг), имущест-
венных прав без налога — всего</td>
      <td rowspan="2" width="50">В том числе сумма акциза</td>
      <td rowspan="2" width="50">Нало-
говая ставка</td>
      <td rowspan="2" width="70">Сумма налога, предъяв-
ляемая покупателю</td>
      <td rowspan="2" width="70">Стоимость товаров (работ, услуг), имущест-
венных прав с налогом — всего</td>
      <td colspan="2">Страна происхождения товара</td>
      <td rowspan="2" width="60" style="font-size:9px">Регистраци-
онный номер декларации на товары или регист-
рационный номер пар-
тии товара, подлежаще-
го просле-
живаемости</td>
    </tr>
    <tr>
      <td width="40">Код</td>
      <td width="30">Условно-
е обоз-
начение (нацио-
нальное)</td>
      <td width="30">Циф-
ровой код</td>
      <td width="30">Краткое наиме-
нование</td>
      </tr>
    <tr>
      <td style="border-right:2px solid #000; text-align: center; font-size: 9px">A</td>
      <td style="text-align: center; font-size: 9px">1</td>
      <td style="text-align: center; font-size: 9px">1а</td>
      <td style="text-align: center; font-size: 9px">1б</td>
      <td style="text-align: center; font-size: 9px">2</td>
      <td style="text-align: center; font-size: 9px">2а</td>
      <td style="text-align: center; font-size: 9px">3</td>
      <td style="text-align: center; font-size: 9px">4</td>
      <td style="text-align: center; font-size: 9px">5</td>
      <td style="text-align: center; font-size: 9px">6</td>
      <td style="text-align: center; font-size: 9px">7</td>
      <td style="text-align: center; font-size: 9px">8</td>
      <td style="text-align: center; font-size: 9px">9</td>
      <td style="text-align: center; font-size: 9px">10</td>
      <td style="text-align: center; font-size: 9px">10а</td>
      <td style="text-align: center; font-size: 9px">11</td>
    </tr>
    
      <xsl:for-each select="//*[local-name()='СведТов']">
				<tr>
				  <td style="border-right:2px solid #000">-</td>
				  <td><xsl:value-of select="@НомСтр"/></td>
				  <td><xsl:value-of select="@НаимТов"/></td>
				  <td> </td>
				  <td><xsl:value-of select="@ОКЕИ_Тов"/></td>
				  <td>-</td>
				  <td><xsl:value-of select="@КолТов"/></td>
				  <td><xsl:value-of select="@ЦенаТов"/></td>
				  <td><xsl:value-of select="@СтТовБезНДС"/></td>
				  <td><xsl:value-of select="./Акциз/БезАкциз"/></td>
				  				  <td><xsl:value-of select="@НалСт"/></td>
				  <td><xsl:value-of select="./СумНал/БезНДС"/></td>
				  <td><xsl:value-of select="@СтТовУчНал"/></td>
				  <td> </td>
				  <td> </td>
				  <td> </td>
				</tr>

       </xsl:for-each>

    
    <tr>
      <td style="border-right:2px solid #000"> </td>
      <td colspan="7">Всего к оплате (<xsl:value-of select="count(//*[local-name()='СведТов'])" />)</td>
      <td><xsl:value-of select="//*[local-name()='ВсегоОпл']/@СтТовБезНДСВсего"/></td>
      <td colspan="2" style="text-align: center !important">
		 x
      </td>
      <td><xsl:value-of select="//*[local-name()='ВсегоОпл']/СумНалВсего/БезНДС"/></td>
      <td><xsl:value-of select="//*[local-name()='ВсегоОпл']/@СтТовУчНалВсего"/></td>
      <td colspan="3"> </td>
      </tr>
  </tbody>
</table>
<table class="updskeleton" width="100%" border="0" cellspacing="0" cellpadding="0">
    <tbody>
        <tr>
            <td width="110" style="padding: 5px">
               
            </td>
            <td style="border-left: 2px solid #000; border-bottom: 2px solid #000; padding-bottom: 5px">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                        <tr>
                            <td width="49%">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tbody>
                                    <tr>
                                      <td width="170" style="padding: 5px">Руководитель организации или иное уполномоченное лицо</td>
                                      <td style="border-bottom: 1px solid #000; padding: 5px" width="100"> </td>
                                      <td width="10"> </td>
                                      <td style="vertical-align: bottom !important; border-bottom: 1px solid #000; padding: 5px">          
                                      <xsl:value-of select="//*[local-name()='Подписант']/ЮЛ/ФИО/@Фамилия"/><xsl:text>   </xsl:text>
                                      <xsl:value-of select="//*[local-name()='Подписант']/ЮЛ/ФИО/@Имя"/><xsl:text>   </xsl:text>
                                      <xsl:value-of select="//*[local-name()='Подписант']/ЮЛ/ФИО/@Отчество"/>
                                      </td>
                                    </tr>
                                    <tr>
                                      <td> </td>
                                      <td style="text-align: center; font-size:9px">(подпись)</td>
                                      <td> </td>
                                      <td style="text-align: center; font-size:9px">(ф.и.о.)</td>
                                    </tr>
                                  </tbody>
                                </table>
                            </td>
                            <td width="2%"> </td>
                            <td> 
                            </td>
                        </tr>
                    </tbody>
                </table>
  
            </td>
        </tr>
    </tbody>
</table>



        
    </div>
</body>
</html>

	</xsl:template>
	


<xsl:template name="regionName">
    <xsl:param name="code" />
	<xsl:choose>
		  <xsl:when test="$code = 1">Республика Адыгея (Адыгея)</xsl:when>
<xsl:when test="$code = 2">Республика Башкортостан</xsl:when>
<xsl:when test="$code = 3">Республика Бурятия</xsl:when>
<xsl:when test="$code = 4">Республика Алтай</xsl:when>
<xsl:when test="$code = 5">Республика Дагестан</xsl:when>
<xsl:when test="$code = 6">Республика Ингушетия</xsl:when>
<xsl:when test="$code = 7">Кабардино-Балкарская Республика</xsl:when>
<xsl:when test="$code = 8">Республика Калмыкия</xsl:when>
<xsl:when test="$code = 9">Карачаево-Черкесская Республика</xsl:when>
<xsl:when test="$code = 10">Республика Карелия</xsl:when>
<xsl:when test="$code = 11">Республика Коми</xsl:when>
<xsl:when test="$code = 12">Республика Марий Эл</xsl:when>
<xsl:when test="$code = 13">Республика Мордовия</xsl:when>
<xsl:when test="$code = 14">Республика Саха (Якутия)</xsl:when>
<xsl:when test="$code = 15">Республика Северная Осетия - Алания</xsl:when>
<xsl:when test="$code = 16">Республика Татарстан (Татарстан)</xsl:when>
<xsl:when test="$code = 17">Республика Тыва</xsl:when>
<xsl:when test="$code = 18">Удмуртская Республика</xsl:when>
<xsl:when test="$code = 19">Республика Хакасия</xsl:when>
<xsl:when test="$code = 20">Чеченская Республика</xsl:when>
<xsl:when test="$code = 21">Чувашская Республика - Чувашия</xsl:when>
<xsl:when test="$code = 22">Алтайский край</xsl:when>
<xsl:when test="$code = 23">Краснодарский край</xsl:when>
<xsl:when test="$code = 24">Красноярский край</xsl:when>
<xsl:when test="$code = 25">Приморский край</xsl:when>
<xsl:when test="$code = 26">Ставропольский край</xsl:when>
<xsl:when test="$code = 27">Хабаровский край</xsl:when>
<xsl:when test="$code = 28">Амурская область</xsl:when>
<xsl:when test="$code = 29">Архангельская область</xsl:when>
<xsl:when test="$code = 30">Астраханская область</xsl:when>
<xsl:when test="$code = 31">Белгородская область</xsl:when>
<xsl:when test="$code = 32">Брянская область</xsl:when>
<xsl:when test="$code = 33">Владимирская область</xsl:when>
<xsl:when test="$code = 34">Волгоградская область</xsl:when>
<xsl:when test="$code = 35">Вологодская область</xsl:when>
<xsl:when test="$code = 36">Воронежская область	</xsl:when>
<xsl:when test="$code = 37">Ивановская область	</xsl:when>
<xsl:when test="$code = 38">Иркутская область</xsl:when>
<xsl:when test="$code = 39">Калининградская область</xsl:when>
<xsl:when test="$code = 40">Калужская область</xsl:when>
<xsl:when test="$code = 41">Камчатский край</xsl:when>
<xsl:when test="$code = 42">Кемеровская область</xsl:when>
<xsl:when test="$code = 43">Кировская область</xsl:when>
<xsl:when test="$code = 44">Костромская область</xsl:when>
<xsl:when test="$code = 45">Курганская область</xsl:when>
<xsl:when test="$code = 46">Курская область</xsl:when>
<xsl:when test="$code = 47">Ленинградская область</xsl:when>
<xsl:when test="$code = 48">Липецкая область</xsl:when>
<xsl:when test="$code = 49">Магаданская область</xsl:when>
<xsl:when test="$code = 50">Московская область</xsl:when>
<xsl:when test="$code = 51">Мурманская область</xsl:when>
<xsl:when test="$code = 52">Нижегородская область</xsl:when>
<xsl:when test="$code = 53">Новгородская область</xsl:when>
<xsl:when test="$code = 54">Новосибирская область</xsl:when>
<xsl:when test="$code = 55">Омская область</xsl:when>
<xsl:when test="$code = 56">Оренбургская область</xsl:when>
<xsl:when test="$code = 57">Орловская область</xsl:when>
<xsl:when test="$code = 58">Пензенская область</xsl:when>
<xsl:when test="$code = 59">Пермский край</xsl:when>
<xsl:when test="$code = 60">Псковская область</xsl:when>
<xsl:when test="$code = 61">Ростовская область</xsl:when>
<xsl:when test="$code = 62">Рязанская область</xsl:when>
<xsl:when test="$code = 63">Самарская область</xsl:when>
<xsl:when test="$code = 64">Саратовская область</xsl:when>
<xsl:when test="$code = 65">Сахалинская область</xsl:when>
<xsl:when test="$code = 66">Свердловская область</xsl:when>
<xsl:when test="$code = 67">Смоленская область</xsl:when>
<xsl:when test="$code = 68">Тамбовская область</xsl:when>
<xsl:when test="$code = 69">Тверская область</xsl:when>
<xsl:when test="$code = 70">Томская область</xsl:when>
<xsl:when test="$code = 71">Тульская область</xsl:when>
<xsl:when test="$code = 72">Тюменская область</xsl:when>
<xsl:when test="$code = 73">Ульяновская область</xsl:when>
<xsl:when test="$code = 74">Челябинская область</xsl:when>
<xsl:when test="$code = 75">Забайкальский край</xsl:when>
<xsl:when test="$code = 76">Ярославская область</xsl:when>
<xsl:when test="$code = 77">г. Москва</xsl:when>
<xsl:when test="$code = 78">Санкт-Петербург</xsl:when>
<xsl:when test="$code = 79">Еврейская автономная область</xsl:when>
<xsl:when test="$code = 83">Ненецкий автономный округ</xsl:when>
<xsl:when test="$code = 86">Ханты-Мансийский автономный округ - Югра</xsl:when>
<xsl:when test="$code = 87">Чукотский автономный округ</xsl:when>
<xsl:when test="$code = 89">Ямало-Ненецкий автономный округ</xsl:when>
<xsl:when test="$code = 99">Иные территории, включая город и космодром Байконур</xsl:when>

		  <xsl:otherwise>-</xsl:otherwise>
		</xsl:choose>
  </xsl:template>
  
</xsl:stylesheet>