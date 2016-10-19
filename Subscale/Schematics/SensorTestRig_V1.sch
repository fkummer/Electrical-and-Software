<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.6.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="15" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="14" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="9" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="1" fill="9" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="57" name="tCAD" color="7" fill="1" visible="no" active="no"/>
<layer number="59" name="tCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="60" name="bCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="yes" active="yes"/>
<layer number="100" name="Muster" color="7" fill="1" visible="no" active="no"/>
<layer number="101" name="Patch_Top" color="12" fill="4" visible="yes" active="yes"/>
<layer number="102" name="Vscore" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="tMap" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="16" fill="1" visible="yes" active="yes"/>
<layer number="105" name="tPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="106" name="bPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="107" name="Crop" color="7" fill="1" visible="yes" active="yes"/>
<layer number="108" name="tplace-old" color="10" fill="1" visible="yes" active="yes"/>
<layer number="109" name="ref-old" color="11" fill="1" visible="yes" active="yes"/>
<layer number="110" name="fp0" color="7" fill="1" visible="yes" active="yes"/>
<layer number="111" name="LPC17xx" color="7" fill="1" visible="yes" active="yes"/>
<layer number="112" name="tSilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="113" name="IDFDebug" color="7" fill="1" visible="yes" active="yes"/>
<layer number="114" name="Badge_Outline" color="7" fill="1" visible="yes" active="yes"/>
<layer number="115" name="ReferenceISLANDS" color="7" fill="1" visible="yes" active="yes"/>
<layer number="116" name="Patch_BOT" color="9" fill="4" visible="yes" active="yes"/>
<layer number="118" name="Rect_Pads" color="7" fill="1" visible="yes" active="yes"/>
<layer number="121" name="_tsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="122" name="_bsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="123" name="tTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="124" name="bTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="126" name="_bNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="127" name="_tValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="128" name="_bValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="129" name="Mask" color="7" fill="1" visible="yes" active="yes"/>
<layer number="131" name="tAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="132" name="bAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="yes" active="yes"/>
<layer number="150" name="Notes" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="152" name="_bDocu" color="7" fill="1" visible="yes" active="yes"/>
<layer number="153" name="FabDoc1" color="7" fill="1" visible="yes" active="yes"/>
<layer number="154" name="FabDoc2" color="7" fill="1" visible="yes" active="yes"/>
<layer number="155" name="FabDoc3" color="7" fill="1" visible="yes" active="yes"/>
<layer number="199" name="Contour" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="2" fill="10" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="3" fill="10" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="4" fill="10" visible="yes" active="yes"/>
<layer number="204" name="204bmp" color="5" fill="10" visible="yes" active="yes"/>
<layer number="205" name="205bmp" color="6" fill="10" visible="yes" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="10" visible="yes" active="yes"/>
<layer number="207" name="207bmp" color="8" fill="10" visible="yes" active="yes"/>
<layer number="208" name="208bmp" color="9" fill="10" visible="yes" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="217" name="217bmp" color="18" fill="1" visible="no" active="no"/>
<layer number="218" name="218bmp" color="19" fill="1" visible="no" active="no"/>
<layer number="219" name="219bmp" color="20" fill="1" visible="no" active="no"/>
<layer number="220" name="220bmp" color="21" fill="1" visible="no" active="no"/>
<layer number="221" name="221bmp" color="22" fill="1" visible="no" active="no"/>
<layer number="222" name="222bmp" color="23" fill="1" visible="no" active="no"/>
<layer number="223" name="223bmp" color="24" fill="1" visible="no" active="no"/>
<layer number="224" name="224bmp" color="25" fill="1" visible="no" active="no"/>
<layer number="225" name="225bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="226" name="226bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="227" name="227bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="228" name="228bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="229" name="229bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="230" name="230bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="231" name="231bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="232" name="Eagle3D_PG2" color="7" fill="1" visible="no" active="no"/>
<layer number="233" name="Eagle3D_PG3" color="7" fill="1" visible="no" active="no"/>
<layer number="248" name="Housing" color="7" fill="1" visible="yes" active="yes"/>
<layer number="249" name="Edge" color="7" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
<layer number="254" name="cooling" color="7" fill="1" visible="yes" active="yes"/>
<layer number="255" name="routoute" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S" xrefpart="/%S.%C%R">
<libraries>
<library name="SparkFun-DigitalIC">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find all manner of digital ICs- microcontrollers, memory chips, logic chips, FPGAs, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="SO08">
<description>&lt;b&gt;Small Outline Package&lt;/b&gt; Fits JEDEC packages (narrow SOIC-8)</description>
<wire x1="-2.362" y1="-1.803" x2="2.362" y2="-1.803" width="0.1524" layer="51"/>
<wire x1="2.362" y1="-1.803" x2="2.362" y2="1.803" width="0.1524" layer="21"/>
<wire x1="2.362" y1="1.803" x2="-2.362" y2="1.803" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="1.803" x2="-2.362" y2="-1.803" width="0.1524" layer="21"/>
<circle x="-2.7559" y="-1.9431" radius="0.1436" width="0.2032" layer="21"/>
<smd name="1" x="-1.905" y="-2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="2" x="-0.635" y="-2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="3" x="0.635" y="-2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="4" x="1.905" y="-2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="5" x="1.905" y="2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="6" x="0.635" y="2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="7" x="-0.635" y="2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="8" x="-1.905" y="2.6162" dx="0.6096" dy="2.2098" layer="1"/>
<text x="-1.27" y="-0.635" size="0.4064" layer="27">&gt;VALUE</text>
<text x="-1.27" y="0" size="0.4064" layer="25">&gt;NAME</text>
<rectangle x1="-2.0828" y1="-2.8702" x2="-1.7272" y2="-1.8542" layer="51"/>
<rectangle x1="-0.8128" y1="-2.8702" x2="-0.4572" y2="-1.8542" layer="51"/>
<rectangle x1="0.4572" y1="-2.8702" x2="0.8128" y2="-1.8542" layer="51"/>
<rectangle x1="1.7272" y1="-2.8702" x2="2.0828" y2="-1.8542" layer="51"/>
<rectangle x1="-2.0828" y1="1.8542" x2="-1.7272" y2="2.8702" layer="51"/>
<rectangle x1="-0.8128" y1="1.8542" x2="-0.4572" y2="2.8702" layer="51"/>
<rectangle x1="0.4572" y1="1.8542" x2="0.8128" y2="2.8702" layer="51"/>
<rectangle x1="1.7272" y1="1.8542" x2="2.0828" y2="2.8702" layer="51"/>
</package>
<package name="SO08-EIAJ">
<description>Fits EIAJ packages (wide version of the SOIC-8).</description>
<wire x1="-2.362" y1="-2.565" x2="2.362" y2="-2.565" width="0.1524" layer="51"/>
<wire x1="2.362" y1="-2.565" x2="2.362" y2="2.5396" width="0.1524" layer="21"/>
<wire x1="2.362" y1="2.5396" x2="-2.362" y2="2.5396" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="2.5396" x2="-2.362" y2="-2.565" width="0.1524" layer="21"/>
<circle x="-2.628896875" y="-2.82701875" radius="0.1436" width="0.127" layer="21"/>
<smd name="1" x="-1.905" y="-3.3782" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="2" x="-0.635" y="-3.3782" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="3" x="0.635" y="-3.3782" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="4" x="1.905" y="-3.3782" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="5" x="1.905" y="3.3528" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="6" x="0.635" y="3.3528" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="7" x="-0.635" y="3.3528" dx="0.6096" dy="2.2098" layer="1"/>
<smd name="8" x="-1.905" y="3.3528" dx="0.6096" dy="2.2098" layer="1"/>
<text x="-1.27" y="-1.397" size="0.4064" layer="27">&gt;VALUE</text>
<text x="-1.27" y="-0.762" size="0.4064" layer="25">&gt;NAME</text>
<rectangle x1="-2.0828" y1="-3.6322" x2="-1.7272" y2="-2.6162" layer="51"/>
<rectangle x1="-0.8128" y1="-3.6322" x2="-0.4572" y2="-2.6162" layer="51"/>
<rectangle x1="0.4572" y1="-3.6322" x2="0.8128" y2="-2.6162" layer="51"/>
<rectangle x1="1.7272" y1="-3.6322" x2="2.0828" y2="-2.6162" layer="51"/>
<rectangle x1="-2.0828" y1="2.5908" x2="-1.7272" y2="3.6068" layer="51"/>
<rectangle x1="-0.8128" y1="2.5908" x2="-0.4572" y2="3.6068" layer="51"/>
<rectangle x1="0.4572" y1="2.5908" x2="0.8128" y2="3.6068" layer="51"/>
<rectangle x1="1.7272" y1="2.5908" x2="2.0828" y2="3.6068" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="EEPROM-I2C">
<wire x1="7.62" y1="-5.08" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="-7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="-7.62" y1="7.62" x2="7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="7.62" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<text x="-7.62" y="8.382" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VSS" x="-12.7" y="-2.54" length="middle" direction="pwr"/>
<pin name="WP" x="12.7" y="2.54" length="middle" rot="R180"/>
<pin name="VCC" x="12.7" y="5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="SCL" x="12.7" y="0" length="middle" rot="R180"/>
<pin name="SDA" x="12.7" y="-2.54" length="middle" rot="R180"/>
<pin name="A2" x="-12.7" y="0" length="middle"/>
<pin name="A0" x="-12.7" y="5.08" length="middle"/>
<pin name="A1" x="-12.7" y="2.54" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="EEPROM-I2C" prefix="U">
<description>I2C EEPROM chips, 24LC256 (and others)</description>
<gates>
<gate name="G$1" symbol="EEPROM-I2C" x="0" y="0"/>
</gates>
<devices>
<device name="SMD" package="SO08">
<connects>
<connect gate="G$1" pin="A0" pad="1"/>
<connect gate="G$1" pin="A1" pad="2"/>
<connect gate="G$1" pin="A2" pad="3"/>
<connect gate="G$1" pin="SCL" pad="6"/>
<connect gate="G$1" pin="SDA" pad="5"/>
<connect gate="G$1" pin="VCC" pad="8"/>
<connect gate="G$1" pin="VSS" pad="4"/>
<connect gate="G$1" pin="WP" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="EIAJ" package="SO08-EIAJ">
<connects>
<connect gate="G$1" pin="A0" pad="1"/>
<connect gate="G$1" pin="A1" pad="2"/>
<connect gate="G$1" pin="A2" pad="3"/>
<connect gate="G$1" pin="SCL" pad="6"/>
<connect gate="G$1" pin="SDA" pad="5"/>
<connect gate="G$1" pin="VCC" pad="8"/>
<connect gate="G$1" pin="VSS" pad="4"/>
<connect gate="G$1" pin="WP" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Boards">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find boards and modules: Arduino footprints, breadboards, non-RF modules, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="ARDUINO_R3">
<description>Arduino Uno Footprint R3</description>
<wire x1="0" y1="0" x2="0" y2="53.34" width="0.2032" layer="51"/>
<wire x1="0" y1="53.34" x2="64.516" y2="53.34" width="0.2032" layer="51"/>
<wire x1="64.516" y1="53.34" x2="66.04" y2="51.816" width="0.2032" layer="51"/>
<wire x1="66.04" y1="51.816" x2="66.04" y2="40.386" width="0.2032" layer="51"/>
<wire x1="66.04" y1="40.386" x2="68.58" y2="37.846" width="0.2032" layer="51"/>
<wire x1="68.58" y1="37.846" x2="68.58" y2="5.08" width="0.2032" layer="51"/>
<wire x1="68.58" y1="5.08" x2="66.04" y2="2.54" width="0.2032" layer="51"/>
<wire x1="66.04" y1="2.54" x2="66.04" y2="0" width="0.2032" layer="51"/>
<wire x1="66.04" y1="0" x2="0" y2="0" width="0.2032" layer="51"/>
<hole x="15.24" y="50.8" drill="3.175"/>
<hole x="66.04" y="35.56" drill="3.175"/>
<hole x="66.04" y="7.62" drill="3.175"/>
<hole x="13.97" y="2.54" drill="3.175"/>
<pad name="NC" x="27.94" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="IOREF" x="30.48" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="RESET@1" x="33.02" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="3.3V" x="35.56" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="5V" x="38.1" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="GND@1" x="40.64" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="GND@2" x="43.18" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="VIN" x="45.72" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="A0" x="50.8" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="A1" x="53.34" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="A2" x="55.88" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="A3" x="58.42" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="A4" x="60.96" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="A5" x="63.5" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="D0" x="63.5" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="D1" x="60.96" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="D2" x="58.42" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="D3" x="55.88" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="D4" x="53.34" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="D5" x="50.8" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="D6" x="48.26" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="D7" x="45.72" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="D8" x="41.656" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="D9" x="39.116" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="D10" x="36.576" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="D11" x="34.036" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="D12" x="31.496" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="D13" x="28.956" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="GND@3" x="26.416" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="AREF" x="23.876" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="SDA" x="21.336" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="SCL" x="18.796" y="50.8" drill="1.016" diameter="1.9304"/>
<wire x1="-6.35" y1="43.815" x2="9.525" y2="43.815" width="0.2032" layer="51"/>
<wire x1="9.525" y1="43.815" x2="9.525" y2="32.385" width="0.2032" layer="51"/>
<wire x1="9.525" y1="32.385" x2="-6.35" y2="32.385" width="0.2032" layer="51"/>
<wire x1="-6.35" y1="32.385" x2="-6.35" y2="43.815" width="0.2032" layer="51"/>
<wire x1="-1.905" y1="3.175" x2="-1.905" y2="12.065" width="0.2032" layer="51"/>
<wire x1="-1.905" y1="12.065" x2="11.43" y2="12.065" width="0.2032" layer="51"/>
<wire x1="11.43" y1="12.065" x2="11.43" y2="3.175" width="0.2032" layer="51"/>
<wire x1="11.43" y1="3.175" x2="-1.905" y2="3.175" width="0.2032" layer="51"/>
<pad name="MISO" x="63.64000625" y="30.4299875" drill="1.016" diameter="1.9304"/>
<pad name="VCC" x="66.18000625" y="30.4299875" drill="1.016" diameter="1.9304"/>
<pad name="SCK" x="63.64000625" y="27.8899875" drill="1.016" diameter="1.9304"/>
<pad name="MOSI" x="66.18000625" y="27.8899875" drill="1.016" diameter="1.9304"/>
<pad name="RESET@2" x="63.64000625" y="25.3499875" drill="1.016" diameter="1.9304"/>
<pad name="GND@4" x="66.18000625" y="25.3499875" drill="1.016" diameter="1.9304"/>
<text x="18.796" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">SCL</text>
<text x="21.336" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">SDA</text>
<text x="23.876" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">AREF</text>
<text x="26.416" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">GND</text>
<text x="28.956" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D13</text>
<text x="31.496" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D12</text>
<text x="34.036" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D11</text>
<text x="36.576" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D10</text>
<text x="39.116" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D9</text>
<text x="41.656" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D8</text>
<text x="45.72" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D7</text>
<text x="48.26" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D6</text>
<text x="50.8" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D5</text>
<text x="53.34" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D4</text>
<text x="55.88" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D3</text>
<text x="58.42" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D2</text>
<text x="63.5" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D0/RXI</text>
<text x="60.96" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D1/TXO</text>
<text x="33.02" y="3.81" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-left">!RESET!</text>
<text x="35.56" y="3.81" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-left">3.3V</text>
<text x="38.1" y="3.81" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-left">5V</text>
<text x="40.64" y="3.81" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-left">GND</text>
<text x="43.18" y="3.81" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-left">GND</text>
<text x="45.72" y="3.81" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-left">VIN</text>
<text x="50.8" y="3.81" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-left">A0</text>
<text x="53.34" y="3.81" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-left">A1</text>
<text x="55.88" y="3.81" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-left">A2</text>
<text x="58.42" y="3.81" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-left">A3</text>
<text x="60.96" y="3.81" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-left">A4</text>
<text x="63.5" y="3.81" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-left">A5</text>
<text x="30.48" y="3.81" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-left">IOREF</text>
<text x="62.23" y="30.48" size="0.8128" layer="51" font="vector" ratio="15" align="center-right">MISO</text>
<text x="62.23" y="27.94" size="0.8128" layer="51" font="vector" ratio="15" align="center-right">SCK</text>
<text x="62.23" y="25.4" size="0.8128" layer="51" font="vector" ratio="15" align="center-right">RST</text>
<text x="67.31" y="25.4" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="top-center">GND</text>
<text x="67.31" y="27.94" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="top-center">MOSI</text>
<text x="67.31" y="30.48" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="top-center">5V</text>
</package>
<package name="ARDUINO_R3_NO_HOLES">
<wire x1="0" y1="0" x2="0" y2="53.34" width="0.2032" layer="51"/>
<wire x1="0" y1="53.34" x2="64.516" y2="53.34" width="0.2032" layer="51"/>
<wire x1="64.516" y1="53.34" x2="66.04" y2="51.816" width="0.2032" layer="51"/>
<wire x1="66.04" y1="51.816" x2="66.04" y2="40.386" width="0.2032" layer="51"/>
<wire x1="66.04" y1="40.386" x2="68.58" y2="37.846" width="0.2032" layer="51"/>
<wire x1="68.58" y1="37.846" x2="68.58" y2="5.08" width="0.2032" layer="51"/>
<wire x1="68.58" y1="5.08" x2="66.04" y2="2.54" width="0.2032" layer="51"/>
<wire x1="66.04" y1="2.54" x2="66.04" y2="0" width="0.2032" layer="51"/>
<wire x1="66.04" y1="0" x2="0" y2="0" width="0.2032" layer="51"/>
<pad name="NC" x="27.94" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="IOREF" x="30.48" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="RESET@1" x="33.02" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="3.3V" x="35.56" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="5V" x="38.1" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="GND@1" x="40.64" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="GND@2" x="43.18" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="VIN" x="45.72" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="A0" x="50.8" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="A1" x="53.34" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="A2" x="55.88" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="A3" x="58.42" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="A4" x="60.96" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="A5" x="63.5" y="2.54" drill="1.016" diameter="1.9304"/>
<pad name="D0" x="63.5" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="D1" x="60.96" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="D2" x="58.42" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="D3" x="55.88" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="D4" x="53.34" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="D5" x="50.8" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="D6" x="48.26" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="D7" x="45.72" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="D8" x="41.656" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="D9" x="39.116" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="D10" x="36.576" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="D11" x="34.036" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="D12" x="31.496" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="D13" x="28.956" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="GND@3" x="26.416" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="AREF" x="23.876" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="SDA" x="21.336" y="50.8" drill="1.016" diameter="1.9304"/>
<pad name="SCL" x="18.796" y="50.8" drill="1.016" diameter="1.9304"/>
<wire x1="-6.35" y1="43.815" x2="9.525" y2="43.815" width="0.2032" layer="51"/>
<wire x1="9.525" y1="43.815" x2="9.525" y2="32.385" width="0.2032" layer="51"/>
<wire x1="9.525" y1="32.385" x2="-6.35" y2="32.385" width="0.2032" layer="51"/>
<wire x1="-6.35" y1="32.385" x2="-6.35" y2="43.815" width="0.2032" layer="51"/>
<wire x1="-1.905" y1="3.175" x2="-1.905" y2="12.065" width="0.2032" layer="51"/>
<wire x1="-1.905" y1="12.065" x2="11.43" y2="12.065" width="0.2032" layer="51"/>
<wire x1="11.43" y1="12.065" x2="11.43" y2="3.175" width="0.2032" layer="51"/>
<wire x1="11.43" y1="3.175" x2="-1.905" y2="3.175" width="0.2032" layer="51"/>
<pad name="MISO" x="63.64000625" y="30.4299875" drill="1.016" diameter="1.9304"/>
<pad name="VCC" x="66.18000625" y="30.4299875" drill="1.016" diameter="1.9304"/>
<pad name="SCK" x="63.64000625" y="27.8899875" drill="1.016" diameter="1.9304"/>
<pad name="MOSI" x="66.18000625" y="27.8899875" drill="1.016" diameter="1.9304"/>
<pad name="RESET@2" x="63.64000625" y="25.3499875" drill="1.016" diameter="1.9304"/>
<pad name="GND@4" x="66.18000625" y="25.3499875" drill="1.016" diameter="1.9304"/>
<text x="18.796" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">SCL</text>
<text x="21.336" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">SDA</text>
<text x="23.876" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">AREF</text>
<text x="26.416" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">GND</text>
<text x="28.956" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D13</text>
<text x="31.496" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D12</text>
<text x="34.036" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D11</text>
<text x="36.576" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D10</text>
<text x="39.116" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D9</text>
<text x="41.656" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D8</text>
<text x="45.72" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D7</text>
<text x="48.26" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D6</text>
<text x="50.8" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D5</text>
<text x="53.34" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D4</text>
<text x="55.88" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D3</text>
<text x="58.42" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D2</text>
<text x="63.5" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D0/RXI</text>
<text x="60.96" y="49.53" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-right">D1/TXO</text>
<text x="33.02" y="3.81" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-left">!RESET!</text>
<text x="35.56" y="3.81" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-left">3.3V</text>
<text x="38.1" y="3.81" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-left">5V</text>
<text x="40.64" y="3.81" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-left">GND</text>
<text x="43.18" y="3.81" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-left">GND</text>
<text x="45.72" y="3.81" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-left">VIN</text>
<text x="50.8" y="3.81" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-left">A0</text>
<text x="53.34" y="3.81" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-left">A1</text>
<text x="55.88" y="3.81" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-left">A2</text>
<text x="58.42" y="3.81" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-left">A3</text>
<text x="60.96" y="3.81" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-left">A4</text>
<text x="63.5" y="3.81" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-left">A5</text>
<text x="30.48" y="3.81" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="center-left">IOREF</text>
<text x="62.23" y="30.48" size="0.8128" layer="51" font="vector" ratio="15" align="center-right">MISO</text>
<text x="62.23" y="27.94" size="0.8128" layer="51" font="vector" ratio="15" align="center-right">SCK</text>
<text x="62.23" y="25.4" size="0.8128" layer="51" font="vector" ratio="15" align="center-right">RST</text>
<text x="67.31" y="25.4" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="top-center">GND</text>
<text x="67.31" y="27.94" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="top-center">MOSI</text>
<text x="67.31" y="30.48" size="0.8128" layer="51" font="vector" ratio="15" rot="R90" align="top-center">5V</text>
<circle x="13.97" y="2.54" radius="1.02390625" width="0.127" layer="51"/>
<circle x="66.04" y="7.62" radius="1.02390625" width="0.127" layer="51"/>
<circle x="66.04" y="35.56" radius="1.02390625" width="0.127" layer="51"/>
<circle x="15.24" y="50.8" radius="1.02390625" width="0.127" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="ARDUINO_R3">
<wire x1="-10.16" y1="-35.56" x2="-10.16" y2="25.4" width="0.254" layer="94"/>
<wire x1="-10.16" y1="25.4" x2="10.16" y2="25.4" width="0.254" layer="94"/>
<wire x1="10.16" y1="25.4" x2="10.16" y2="-35.56" width="0.254" layer="94"/>
<wire x1="10.16" y1="-35.56" x2="-10.16" y2="-35.56" width="0.254" layer="94"/>
<text x="-9.652" y="26.162" size="1.778" layer="95">&gt;Name</text>
<text x="-10.16" y="-35.814" size="1.778" layer="96" align="top-left">&gt;Value</text>
<pin name="D0" x="12.7" y="22.86" visible="pin" length="short" rot="R180"/>
<pin name="D1" x="12.7" y="20.32" visible="pin" length="short" rot="R180"/>
<pin name="D2" x="12.7" y="17.78" visible="pin" length="short" rot="R180"/>
<pin name="*D3" x="12.7" y="15.24" visible="pin" length="short" rot="R180"/>
<pin name="D4" x="12.7" y="12.7" visible="pin" length="short" rot="R180"/>
<pin name="*D5" x="12.7" y="10.16" visible="pin" length="short" rot="R180"/>
<pin name="*D6" x="12.7" y="7.62" visible="pin" length="short" rot="R180"/>
<pin name="D7" x="12.7" y="5.08" visible="pin" length="short" rot="R180"/>
<pin name="D8" x="12.7" y="2.54" visible="pin" length="short" rot="R180"/>
<pin name="*D9" x="12.7" y="0" visible="pin" length="short" rot="R180"/>
<pin name="*D10" x="12.7" y="-2.54" visible="pin" length="short" rot="R180"/>
<pin name="*D11" x="12.7" y="-5.08" visible="pin" length="short" rot="R180"/>
<pin name="D12" x="12.7" y="-7.62" visible="pin" length="short" rot="R180"/>
<pin name="D13" x="12.7" y="-10.16" visible="pin" length="short" rot="R180"/>
<pin name="A0" x="-12.7" y="22.86" visible="pin" length="short"/>
<pin name="A1" x="-12.7" y="20.32" visible="pin" length="short"/>
<pin name="A2" x="-12.7" y="17.78" visible="pin" length="short"/>
<pin name="A3" x="-12.7" y="15.24" visible="pin" length="short"/>
<pin name="A4" x="-12.7" y="12.7" visible="pin" length="short"/>
<pin name="A5" x="-12.7" y="10.16" visible="pin" length="short"/>
<pin name="VIN" x="-12.7" y="0" visible="pin" length="short"/>
<pin name="!RESET!@1" x="-12.7" y="2.54" visible="pin" length="short"/>
<pin name="5V" x="-12.7" y="-2.54" visible="pin" length="short"/>
<pin name="AREF" x="-12.7" y="-7.62" visible="pin" length="short"/>
<pin name="GND@2" x="-12.7" y="-10.16" visible="pin" length="short"/>
<pin name="GND@1" x="-12.7" y="-12.7" visible="pin" length="short"/>
<pin name="GND@0" x="-12.7" y="-15.24" visible="pin" length="short"/>
<pin name="3.3V" x="-12.7" y="-5.08" visible="pin" length="short"/>
<pin name="IOREF" x="-12.7" y="5.08" visible="pin" length="short"/>
<pin name="SDA" x="12.7" y="-12.7" visible="pin" length="short" rot="R180"/>
<pin name="SCL" x="12.7" y="-15.24" visible="pin" length="short" rot="R180"/>
<pin name="VCC" x="12.7" y="-20.32" visible="pin" length="short" rot="R180"/>
<pin name="MISO" x="12.7" y="-22.86" visible="pin" length="short" rot="R180"/>
<pin name="MOSI" x="12.7" y="-25.4" visible="pin" length="short" rot="R180"/>
<pin name="SCK" x="12.7" y="-27.94" visible="pin" length="short" rot="R180"/>
<pin name="!RESET!@2" x="12.7" y="-30.48" visible="pin" length="short" rot="R180"/>
<pin name="GND" x="12.7" y="-33.02" visible="pin" length="short" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ARDUINO_R3" prefix="J">
<description>&lt;h3&gt;Arduino R3 Footprint (w/ SPI header)&lt;/h3&gt;</description>
<gates>
<gate name="G$1" symbol="ARDUINO_R3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ARDUINO_R3">
<connects>
<connect gate="G$1" pin="!RESET!@1" pad="RESET@1"/>
<connect gate="G$1" pin="!RESET!@2" pad="RESET@2"/>
<connect gate="G$1" pin="*D10" pad="D10"/>
<connect gate="G$1" pin="*D11" pad="D11"/>
<connect gate="G$1" pin="*D3" pad="D3"/>
<connect gate="G$1" pin="*D5" pad="D5"/>
<connect gate="G$1" pin="*D6" pad="D6"/>
<connect gate="G$1" pin="*D9" pad="D9"/>
<connect gate="G$1" pin="3.3V" pad="3.3V"/>
<connect gate="G$1" pin="5V" pad="5V"/>
<connect gate="G$1" pin="A0" pad="A0"/>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="AREF" pad="AREF"/>
<connect gate="G$1" pin="D0" pad="D0"/>
<connect gate="G$1" pin="D1" pad="D1"/>
<connect gate="G$1" pin="D12" pad="D12"/>
<connect gate="G$1" pin="D13" pad="D13"/>
<connect gate="G$1" pin="D2" pad="D2"/>
<connect gate="G$1" pin="D4" pad="D4"/>
<connect gate="G$1" pin="D7" pad="D7"/>
<connect gate="G$1" pin="D8" pad="D8"/>
<connect gate="G$1" pin="GND" pad="GND@1"/>
<connect gate="G$1" pin="GND@0" pad="GND@2"/>
<connect gate="G$1" pin="GND@1" pad="GND@3"/>
<connect gate="G$1" pin="GND@2" pad="GND@4"/>
<connect gate="G$1" pin="IOREF" pad="IOREF"/>
<connect gate="G$1" pin="MISO" pad="MISO"/>
<connect gate="G$1" pin="MOSI" pad="MOSI"/>
<connect gate="G$1" pin="SCK" pad="SCK"/>
<connect gate="G$1" pin="SCL" pad="SCL"/>
<connect gate="G$1" pin="SDA" pad="SDA"/>
<connect gate="G$1" pin="VCC" pad="VCC"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="NO_HOLES" package="ARDUINO_R3_NO_HOLES">
<connects>
<connect gate="G$1" pin="!RESET!@1" pad="RESET@1"/>
<connect gate="G$1" pin="!RESET!@2" pad="RESET@2"/>
<connect gate="G$1" pin="*D10" pad="D10"/>
<connect gate="G$1" pin="*D11" pad="D11"/>
<connect gate="G$1" pin="*D3" pad="D3"/>
<connect gate="G$1" pin="*D5" pad="D5"/>
<connect gate="G$1" pin="*D6" pad="D6"/>
<connect gate="G$1" pin="*D9" pad="D9"/>
<connect gate="G$1" pin="3.3V" pad="3.3V"/>
<connect gate="G$1" pin="5V" pad="5V"/>
<connect gate="G$1" pin="A0" pad="A0"/>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="AREF" pad="AREF"/>
<connect gate="G$1" pin="D0" pad="D0"/>
<connect gate="G$1" pin="D1" pad="D1"/>
<connect gate="G$1" pin="D12" pad="D12"/>
<connect gate="G$1" pin="D13" pad="D13"/>
<connect gate="G$1" pin="D2" pad="D2"/>
<connect gate="G$1" pin="D4" pad="D4"/>
<connect gate="G$1" pin="D7" pad="D7"/>
<connect gate="G$1" pin="D8" pad="D8"/>
<connect gate="G$1" pin="GND" pad="GND@1"/>
<connect gate="G$1" pin="GND@0" pad="GND@2"/>
<connect gate="G$1" pin="GND@1" pad="GND@3"/>
<connect gate="G$1" pin="GND@2" pad="GND@4"/>
<connect gate="G$1" pin="IOREF" pad="IOREF"/>
<connect gate="G$1" pin="MISO" pad="MISO"/>
<connect gate="G$1" pin="MOSI" pad="MOSI"/>
<connect gate="G$1" pin="SCK" pad="SCK"/>
<connect gate="G$1" pin="SCL" pad="SCL"/>
<connect gate="G$1" pin="SDA" pad="SDA"/>
<connect gate="G$1" pin="VCC" pad="VCC"/>
<connect gate="G$1" pin="VIN" pad="VIN"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Aesthetics">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find non-functional items- supply symbols, logos, notations, frame blocks, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
</packages>
<symbols>
<symbol name="VCC">
<wire x1="0.762" y1="1.27" x2="0" y2="2.54" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="-0.762" y2="1.27" width="0.254" layer="94"/>
<text x="-1.016" y="3.556" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VCC" x="0" y="0" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="DGND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VCC" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="DGND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Resistors">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find resistors, capacitors, inductors, test points, jumper pads, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="1206">
<wire x1="-2.4003" y1="1.1049" x2="2.4003" y2="1.1049" width="0.0508" layer="39"/>
<wire x1="2.4003" y1="-1.1049" x2="-2.4003" y2="-1.1049" width="0.0508" layer="39"/>
<wire x1="-2.4003" y1="-1.1049" x2="-2.4003" y2="1.1049" width="0.0508" layer="39"/>
<wire x1="2.4003" y1="1.1049" x2="2.4003" y2="-1.1049" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.27" y="1.143" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.397" y="-1.524" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="AXIAL-0.3">
<wire x1="-2.54" y1="0.762" x2="2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0.762" x2="2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="-2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="3.81" y="0" drill="0.9" diameter="1.8796"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25" font="vector">&gt;Name</text>
<text x="-2.032" y="-0.381" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="R2010">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="1.5621" x2="3.302" y2="1.5621" width="0.0508" layer="39"/>
<wire x1="3.302" y1="1.5621" x2="3.302" y2="-1.5621" width="0.0508" layer="39"/>
<wire x1="3.302" y1="-1.5621" x2="-3.302" y2="-1.5621" width="0.0508" layer="39"/>
<wire x1="-3.302" y1="-1.5621" x2="-3.302" y2="1.5621" width="0.0508" layer="39"/>
<wire x1="-1.027" y1="1.245" x2="1.027" y2="1.245" width="0.1524" layer="21"/>
<wire x1="-1.002" y1="-1.245" x2="1.016" y2="-1.245" width="0.1524" layer="21"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-2.54" y="1.5875" size="0.4064" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.032" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
</package>
<package name="0805">
<wire x1="-0.3" y1="0.6" x2="0.3" y2="0.6" width="0.1524" layer="21"/>
<wire x1="-0.3" y1="-0.6" x2="0.3" y2="-0.6" width="0.1524" layer="21"/>
<smd name="1" x="-0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<smd name="2" x="0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<text x="-0.762" y="0.8255" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.016" y="-1.397" size="0.4064" layer="27">&gt;VALUE</text>
<wire x1="-1.4986" y1="0.8128" x2="1.4986" y2="0.8128" width="0.0508" layer="39"/>
<wire x1="1.4986" y1="0.8128" x2="1.4986" y2="-0.8128" width="0.0508" layer="39"/>
<wire x1="1.4986" y1="-0.8128" x2="-1.4986" y2="-0.8128" width="0.0508" layer="39"/>
<wire x1="-1.4986" y1="-0.8128" x2="-1.4986" y2="0.8128" width="0.0508" layer="39"/>
</package>
<package name="0603-RES">
<wire x1="-1.6002" y1="0.6858" x2="1.6002" y2="0.6858" width="0.0508" layer="39"/>
<wire x1="1.6002" y1="0.6858" x2="1.6002" y2="-0.6858" width="0.0508" layer="39"/>
<wire x1="1.6002" y1="-0.6858" x2="-1.6002" y2="-0.6858" width="0.0508" layer="39"/>
<wire x1="-1.6002" y1="-0.6858" x2="-1.6002" y2="0.6858" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="-0.889" y="0.762" size="0.4064" layer="25" font="vector">&gt;NAME</text>
<text x="-1.016" y="-1.143" size="0.4064" layer="27" font="vector">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<rectangle x1="-0.1905" y1="-0.381" x2="0.1905" y2="0.381" layer="21"/>
</package>
<package name="1/6W-RES">
<description>1/6W Thru-hole Resistor - *UNPROVEN*</description>
<wire x1="-1.55" y1="0.85" x2="-1.55" y2="-0.85" width="0.2032" layer="21"/>
<wire x1="-1.55" y1="-0.85" x2="1.55" y2="-0.85" width="0.2032" layer="21"/>
<wire x1="1.55" y1="-0.85" x2="1.55" y2="0.85" width="0.2032" layer="21"/>
<wire x1="1.55" y1="0.85" x2="-1.55" y2="0.85" width="0.2032" layer="21"/>
<pad name="1" x="-2.5" y="0" drill="0.762" diameter="1.6764"/>
<pad name="2" x="2.5" y="0" drill="0.762" diameter="1.6764"/>
<text x="-1.2662" y="0.9552" size="0.6096" layer="25">&gt;NAME</text>
<text x="-1.423" y="-0.4286" size="0.8128" layer="21" ratio="15">&gt;VALUE</text>
</package>
<package name="R2512">
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<smd name="1" x="-2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<smd name="2" x="2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<wire x1="-3.9116" y1="-1.8034" x2="3.9116" y2="-1.8034" width="0.0508" layer="39"/>
<wire x1="3.9116" y1="-1.8034" x2="3.9116" y2="1.8034" width="0.0508" layer="39"/>
<wire x1="3.9116" y1="1.8034" x2="-3.9116" y2="1.8034" width="0.0508" layer="39"/>
<wire x1="-3.9116" y1="1.8034" x2="-3.9116" y2="-1.8034" width="0.0508" layer="39"/>
</package>
<package name="AXIAL-0.4">
<description>1/4W Resistor, 0.4" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<wire x1="-3.15" y1="-1.2" x2="-3.15" y2="1.2" width="0.2032" layer="21"/>
<wire x1="-3.15" y1="1.2" x2="3.15" y2="1.2" width="0.2032" layer="21"/>
<wire x1="3.15" y1="1.2" x2="3.15" y2="-1.2" width="0.2032" layer="21"/>
<wire x1="3.15" y1="-1.2" x2="-3.15" y2="-1.2" width="0.2032" layer="21"/>
<pad name="P$1" x="-5.08" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="5.08" y="0" drill="0.9" diameter="1.8796"/>
<text x="-3.175" y="1.905" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-2.286" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.5">
<description>1/2W Resistor, 0.5" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<wire x1="-4.5" y1="-1.65" x2="-4.5" y2="1.65" width="0.2032" layer="21"/>
<wire x1="-4.5" y1="1.65" x2="4.5" y2="1.65" width="0.2032" layer="21"/>
<wire x1="4.5" y1="1.65" x2="4.5" y2="-1.65" width="0.2032" layer="21"/>
<wire x1="4.5" y1="-1.65" x2="-4.5" y2="-1.65" width="0.2032" layer="21"/>
<pad name="P$1" x="-6.35" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="6.35" y="0" drill="0.9" diameter="1.8796"/>
<text x="-4.445" y="2.54" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-3.429" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.6">
<description>1W Resistor, 0.6" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<wire x1="-5.75" y1="-2.25" x2="-5.75" y2="2.25" width="0.2032" layer="21"/>
<wire x1="-5.75" y1="2.25" x2="5.75" y2="2.25" width="0.2032" layer="21"/>
<wire x1="5.75" y1="2.25" x2="5.75" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="5.75" y1="-2.25" x2="-5.75" y2="-2.25" width="0.2032" layer="21"/>
<pad name="P$1" x="-7.62" y="0" drill="1.2" diameter="1.8796"/>
<pad name="P$2" x="7.62" y="0" drill="1.2" diameter="1.8796"/>
<text x="-5.715" y="3.175" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-4.064" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.8">
<description>2W Resistor, 0.8" wide&lt;p&gt;

Yageo CFR series &lt;a href="http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf"&gt;http://www.yageo.com/pdf/yageo/Leaded-R_CFR_2008.pdf&lt;/a&gt;</description>
<wire x1="-7.75" y1="-2.5" x2="-7.75" y2="2.5" width="0.2032" layer="21"/>
<wire x1="-7.75" y1="2.5" x2="7.75" y2="2.5" width="0.2032" layer="21"/>
<wire x1="7.75" y1="2.5" x2="7.75" y2="-2.5" width="0.2032" layer="21"/>
<wire x1="7.75" y1="-2.5" x2="-7.75" y2="-2.5" width="0.2032" layer="21"/>
<pad name="P$1" x="-10.16" y="0" drill="1.2" diameter="1.8796"/>
<pad name="P$2" x="10.16" y="0" drill="1.2" diameter="1.8796"/>
<text x="-7.62" y="3.175" size="0.8128" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="-5.969" y="-0.381" size="0.8128" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="AXIAL-0.3-KIT">
<description>&lt;h3&gt;AXIAL-0.3-KIT&lt;/h3&gt;

Commonly used for 1/4W through-hole resistors. 0.3" pitch between holes.&lt;br&gt;
&lt;br&gt;

&lt;b&gt;Warning:&lt;/b&gt; This is the KIT version of the AXIAL-0.3 package. This package has a smaller diameter top stop mask, which doesn't cover the diameter of the pad. This means only the bottom side of the pads' copper will be exposed. You'll only be able to solder to the bottom side.</description>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="0" width="0.254" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="-2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="0" width="0.254" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.254" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.254" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="1.016" diameter="2.032" stop="no"/>
<pad name="P$2" x="3.81" y="0" drill="1.016" diameter="2.032" stop="no"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25" font="vector">&gt;Name</text>
<text x="-2.159" y="-0.762" size="1.27" layer="21" font="vector" ratio="15">&gt;Value</text>
<polygon width="0.127" layer="30">
<vertex x="3.8201" y="-0.9449" curve="-90"/>
<vertex x="2.8652" y="-0.0152" curve="-90.011749"/>
<vertex x="3.8176" y="0.9602" curve="-90"/>
<vertex x="4.7676" y="-0.0178" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="3.8176" y="-0.4369" curve="-90.012891"/>
<vertex x="3.3731" y="-0.0127" curve="-90"/>
<vertex x="3.8176" y="0.4546" curve="-90"/>
<vertex x="4.2595" y="-0.0025" curve="-90.012967"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="-3.8075" y="-0.9525" curve="-90"/>
<vertex x="-4.7624" y="-0.0228" curve="-90.011749"/>
<vertex x="-3.81" y="0.9526" curve="-90"/>
<vertex x="-2.86" y="-0.0254" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-3.81" y="-0.4445" curve="-90.012891"/>
<vertex x="-4.2545" y="-0.0203" curve="-90"/>
<vertex x="-3.81" y="0.447" curve="-90"/>
<vertex x="-3.3681" y="-0.0101" curve="-90.012967"/>
</polygon>
</package>
<package name="AXIAL-0.3EZ">
<description>This is the "EZ" version of the standard .3" spaced resistor package.&lt;br&gt;
It has a reduced top mask to make it harder to install upside-down.</description>
<wire x1="-2.54" y1="0.762" x2="2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0.762" x2="2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="-2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<pad name="P$2" x="3.81" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<text x="-2.54" y="1.27" size="0.4064" layer="25" font="vector">&gt;Name</text>
<text x="-2.032" y="-0.381" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
<circle x="-3.81" y="0" radius="0.508" width="0" layer="29"/>
<circle x="3.81" y="0" radius="0.523634375" width="0" layer="29"/>
<circle x="-3.81" y="0" radius="1.02390625" width="0" layer="30"/>
<circle x="3.81" y="0" radius="1.04726875" width="0" layer="30"/>
</package>
<package name="AXIAL-0.1EZ">
<wire x1="1.27" y1="-0.762" x2="1.27" y2="0" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0" x2="1.27" y2="0.762" width="0.2032" layer="21"/>
<wire x1="1.524" y1="0" x2="1.27" y2="0" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0" x2="1.016" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="0" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<pad name="P$2" x="2.54" y="0" drill="0.9" diameter="1.8796" stop="no"/>
<text x="0" y="1.27" size="1.016" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="0" y="-2.159" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
<circle x="0" y="0" radius="0.4572" width="0" layer="29"/>
<circle x="0" y="0" radius="1.016" width="0" layer="30"/>
<circle x="2.54" y="0" radius="1.016" width="0" layer="30"/>
<circle x="0" y="0" radius="0.4572" width="0" layer="29"/>
<circle x="2.54" y="0" radius="0.4572" width="0" layer="29"/>
</package>
<package name="AXIAL-0.1">
<wire x1="1.27" y1="-0.762" x2="1.27" y2="0" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0" x2="1.27" y2="0.762" width="0.2032" layer="21"/>
<wire x1="1.524" y1="0" x2="1.27" y2="0" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0" x2="1.016" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="0" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="2.54" y="0" drill="0.9" diameter="1.8796"/>
<text x="0" y="1.27" size="1.016" layer="25" font="vector" ratio="15">&gt;Name</text>
<text x="0" y="-2.159" size="1.016" layer="21" font="vector" ratio="15">&gt;Value</text>
</package>
<package name="0402-RES">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.2065" y1="0.6477" x2="1.2065" y2="0.6477" width="0.0508" layer="39"/>
<wire x1="1.2065" y1="0.6477" x2="1.2065" y2="-0.6477" width="0.0508" layer="39"/>
<wire x1="1.2065" y1="-0.6477" x2="-1.2065" y2="-0.6477" width="0.0508" layer="39"/>
<wire x1="-1.2065" y1="-0.6477" x2="-1.2065" y2="0.6477" width="0.0508" layer="39"/>
<smd name="1" x="-0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<smd name="2" x="0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<text x="-0.889" y="0.6985" size="0.4064" layer="25">&gt;NAME</text>
<text x="-1.0795" y="-1.143" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<rectangle x1="-0.2032" y1="-0.3556" x2="0.2032" y2="0.3556" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="RESISTOR">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.1524" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.1524" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.1524" layer="94"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RESISTOR" prefix="R" uservalue="yes">
<description>&lt;b&gt;Resistor&lt;/b&gt;
Basic schematic elements and footprints for 0603, 1206, and PTH resistors.</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="1206" package="1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="AXIAL-0.3" package="AXIAL-0.3">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2010" package="R2010">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805-RES" package="0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603-RES" package="0603-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603" package="0603-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/6W" package="1/6W-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2512" package="R2512">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/4W" package="AXIAL-0.4">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/2W" package="AXIAL-0.5">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1W" package="AXIAL-0.6">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-2W" package="AXIAL-0.8">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="KIT" package="AXIAL-0.3-KIT">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="EZ" package="AXIAL-0.3EZ">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/4W-VERT-KIT" package="AXIAL-0.1EZ">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH-1/4W-VERT" package="AXIAL-0.1">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0402" package="0402-RES">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="adafruit">
<packages>
<package name="TSSOP14">
<description>&lt;b&gt;Thin Shrink Small Outline Plastic 14&lt;/b&gt;&lt;p&gt;</description>
<wire x1="-2.5146" y1="-2.2828" x2="2.5146" y2="-2.2828" width="0.1524" layer="51"/>
<wire x1="2.5146" y1="2.2828" x2="2.5146" y2="-2.2828" width="0.1524" layer="21"/>
<wire x1="2.5146" y1="2.2828" x2="-2.5146" y2="2.2828" width="0.1524" layer="51"/>
<wire x1="-2.5146" y1="-2.2828" x2="-2.5146" y2="2.2828" width="0.1524" layer="21"/>
<circle x="-1.6256" y="-1.2192" radius="0.4572" width="0.1524" layer="21"/>
<smd name="1" x="-1.95" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="2" x="-1.3" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="3" x="-0.65" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="4" x="0" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="5" x="0.65" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="6" x="1.3" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="7" x="1.95" y="-2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="8" x="1.95" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="9" x="1.3" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="10" x="0.65" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="11" x="0" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="12" x="-0.65" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="13" x="-1.3" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<smd name="14" x="-1.95" y="2.9178" dx="0.3048" dy="0.9906" layer="1"/>
<text x="-2.8956" y="-2.0828" size="1.016" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="3.8862" y="-2.0828" size="1.016" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.0516" y1="-3.121" x2="-1.8484" y2="-2.2828" layer="51"/>
<rectangle x1="-1.4016" y1="-3.121" x2="-1.1984" y2="-2.2828" layer="51"/>
<rectangle x1="-0.7516" y1="-3.121" x2="-0.5484" y2="-2.2828" layer="51"/>
<rectangle x1="-0.1016" y1="-3.121" x2="0.1016" y2="-2.2828" layer="51"/>
<rectangle x1="0.5484" y1="-3.121" x2="0.7516" y2="-2.2828" layer="51"/>
<rectangle x1="1.1984" y1="-3.121" x2="1.4016" y2="-2.2828" layer="51"/>
<rectangle x1="1.8484" y1="-3.121" x2="2.0516" y2="-2.2828" layer="51"/>
<rectangle x1="1.8484" y1="2.2828" x2="2.0516" y2="3.121" layer="51"/>
<rectangle x1="1.1984" y1="2.2828" x2="1.4016" y2="3.121" layer="51"/>
<rectangle x1="0.5484" y1="2.2828" x2="0.7516" y2="3.121" layer="51"/>
<rectangle x1="-0.1016" y1="2.2828" x2="0.1016" y2="3.121" layer="51"/>
<rectangle x1="-0.7516" y1="2.2828" x2="-0.5484" y2="3.121" layer="51"/>
<rectangle x1="-1.4016" y1="2.2828" x2="-1.1984" y2="3.121" layer="51"/>
<rectangle x1="-2.0516" y1="2.2828" x2="-1.8484" y2="3.121" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="TXB0104PWR">
<wire x1="-12.7" y1="15.24" x2="12.7" y2="15.24" width="0.254" layer="94"/>
<wire x1="12.7" y1="15.24" x2="12.7" y2="-12.7" width="0.254" layer="94"/>
<wire x1="12.7" y1="-12.7" x2="-12.7" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-12.7" x2="-12.7" y2="15.24" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-10.16" x2="-2.54" y2="-10.16" width="0.127" layer="97" style="shortdash"/>
<wire x1="-2.54" y1="-10.16" x2="-2.54" y2="5.08" width="0.127" layer="97" style="shortdash"/>
<wire x1="-2.54" y1="5.08" x2="-12.7" y2="5.08" width="0.127" layer="97" style="shortdash"/>
<wire x1="12.7" y1="5.08" x2="2.54" y2="5.08" width="0.127" layer="97" style="shortdash"/>
<wire x1="2.54" y1="5.08" x2="2.54" y2="-10.16" width="0.127" layer="97" style="shortdash"/>
<wire x1="2.54" y1="-10.16" x2="12.7" y2="-10.16" width="0.127" layer="97" style="shortdash"/>
<text x="-12.7" y="17.78" size="1.27" layer="95">&gt;NAME</text>
<text x="-12.7" y="-15.24" size="1.27" layer="96">&gt;VALUE</text>
<text x="-11.43" y="-8.89" size="1.27" layer="97">1.2-3.6V</text>
<text x="3.175" y="-8.89" size="1.27" layer="97">1.65-5.5V</text>
<pin name="VCCA" x="-2.54" y="17.78" length="short" rot="R270"/>
<pin name="A1" x="-15.24" y="2.54" length="short"/>
<pin name="A2" x="-15.24" y="0" length="short"/>
<pin name="A3" x="-15.24" y="-2.54" length="short"/>
<pin name="A4" x="-15.24" y="-5.08" length="short"/>
<pin name="GND" x="0" y="-15.24" length="short" rot="R90"/>
<pin name="VCCB" x="2.54" y="17.78" length="short" rot="R270"/>
<pin name="B1" x="15.24" y="2.54" length="short" rot="R180"/>
<pin name="B2" x="15.24" y="0" length="short" rot="R180"/>
<pin name="B3" x="15.24" y="-2.54" length="short" rot="R180"/>
<pin name="B4" x="15.24" y="-5.08" length="short" rot="R180"/>
<pin name="OE" x="-15.24" y="7.62" length="short"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TXB0104PWR" prefix="U" uservalue="yes">
<description>&lt;b&gt;4-Bit Bi-Directional Level Shifter&lt;/b&gt;
&lt;ul&gt;
  &lt;li&gt;1.2V-3.6V (VCCA) to 1.65V-5.5V (VCCB) bi-directional level shifter with auto direction sensing.&lt;/li&gt;
  &lt;li&gt;Max data rate - VCCA 1.8V:  20Mbps (50ns), VCCA 3.3V: 100Mbps (10ns)&lt;/li&gt;
&lt;/ul&gt;
&lt;p&gt;Digikey: 296-21929-1-ND&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="TXB0104PWR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TSSOP14">
<connects>
<connect gate="G$1" pin="A1" pad="2"/>
<connect gate="G$1" pin="A2" pad="3"/>
<connect gate="G$1" pin="A3" pad="4"/>
<connect gate="G$1" pin="A4" pad="5"/>
<connect gate="G$1" pin="B1" pad="13"/>
<connect gate="G$1" pin="B2" pad="12"/>
<connect gate="G$1" pin="B3" pad="11"/>
<connect gate="G$1" pin="B4" pad="10"/>
<connect gate="G$1" pin="GND" pad="7"/>
<connect gate="G$1" pin="OE" pad="8"/>
<connect gate="G$1" pin="VCCA" pad="1"/>
<connect gate="G$1" pin="VCCB" pad="14"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Sensors">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find sensors- accelerometers, gyros, compasses, magnetometers, light sensors, imagers, temp sensors, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="QFN-24-TESTING">
<description>This is the testing package I pulled from the MPU-6050 breakout board. This package is tested and works.</description>
<circle x="-1.78" y="1.78" radius="0.0632" width="0.127" layer="21"/>
<circle x="0" y="0" radius="0.2" width="0.1" layer="51"/>
<wire x1="-2" y1="2" x2="2" y2="2" width="0.127" layer="51"/>
<wire x1="2" y1="2" x2="2" y2="-2" width="0.127" layer="51"/>
<wire x1="2" y1="-2" x2="-2" y2="-2" width="0.127" layer="51"/>
<wire x1="-2" y1="-2" x2="-2" y2="2" width="0.127" layer="51"/>
<wire x1="1.8" y1="2.1" x2="2.1" y2="2.1" width="0.127" layer="21"/>
<wire x1="2.1" y1="2.1" x2="2.1" y2="1.8" width="0.127" layer="21"/>
<wire x1="1.8" y1="-2.1" x2="2.1" y2="-2.1" width="0.127" layer="21"/>
<wire x1="2.1" y1="-2.1" x2="2.1" y2="-1.8" width="0.127" layer="21"/>
<wire x1="-1.8" y1="-2.1" x2="-2.1" y2="-2.1" width="0.127" layer="21"/>
<wire x1="-2.1" y1="-2.1" x2="-2.1" y2="-1.8" width="0.127" layer="21"/>
<wire x1="-2.1" y1="1.8" x2="-1.8" y2="2.1" width="0.127" layer="21"/>
<wire x1="0" y1="0.2" x2="0" y2="1.4" width="0.1" layer="51"/>
<wire x1="-0.2" y1="1.2" x2="0" y2="1.4" width="0.1" layer="51"/>
<wire x1="0" y1="1.4" x2="0.2" y2="1.2" width="0.1" layer="51"/>
<wire x1="0.3" y1="0.7" x2="-0.3" y2="0.7" width="0.1" layer="51" curve="161.075356"/>
<wire x1="0.4" y1="0.8" x2="0.3" y2="0.7" width="0.1" layer="51"/>
<wire x1="0.3" y1="0.7" x2="0.2" y2="0.7" width="0.1" layer="51"/>
<wire x1="0.2" y1="0" x2="1.4" y2="0" width="0.1" layer="51"/>
<wire x1="1.2" y1="0.2" x2="1.4" y2="0" width="0.1" layer="51"/>
<wire x1="1.4" y1="0" x2="1.2" y2="-0.2" width="0.1" layer="51"/>
<wire x1="0.7" y1="-0.3" x2="0.7" y2="0.3" width="0.1" layer="51" curve="161.075356"/>
<wire x1="0.8" y1="-0.4" x2="0.7" y2="-0.3" width="0.1" layer="51"/>
<wire x1="0.7" y1="-0.3" x2="0.7" y2="-0.2" width="0.1" layer="51"/>
<rectangle x1="0.6775" y1="-2.0225" x2="0.7689" y2="-2.0043" layer="200"/>
<rectangle x1="0.7872" y1="-2.0225" x2="0.8055" y2="-2.0043" layer="200"/>
<rectangle x1="2.0308" y1="-2.0225" x2="2.0491" y2="-2.0043" layer="200"/>
<rectangle x1="-1.3708" y1="-2.0043" x2="-1.1696" y2="-1.986" layer="200"/>
<rectangle x1="-0.8587" y1="-2.0043" x2="-0.6758" y2="-1.986" layer="200"/>
<rectangle x1="-0.3466" y1="-2.0043" x2="-0.1637" y2="-1.986" layer="200"/>
<rectangle x1="0.1654" y1="-2.0043" x2="0.3666" y2="-1.986" layer="200"/>
<rectangle x1="0.6775" y1="-2.0043" x2="0.8787" y2="-1.986" layer="200"/>
<rectangle x1="1.1896" y1="-2.0043" x2="1.3907" y2="-1.986" layer="200"/>
<rectangle x1="2.0308" y1="-2.0043" x2="2.0491" y2="-1.986" layer="200"/>
<rectangle x1="-1.389" y1="-1.986" x2="-1.1513" y2="-1.9677" layer="200"/>
<rectangle x1="-0.877" y1="-1.986" x2="-0.6575" y2="-1.9677" layer="200"/>
<rectangle x1="-0.3649" y1="-1.986" x2="-0.1455" y2="-1.9677" layer="200"/>
<rectangle x1="0.1472" y1="-1.986" x2="0.3849" y2="-1.9677" layer="200"/>
<rectangle x1="0.6592" y1="-1.986" x2="0.8787" y2="-1.9677" layer="200"/>
<rectangle x1="1.1713" y1="-1.986" x2="1.3907" y2="-1.9677" layer="200"/>
<rectangle x1="-1.389" y1="-1.9677" x2="-1.1513" y2="-1.9494" layer="200"/>
<rectangle x1="-0.877" y1="-1.9677" x2="-0.6575" y2="-1.9494" layer="200"/>
<rectangle x1="-0.3649" y1="-1.9677" x2="-0.1455" y2="-1.9494" layer="200"/>
<rectangle x1="0.1654" y1="-1.9677" x2="0.3849" y2="-1.9494" layer="200"/>
<rectangle x1="0.6592" y1="-1.9677" x2="0.8787" y2="-1.9494" layer="200"/>
<rectangle x1="1.1713" y1="-1.9677" x2="1.409" y2="-1.9494" layer="200"/>
<rectangle x1="-1.389" y1="-1.9494" x2="-1.1513" y2="-1.9311" layer="200"/>
<rectangle x1="-0.877" y1="-1.9494" x2="-0.6392" y2="-1.9311" layer="200"/>
<rectangle x1="-0.3649" y1="-1.9494" x2="-0.1455" y2="-1.9311" layer="200"/>
<rectangle x1="0.1472" y1="-1.9494" x2="0.3849" y2="-1.9311" layer="200"/>
<rectangle x1="0.6592" y1="-1.9494" x2="0.8787" y2="-1.9311" layer="200"/>
<rectangle x1="1.1713" y1="-1.9494" x2="1.409" y2="-1.9311" layer="200"/>
<rectangle x1="-1.389" y1="-1.9311" x2="-1.1513" y2="-1.9128" layer="200"/>
<rectangle x1="-0.877" y1="-1.9311" x2="-0.6392" y2="-1.9128" layer="200"/>
<rectangle x1="-0.3649" y1="-1.9311" x2="-0.1272" y2="-1.9128" layer="200"/>
<rectangle x1="0.1472" y1="-1.9311" x2="0.3849" y2="-1.9128" layer="200"/>
<rectangle x1="0.6592" y1="-1.9311" x2="0.897" y2="-1.9128" layer="200"/>
<rectangle x1="1.1713" y1="-1.9311" x2="1.409" y2="-1.9128" layer="200"/>
<rectangle x1="-1.389" y1="-1.9128" x2="-1.1513" y2="-1.8945" layer="200"/>
<rectangle x1="-0.877" y1="-1.9128" x2="-0.6392" y2="-1.8945" layer="200"/>
<rectangle x1="-0.3649" y1="-1.9128" x2="-0.1272" y2="-1.8945" layer="200"/>
<rectangle x1="0.1472" y1="-1.9128" x2="0.3849" y2="-1.8945" layer="200"/>
<rectangle x1="0.6409" y1="-1.9128" x2="0.897" y2="-1.8945" layer="200"/>
<rectangle x1="1.153" y1="-1.9128" x2="1.409" y2="-1.8945" layer="200"/>
<rectangle x1="-1.389" y1="-1.8945" x2="-1.133" y2="-1.8762" layer="200"/>
<rectangle x1="-0.877" y1="-1.8945" x2="-0.6392" y2="-1.8762" layer="200"/>
<rectangle x1="-0.3832" y1="-1.8945" x2="-0.1272" y2="-1.8762" layer="200"/>
<rectangle x1="0.1472" y1="-1.8945" x2="0.3849" y2="-1.8762" layer="200"/>
<rectangle x1="0.6409" y1="-1.8945" x2="0.897" y2="-1.8762" layer="200"/>
<rectangle x1="1.153" y1="-1.8945" x2="1.409" y2="-1.8762" layer="200"/>
<rectangle x1="-1.389" y1="-1.8762" x2="-1.133" y2="-1.858" layer="200"/>
<rectangle x1="-0.877" y1="-1.8762" x2="-0.6209" y2="-1.858" layer="200"/>
<rectangle x1="-0.3832" y1="-1.8762" x2="-0.1272" y2="-1.858" layer="200"/>
<rectangle x1="0.1289" y1="-1.8762" x2="0.4032" y2="-1.858" layer="200"/>
<rectangle x1="0.6409" y1="-1.8762" x2="0.897" y2="-1.858" layer="200"/>
<rectangle x1="1.153" y1="-1.8762" x2="1.409" y2="-1.858" layer="200"/>
<rectangle x1="-1.389" y1="-1.858" x2="-1.133" y2="-1.8397" layer="200"/>
<rectangle x1="-0.8953" y1="-1.858" x2="-0.6209" y2="-1.8397" layer="200"/>
<rectangle x1="-0.3832" y1="-1.858" x2="-0.1272" y2="-1.8397" layer="200"/>
<rectangle x1="0.1289" y1="-1.858" x2="0.3849" y2="-1.8397" layer="200"/>
<rectangle x1="0.6409" y1="-1.858" x2="0.897" y2="-1.8397" layer="200"/>
<rectangle x1="1.153" y1="-1.858" x2="1.409" y2="-1.8397" layer="200"/>
<rectangle x1="-1.389" y1="-1.8397" x2="-1.1513" y2="-1.8214" layer="200"/>
<rectangle x1="-0.8953" y1="-1.8397" x2="-0.6209" y2="-1.8214" layer="200"/>
<rectangle x1="-0.3832" y1="-1.8397" x2="-0.1272" y2="-1.8214" layer="200"/>
<rectangle x1="0.1289" y1="-1.8397" x2="0.3849" y2="-1.8214" layer="200"/>
<rectangle x1="0.6409" y1="-1.8397" x2="0.897" y2="-1.8214" layer="200"/>
<rectangle x1="1.153" y1="-1.8397" x2="1.409" y2="-1.8214" layer="200"/>
<rectangle x1="-1.389" y1="-1.8214" x2="-1.1513" y2="-1.8031" layer="200"/>
<rectangle x1="-0.8953" y1="-1.8214" x2="-0.6209" y2="-1.8031" layer="200"/>
<rectangle x1="-0.3832" y1="-1.8214" x2="-0.1089" y2="-1.8031" layer="200"/>
<rectangle x1="0.1289" y1="-1.8214" x2="0.3849" y2="-1.8031" layer="200"/>
<rectangle x1="0.6409" y1="-1.8214" x2="0.897" y2="-1.8031" layer="200"/>
<rectangle x1="1.153" y1="-1.8214" x2="1.409" y2="-1.8031" layer="200"/>
<rectangle x1="-1.389" y1="-1.8031" x2="-1.1513" y2="-1.7848" layer="200"/>
<rectangle x1="-0.8953" y1="-1.8031" x2="-0.6392" y2="-1.7848" layer="200"/>
<rectangle x1="-0.3832" y1="-1.8031" x2="-0.1272" y2="-1.7848" layer="200"/>
<rectangle x1="0.1289" y1="-1.8031" x2="0.3849" y2="-1.7848" layer="200"/>
<rectangle x1="0.6409" y1="-1.8031" x2="0.897" y2="-1.7848" layer="200"/>
<rectangle x1="1.153" y1="-1.8031" x2="1.409" y2="-1.7848" layer="200"/>
<rectangle x1="-1.389" y1="-1.7848" x2="-1.133" y2="-1.7665" layer="200"/>
<rectangle x1="-0.8953" y1="-1.7848" x2="-0.6209" y2="-1.7665" layer="200"/>
<rectangle x1="-0.3832" y1="-1.7848" x2="-0.1272" y2="-1.7665" layer="200"/>
<rectangle x1="0.1289" y1="-1.7848" x2="0.3849" y2="-1.7665" layer="200"/>
<rectangle x1="0.6409" y1="-1.7848" x2="0.897" y2="-1.7665" layer="200"/>
<rectangle x1="1.153" y1="-1.7848" x2="1.3907" y2="-1.7665" layer="200"/>
<rectangle x1="-1.3708" y1="-1.7665" x2="-1.133" y2="-1.7482" layer="200"/>
<rectangle x1="-0.8953" y1="-1.7665" x2="-0.6209" y2="-1.7482" layer="200"/>
<rectangle x1="-0.3649" y1="-1.7665" x2="-0.1272" y2="-1.7482" layer="200"/>
<rectangle x1="0.1289" y1="-1.7665" x2="0.3849" y2="-1.7482" layer="200"/>
<rectangle x1="0.6409" y1="-1.7665" x2="0.897" y2="-1.7482" layer="200"/>
<rectangle x1="1.153" y1="-1.7665" x2="1.3907" y2="-1.7482" layer="200"/>
<rectangle x1="-1.3525" y1="-1.7482" x2="-1.133" y2="-1.7299" layer="200"/>
<rectangle x1="-0.8953" y1="-1.7482" x2="-0.6209" y2="-1.7299" layer="200"/>
<rectangle x1="-0.3832" y1="-1.7482" x2="-0.1272" y2="-1.7299" layer="200"/>
<rectangle x1="0.1289" y1="-1.7482" x2="0.3849" y2="-1.7299" layer="200"/>
<rectangle x1="0.6409" y1="-1.7482" x2="0.897" y2="-1.7299" layer="200"/>
<rectangle x1="1.153" y1="-1.7482" x2="1.3724" y2="-1.7299" layer="200"/>
<rectangle x1="-1.3342" y1="-1.7299" x2="-1.1513" y2="-1.7116" layer="200"/>
<rectangle x1="-0.8953" y1="-1.7299" x2="-0.6209" y2="-1.7116" layer="200"/>
<rectangle x1="-0.3832" y1="-1.7299" x2="-0.1272" y2="-1.7116" layer="200"/>
<rectangle x1="0.1289" y1="-1.7299" x2="0.3849" y2="-1.7116" layer="200"/>
<rectangle x1="0.6409" y1="-1.7299" x2="0.897" y2="-1.7116" layer="200"/>
<rectangle x1="1.153" y1="-1.7299" x2="1.3542" y2="-1.7116" layer="200"/>
<rectangle x1="-1.3159" y1="-1.7116" x2="-1.1513" y2="-1.6934" layer="200"/>
<rectangle x1="-0.877" y1="-1.7116" x2="-0.6392" y2="-1.6934" layer="200"/>
<rectangle x1="-0.3649" y1="-1.7116" x2="-0.1272" y2="-1.6934" layer="200"/>
<rectangle x1="0.1472" y1="-1.7116" x2="0.3849" y2="-1.6934" layer="200"/>
<rectangle x1="0.6592" y1="-1.7116" x2="0.897" y2="-1.6934" layer="200"/>
<rectangle x1="1.1713" y1="-1.7116" x2="1.3176" y2="-1.6934" layer="200"/>
<rectangle x1="-1.2793" y1="-1.6934" x2="-1.1696" y2="-1.6751" layer="200"/>
<rectangle x1="-0.8587" y1="-1.6934" x2="-0.6575" y2="-1.6751" layer="200"/>
<rectangle x1="-0.3466" y1="-1.6934" x2="-0.1455" y2="-1.6751" layer="200"/>
<rectangle x1="0.1654" y1="-1.6934" x2="0.3666" y2="-1.6751" layer="200"/>
<rectangle x1="0.6592" y1="-1.6934" x2="0.8787" y2="-1.6751" layer="200"/>
<rectangle x1="1.2079" y1="-1.6934" x2="1.281" y2="-1.6751" layer="200"/>
<rectangle x1="-1.9377" y1="-1.3825" x2="-1.7365" y2="-1.3642" layer="200"/>
<rectangle x1="1.7748" y1="-1.3825" x2="1.8479" y2="-1.3642" layer="200"/>
<rectangle x1="1.8845" y1="-1.3825" x2="1.9394" y2="-1.3642" layer="200"/>
<rectangle x1="-1.9925" y1="-1.3642" x2="-1.7182" y2="-1.3459" layer="200"/>
<rectangle x1="-1.1513" y1="-1.3642" x2="-1.0599" y2="-1.3459" layer="200"/>
<rectangle x1="-1.0416" y1="-1.3642" x2="-0.9684" y2="-1.3459" layer="200"/>
<rectangle x1="-0.9501" y1="-1.3642" x2="-0.5112" y2="-1.3459" layer="200"/>
<rectangle x1="-0.4746" y1="-1.3642" x2="-0.4564" y2="-1.3459" layer="200"/>
<rectangle x1="-0.4381" y1="-1.3642" x2="-0.31" y2="-1.3459" layer="200"/>
<rectangle x1="-0.2918" y1="-1.3642" x2="-0.0357" y2="-1.3459" layer="200"/>
<rectangle x1="0.0008" y1="-1.3642" x2="0.8055" y2="-1.3459" layer="200"/>
<rectangle x1="0.8238" y1="-1.3642" x2="0.897" y2="-1.3459" layer="200"/>
<rectangle x1="0.9152" y1="-1.3642" x2="1.025" y2="-1.3459" layer="200"/>
<rectangle x1="1.0616" y1="-1.3642" x2="1.0981" y2="-1.3459" layer="200"/>
<rectangle x1="1.153" y1="-1.3642" x2="1.1713" y2="-1.3459" layer="200"/>
<rectangle x1="1.7199" y1="-1.3642" x2="2.0308" y2="-1.3459" layer="200"/>
<rectangle x1="-1.9925" y1="-1.3459" x2="-1.6816" y2="-1.3276" layer="200"/>
<rectangle x1="-1.261" y1="-1.3459" x2="1.2627" y2="-1.3276" layer="200"/>
<rectangle x1="1.7199" y1="-1.3459" x2="2.0308" y2="-1.3276" layer="200"/>
<rectangle x1="-1.9925" y1="-1.3276" x2="-1.6816" y2="-1.3093" layer="200"/>
<rectangle x1="-1.2793" y1="-1.3276" x2="1.2993" y2="-1.3093" layer="200"/>
<rectangle x1="1.6833" y1="-1.3276" x2="2.0491" y2="-1.3093" layer="200"/>
<rectangle x1="-1.9925" y1="-1.3093" x2="-1.6634" y2="-1.291" layer="200"/>
<rectangle x1="-1.2976" y1="-1.3093" x2="1.2993" y2="-1.291" layer="200"/>
<rectangle x1="1.6833" y1="-1.3093" x2="2.0491" y2="-1.291" layer="200"/>
<rectangle x1="-1.9925" y1="-1.291" x2="-1.6451" y2="-1.2727" layer="200"/>
<rectangle x1="-1.2976" y1="-1.291" x2="1.3176" y2="-1.2727" layer="200"/>
<rectangle x1="1.6651" y1="-1.291" x2="2.0491" y2="-1.2727" layer="200"/>
<rectangle x1="-1.9925" y1="-1.2727" x2="-1.6268" y2="-1.2544" layer="200"/>
<rectangle x1="-1.2976" y1="-1.2727" x2="1.3176" y2="-1.2544" layer="200"/>
<rectangle x1="1.6468" y1="-1.2727" x2="2.0491" y2="-1.2544" layer="200"/>
<rectangle x1="-1.9925" y1="-1.2544" x2="-1.6268" y2="-1.2362" layer="200"/>
<rectangle x1="-1.3159" y1="-1.2544" x2="1.3176" y2="-1.2362" layer="200"/>
<rectangle x1="1.6468" y1="-1.2544" x2="2.0491" y2="-1.2362" layer="200"/>
<rectangle x1="-1.9925" y1="-1.2362" x2="-1.6268" y2="-1.2179" layer="200"/>
<rectangle x1="-1.3159" y1="-1.2362" x2="1.3359" y2="-1.2179" layer="200"/>
<rectangle x1="1.6468" y1="-1.2362" x2="2.0491" y2="-1.2179" layer="200"/>
<rectangle x1="-1.9925" y1="-1.2179" x2="-1.6268" y2="-1.1996" layer="200"/>
<rectangle x1="-1.3159" y1="-1.2179" x2="1.3359" y2="-1.1996" layer="200"/>
<rectangle x1="1.6468" y1="-1.2179" x2="2.0491" y2="-1.1996" layer="200"/>
<rectangle x1="-1.9925" y1="-1.1996" x2="-1.6268" y2="-1.1813" layer="200"/>
<rectangle x1="-1.3159" y1="-1.1996" x2="1.3176" y2="-1.1813" layer="200"/>
<rectangle x1="1.6468" y1="-1.1996" x2="2.0491" y2="-1.1813" layer="200"/>
<rectangle x1="-1.9925" y1="-1.1813" x2="-1.6268" y2="-1.163" layer="200"/>
<rectangle x1="-1.3159" y1="-1.1813" x2="1.3359" y2="-1.163" layer="200"/>
<rectangle x1="1.6468" y1="-1.1813" x2="2.0491" y2="-1.163" layer="200"/>
<rectangle x1="-1.9925" y1="-1.163" x2="-1.9743" y2="-1.1447" layer="200"/>
<rectangle x1="-1.9377" y1="-1.163" x2="-1.6451" y2="-1.1447" layer="200"/>
<rectangle x1="-1.3159" y1="-1.163" x2="1.3359" y2="-1.1447" layer="200"/>
<rectangle x1="1.6651" y1="-1.163" x2="1.9577" y2="-1.1447" layer="200"/>
<rectangle x1="2.0125" y1="-1.163" x2="2.0491" y2="-1.1447" layer="200"/>
<rectangle x1="-1.9011" y1="-1.1447" x2="-1.8828" y2="-1.1264" layer="200"/>
<rectangle x1="-1.3159" y1="-1.1447" x2="1.3359" y2="-1.1264" layer="200"/>
<rectangle x1="-1.3159" y1="-1.1264" x2="1.3359" y2="-1.1081" layer="200"/>
<rectangle x1="-1.3159" y1="-1.1081" x2="1.3359" y2="-1.0899" layer="200"/>
<rectangle x1="-1.3159" y1="-1.0899" x2="1.3359" y2="-1.0716" layer="200"/>
<rectangle x1="-1.3159" y1="-1.0716" x2="1.3359" y2="-1.0533" layer="200"/>
<rectangle x1="-1.3159" y1="-1.0533" x2="1.3359" y2="-1.035" layer="200"/>
<rectangle x1="-1.3159" y1="-1.035" x2="1.3359" y2="-1.0167" layer="200"/>
<rectangle x1="-1.3159" y1="-1.0167" x2="1.3359" y2="-0.9984" layer="200"/>
<rectangle x1="-1.3159" y1="-0.9984" x2="1.3359" y2="-0.9801" layer="200"/>
<rectangle x1="-1.3159" y1="-0.9801" x2="1.3359" y2="-0.9618" layer="200"/>
<rectangle x1="-1.3159" y1="-0.9618" x2="1.3359" y2="-0.9436" layer="200"/>
<rectangle x1="-1.3159" y1="-0.9436" x2="1.3359" y2="-0.9253" layer="200"/>
<rectangle x1="-1.3159" y1="-0.9253" x2="1.3359" y2="-0.907" layer="200"/>
<rectangle x1="-1.3159" y1="-0.907" x2="1.3359" y2="-0.8887" layer="200"/>
<rectangle x1="-1.8645" y1="-0.8887" x2="-1.7365" y2="-0.8704" layer="200"/>
<rectangle x1="-1.3159" y1="-0.8887" x2="1.3359" y2="-0.8704" layer="200"/>
<rectangle x1="1.8114" y1="-0.8887" x2="1.8296" y2="-0.8704" layer="200"/>
<rectangle x1="1.8662" y1="-0.8887" x2="1.9028" y2="-0.8704" layer="200"/>
<rectangle x1="-1.9377" y1="-0.8704" x2="-1.6451" y2="-0.8521" layer="200"/>
<rectangle x1="-1.3159" y1="-0.8704" x2="1.3359" y2="-0.8521" layer="200"/>
<rectangle x1="1.6468" y1="-0.8704" x2="1.9577" y2="-0.8521" layer="200"/>
<rectangle x1="-1.9925" y1="-0.8521" x2="-1.6268" y2="-0.8338" layer="200"/>
<rectangle x1="-1.3159" y1="-0.8521" x2="1.3359" y2="-0.8338" layer="200"/>
<rectangle x1="1.6468" y1="-0.8521" x2="2.0308" y2="-0.8338" layer="200"/>
<rectangle x1="-1.9925" y1="-0.8338" x2="-1.6268" y2="-0.8155" layer="200"/>
<rectangle x1="-1.3159" y1="-0.8338" x2="1.3359" y2="-0.8155" layer="200"/>
<rectangle x1="1.6468" y1="-0.8338" x2="2.0491" y2="-0.8155" layer="200"/>
<rectangle x1="-1.9925" y1="-0.8155" x2="-1.6268" y2="-0.7972" layer="200"/>
<rectangle x1="-1.3159" y1="-0.8155" x2="1.3359" y2="-0.7972" layer="200"/>
<rectangle x1="1.6468" y1="-0.8155" x2="2.0491" y2="-0.7972" layer="200"/>
<rectangle x1="-1.9925" y1="-0.7972" x2="-1.6268" y2="-0.779" layer="200"/>
<rectangle x1="-1.3159" y1="-0.7972" x2="1.3359" y2="-0.779" layer="200"/>
<rectangle x1="1.6468" y1="-0.7972" x2="2.0491" y2="-0.779" layer="200"/>
<rectangle x1="-1.9925" y1="-0.779" x2="-1.6268" y2="-0.7607" layer="200"/>
<rectangle x1="-1.3159" y1="-0.779" x2="1.3359" y2="-0.7607" layer="200"/>
<rectangle x1="1.6468" y1="-0.779" x2="2.0491" y2="-0.7607" layer="200"/>
<rectangle x1="-1.9925" y1="-0.7607" x2="-1.6268" y2="-0.7424" layer="200"/>
<rectangle x1="-1.3159" y1="-0.7607" x2="1.3359" y2="-0.7424" layer="200"/>
<rectangle x1="1.6468" y1="-0.7607" x2="2.0491" y2="-0.7424" layer="200"/>
<rectangle x1="-1.9925" y1="-0.7424" x2="-1.6268" y2="-0.7241" layer="200"/>
<rectangle x1="-1.3159" y1="-0.7424" x2="1.3359" y2="-0.7241" layer="200"/>
<rectangle x1="1.6468" y1="-0.7424" x2="2.0491" y2="-0.7241" layer="200"/>
<rectangle x1="-1.9925" y1="-0.7241" x2="-1.6268" y2="-0.7058" layer="200"/>
<rectangle x1="-1.3159" y1="-0.7241" x2="1.3359" y2="-0.7058" layer="200"/>
<rectangle x1="1.6468" y1="-0.7241" x2="2.0491" y2="-0.7058" layer="200"/>
<rectangle x1="-1.9925" y1="-0.7058" x2="-1.6268" y2="-0.6875" layer="200"/>
<rectangle x1="-1.3159" y1="-0.7058" x2="1.3359" y2="-0.6875" layer="200"/>
<rectangle x1="1.6468" y1="-0.7058" x2="2.0491" y2="-0.6875" layer="200"/>
<rectangle x1="-1.9925" y1="-0.6875" x2="-1.6268" y2="-0.6692" layer="200"/>
<rectangle x1="-1.3159" y1="-0.6875" x2="1.3359" y2="-0.6692" layer="200"/>
<rectangle x1="1.6468" y1="-0.6875" x2="2.0491" y2="-0.6692" layer="200"/>
<rectangle x1="-1.956" y1="-0.6692" x2="-1.6451" y2="-0.6509" layer="200"/>
<rectangle x1="-1.3159" y1="-0.6692" x2="1.3359" y2="-0.6509" layer="200"/>
<rectangle x1="1.6468" y1="-0.6692" x2="1.9577" y2="-0.6509" layer="200"/>
<rectangle x1="1.9942" y1="-0.6692" x2="2.0491" y2="-0.6509" layer="200"/>
<rectangle x1="-1.8462" y1="-0.6509" x2="-1.7365" y2="-0.6327" layer="200"/>
<rectangle x1="-1.3159" y1="-0.6509" x2="1.3359" y2="-0.6327" layer="200"/>
<rectangle x1="1.6833" y1="-0.6509" x2="1.7016" y2="-0.6327" layer="200"/>
<rectangle x1="1.7199" y1="-0.6509" x2="1.7748" y2="-0.6327" layer="200"/>
<rectangle x1="1.8662" y1="-0.6509" x2="1.9211" y2="-0.6327" layer="200"/>
<rectangle x1="-1.3159" y1="-0.6327" x2="1.3359" y2="-0.6144" layer="200"/>
<rectangle x1="-1.3159" y1="-0.6144" x2="1.3359" y2="-0.5961" layer="200"/>
<rectangle x1="-1.3159" y1="-0.5961" x2="1.3359" y2="-0.5778" layer="200"/>
<rectangle x1="-1.3159" y1="-0.5778" x2="1.3359" y2="-0.5595" layer="200"/>
<rectangle x1="-1.3159" y1="-0.5595" x2="1.3359" y2="-0.5412" layer="200"/>
<rectangle x1="-1.3159" y1="-0.5412" x2="1.3359" y2="-0.5229" layer="200"/>
<rectangle x1="-1.3159" y1="-0.5229" x2="1.3359" y2="-0.5046" layer="200"/>
<rectangle x1="-1.3159" y1="-0.5046" x2="1.3359" y2="-0.4864" layer="200"/>
<rectangle x1="-1.3159" y1="-0.4864" x2="1.3359" y2="-0.4681" layer="200"/>
<rectangle x1="-1.3159" y1="-0.4681" x2="1.3359" y2="-0.4498" layer="200"/>
<rectangle x1="-1.3159" y1="-0.4498" x2="1.3359" y2="-0.4315" layer="200"/>
<rectangle x1="-1.3159" y1="-0.4315" x2="1.3359" y2="-0.4132" layer="200"/>
<rectangle x1="-1.3159" y1="-0.4132" x2="1.3359" y2="-0.3949" layer="200"/>
<rectangle x1="-1.3159" y1="-0.3949" x2="1.3359" y2="-0.3766" layer="200"/>
<rectangle x1="-1.9194" y1="-0.3766" x2="-1.6268" y2="-0.3583" layer="200"/>
<rectangle x1="-1.3159" y1="-0.3766" x2="1.3359" y2="-0.3583" layer="200"/>
<rectangle x1="1.6651" y1="-0.3766" x2="1.9394" y2="-0.3583" layer="200"/>
<rectangle x1="1.976" y1="-0.3766" x2="1.9942" y2="-0.3583" layer="200"/>
<rectangle x1="-1.9743" y1="-0.3583" x2="-1.6268" y2="-0.34" layer="200"/>
<rectangle x1="-1.3159" y1="-0.3583" x2="1.3359" y2="-0.34" layer="200"/>
<rectangle x1="1.6468" y1="-0.3583" x2="2.0125" y2="-0.34" layer="200"/>
<rectangle x1="-1.9925" y1="-0.34" x2="-1.6268" y2="-0.3218" layer="200"/>
<rectangle x1="-1.3159" y1="-0.34" x2="1.3359" y2="-0.3218" layer="200"/>
<rectangle x1="1.6468" y1="-0.34" x2="2.0491" y2="-0.3218" layer="200"/>
<rectangle x1="-1.9925" y1="-0.3218" x2="-1.6268" y2="-0.3035" layer="200"/>
<rectangle x1="-1.3159" y1="-0.3218" x2="1.3359" y2="-0.3035" layer="200"/>
<rectangle x1="1.6468" y1="-0.3218" x2="2.0491" y2="-0.3035" layer="200"/>
<rectangle x1="-1.9925" y1="-0.3035" x2="-1.6268" y2="-0.2852" layer="200"/>
<rectangle x1="-1.3159" y1="-0.3035" x2="1.3359" y2="-0.2852" layer="200"/>
<rectangle x1="1.6285" y1="-0.3035" x2="2.0491" y2="-0.2852" layer="200"/>
<rectangle x1="-1.9925" y1="-0.2852" x2="-1.6268" y2="-0.2669" layer="200"/>
<rectangle x1="-1.3159" y1="-0.2852" x2="1.3359" y2="-0.2669" layer="200"/>
<rectangle x1="1.6468" y1="-0.2852" x2="2.0308" y2="-0.2669" layer="200"/>
<rectangle x1="-1.9925" y1="-0.2669" x2="-1.6268" y2="-0.2486" layer="200"/>
<rectangle x1="-1.3159" y1="-0.2669" x2="1.3359" y2="-0.2486" layer="200"/>
<rectangle x1="1.6468" y1="-0.2669" x2="2.0308" y2="-0.2486" layer="200"/>
<rectangle x1="-1.9925" y1="-0.2486" x2="-1.6268" y2="-0.2303" layer="200"/>
<rectangle x1="-1.3159" y1="-0.2486" x2="1.3359" y2="-0.2303" layer="200"/>
<rectangle x1="1.6285" y1="-0.2486" x2="2.0491" y2="-0.2303" layer="200"/>
<rectangle x1="-1.9743" y1="-0.2303" x2="-1.6268" y2="-0.212" layer="200"/>
<rectangle x1="-1.3159" y1="-0.2303" x2="1.3359" y2="-0.212" layer="200"/>
<rectangle x1="1.6285" y1="-0.2303" x2="2.0491" y2="-0.212" layer="200"/>
<rectangle x1="-1.9743" y1="-0.212" x2="-1.6268" y2="-0.1937" layer="200"/>
<rectangle x1="-1.3159" y1="-0.212" x2="1.3359" y2="-0.1937" layer="200"/>
<rectangle x1="1.6285" y1="-0.212" x2="2.0491" y2="-0.1937" layer="200"/>
<rectangle x1="-1.9925" y1="-0.1937" x2="-1.6268" y2="-0.1755" layer="200"/>
<rectangle x1="-1.3159" y1="-0.1937" x2="1.3359" y2="-0.1755" layer="200"/>
<rectangle x1="1.6468" y1="-0.1937" x2="2.0491" y2="-0.1755" layer="200"/>
<rectangle x1="-1.9743" y1="-0.1755" x2="-1.6268" y2="-0.1572" layer="200"/>
<rectangle x1="-1.3159" y1="-0.1755" x2="1.3359" y2="-0.1572" layer="200"/>
<rectangle x1="1.6468" y1="-0.1755" x2="2.0491" y2="-0.1572" layer="200"/>
<rectangle x1="-1.9011" y1="-0.1572" x2="-1.6634" y2="-0.1389" layer="200"/>
<rectangle x1="-1.3159" y1="-0.1572" x2="1.3359" y2="-0.1389" layer="200"/>
<rectangle x1="1.7016" y1="-0.1572" x2="1.9394" y2="-0.1389" layer="200"/>
<rectangle x1="1.9942" y1="-0.1572" x2="2.0491" y2="-0.1389" layer="200"/>
<rectangle x1="-1.3159" y1="-0.1389" x2="1.3359" y2="-0.1206" layer="200"/>
<rectangle x1="-1.3159" y1="-0.1206" x2="1.3359" y2="-0.1023" layer="200"/>
<rectangle x1="2.0308" y1="-0.1206" x2="2.0491" y2="-0.1023" layer="200"/>
<rectangle x1="-1.3159" y1="-0.1023" x2="1.3359" y2="-0.084" layer="200"/>
<rectangle x1="2.0308" y1="-0.1023" x2="2.0491" y2="-0.084" layer="200"/>
<rectangle x1="-1.3159" y1="-0.084" x2="1.3359" y2="-0.0657" layer="200"/>
<rectangle x1="2.0308" y1="-0.084" x2="2.0491" y2="-0.0657" layer="200"/>
<rectangle x1="-1.3159" y1="-0.0657" x2="1.3359" y2="-0.0474" layer="200"/>
<rectangle x1="-1.3159" y1="-0.0474" x2="1.3176" y2="-0.0292" layer="200"/>
<rectangle x1="-1.3159" y1="-0.0292" x2="1.3176" y2="-0.0109" layer="200"/>
<rectangle x1="-1.3159" y1="-0.0109" x2="1.3176" y2="0.0074" layer="200"/>
<rectangle x1="-1.3159" y1="0.0074" x2="1.3176" y2="0.0257" layer="200"/>
<rectangle x1="2.0308" y1="0.0074" x2="2.0491" y2="0.0257" layer="200"/>
<rectangle x1="-1.3159" y1="0.0257" x2="1.3176" y2="0.044" layer="200"/>
<rectangle x1="-1.3159" y1="0.044" x2="1.3176" y2="0.0623" layer="200"/>
<rectangle x1="-1.3159" y1="0.0623" x2="1.3176" y2="0.0806" layer="200"/>
<rectangle x1="-1.3159" y1="0.0806" x2="1.3176" y2="0.0989" layer="200"/>
<rectangle x1="-1.3159" y1="0.0989" x2="1.3359" y2="0.1172" layer="200"/>
<rectangle x1="-1.9011" y1="0.1172" x2="-1.6451" y2="0.1354" layer="200"/>
<rectangle x1="-1.3159" y1="0.1172" x2="1.3359" y2="0.1354" layer="200"/>
<rectangle x1="1.6833" y1="0.1172" x2="1.7199" y2="0.1354" layer="200"/>
<rectangle x1="1.7382" y1="0.1172" x2="1.8662" y2="0.1354" layer="200"/>
<rectangle x1="1.8845" y1="0.1172" x2="1.9211" y2="0.1354" layer="200"/>
<rectangle x1="-1.9743" y1="0.1354" x2="-1.6268" y2="0.1537" layer="200"/>
<rectangle x1="-1.3159" y1="0.1354" x2="1.3359" y2="0.1537" layer="200"/>
<rectangle x1="1.6468" y1="0.1354" x2="1.9942" y2="0.1537" layer="200"/>
<rectangle x1="-1.9925" y1="0.1537" x2="-1.6268" y2="0.172" layer="200"/>
<rectangle x1="-1.3159" y1="0.1537" x2="1.3359" y2="0.172" layer="200"/>
<rectangle x1="1.6468" y1="0.1537" x2="2.0491" y2="0.172" layer="200"/>
<rectangle x1="-1.9925" y1="0.172" x2="-1.6085" y2="0.1903" layer="200"/>
<rectangle x1="-1.3159" y1="0.172" x2="1.3359" y2="0.1903" layer="200"/>
<rectangle x1="1.6285" y1="0.172" x2="2.0491" y2="0.1903" layer="200"/>
<rectangle x1="-1.9925" y1="0.1903" x2="-1.6085" y2="0.2086" layer="200"/>
<rectangle x1="-1.3159" y1="0.1903" x2="1.3359" y2="0.2086" layer="200"/>
<rectangle x1="1.6285" y1="0.1903" x2="2.0491" y2="0.2086" layer="200"/>
<rectangle x1="-1.9925" y1="0.2086" x2="-1.6085" y2="0.2269" layer="200"/>
<rectangle x1="-1.3159" y1="0.2086" x2="1.3359" y2="0.2269" layer="200"/>
<rectangle x1="1.6285" y1="0.2086" x2="2.0491" y2="0.2269" layer="200"/>
<rectangle x1="-1.9925" y1="0.2269" x2="-1.6085" y2="0.2452" layer="200"/>
<rectangle x1="-1.3159" y1="0.2269" x2="1.3359" y2="0.2452" layer="200"/>
<rectangle x1="1.6285" y1="0.2269" x2="2.0491" y2="0.2452" layer="200"/>
<rectangle x1="-1.9925" y1="0.2452" x2="-1.6085" y2="0.2635" layer="200"/>
<rectangle x1="-1.3159" y1="0.2452" x2="1.3359" y2="0.2635" layer="200"/>
<rectangle x1="1.6285" y1="0.2452" x2="2.0491" y2="0.2635" layer="200"/>
<rectangle x1="-1.9925" y1="0.2635" x2="-1.6085" y2="0.2817" layer="200"/>
<rectangle x1="-1.3159" y1="0.2635" x2="1.3359" y2="0.2817" layer="200"/>
<rectangle x1="1.6285" y1="0.2635" x2="2.0491" y2="0.2817" layer="200"/>
<rectangle x1="-1.9925" y1="0.2817" x2="-1.6268" y2="0.3" layer="200"/>
<rectangle x1="-1.3159" y1="0.2817" x2="1.3359" y2="0.3" layer="200"/>
<rectangle x1="1.6285" y1="0.2817" x2="2.0491" y2="0.3" layer="200"/>
<rectangle x1="-1.9925" y1="0.3" x2="-1.6268" y2="0.3183" layer="200"/>
<rectangle x1="-1.3159" y1="0.3" x2="1.3359" y2="0.3183" layer="200"/>
<rectangle x1="1.6285" y1="0.3" x2="2.0491" y2="0.3183" layer="200"/>
<rectangle x1="-1.9925" y1="0.3183" x2="-1.6268" y2="0.3366" layer="200"/>
<rectangle x1="-1.3159" y1="0.3183" x2="1.3359" y2="0.3366" layer="200"/>
<rectangle x1="1.6468" y1="0.3183" x2="2.0491" y2="0.3366" layer="200"/>
<rectangle x1="-1.9925" y1="0.3366" x2="-1.9377" y2="0.3549" layer="200"/>
<rectangle x1="-1.9194" y1="0.3366" x2="-1.6451" y2="0.3549" layer="200"/>
<rectangle x1="-1.3159" y1="0.3366" x2="1.3359" y2="0.3549" layer="200"/>
<rectangle x1="1.6468" y1="0.3366" x2="1.6651" y2="0.3549" layer="200"/>
<rectangle x1="1.6833" y1="0.3366" x2="1.9211" y2="0.3549" layer="200"/>
<rectangle x1="1.9942" y1="0.3366" x2="2.0491" y2="0.3549" layer="200"/>
<rectangle x1="-1.9925" y1="0.3549" x2="-1.9743" y2="0.3732" layer="200"/>
<rectangle x1="-1.3159" y1="0.3549" x2="1.3359" y2="0.3732" layer="200"/>
<rectangle x1="2.0308" y1="0.3549" x2="2.0491" y2="0.3732" layer="200"/>
<rectangle x1="-1.3159" y1="0.3732" x2="1.3176" y2="0.3915" layer="200"/>
<rectangle x1="-1.3159" y1="0.3915" x2="1.3176" y2="0.4098" layer="200"/>
<rectangle x1="-1.3159" y1="0.4098" x2="1.3176" y2="0.428" layer="200"/>
<rectangle x1="-1.3159" y1="0.428" x2="1.3176" y2="0.4463" layer="200"/>
<rectangle x1="-1.3159" y1="0.4463" x2="1.3176" y2="0.4646" layer="200"/>
<rectangle x1="2.0308" y1="0.4463" x2="2.0491" y2="0.4646" layer="200"/>
<rectangle x1="-1.3159" y1="0.4646" x2="1.3176" y2="0.4829" layer="200"/>
<rectangle x1="2.0308" y1="0.4646" x2="2.0491" y2="0.4829" layer="200"/>
<rectangle x1="-1.3159" y1="0.4829" x2="1.3176" y2="0.5012" layer="200"/>
<rectangle x1="-1.3159" y1="0.5012" x2="1.3176" y2="0.5195" layer="200"/>
<rectangle x1="-1.3159" y1="0.5195" x2="1.3176" y2="0.5378" layer="200"/>
<rectangle x1="-1.3159" y1="0.5378" x2="1.3359" y2="0.5561" layer="200"/>
<rectangle x1="-1.3159" y1="0.5561" x2="1.3359" y2="0.5744" layer="200"/>
<rectangle x1="-1.3159" y1="0.5744" x2="1.3176" y2="0.5926" layer="200"/>
<rectangle x1="-1.3159" y1="0.5926" x2="1.3176" y2="0.6109" layer="200"/>
<rectangle x1="-1.9011" y1="0.6109" x2="-1.6816" y2="0.6292" layer="200"/>
<rectangle x1="-1.3159" y1="0.6109" x2="1.3176" y2="0.6292" layer="200"/>
<rectangle x1="1.7199" y1="0.6109" x2="1.7565" y2="0.6292" layer="200"/>
<rectangle x1="1.7748" y1="0.6109" x2="1.7931" y2="0.6292" layer="200"/>
<rectangle x1="1.8479" y1="0.6109" x2="1.8662" y2="0.6292" layer="200"/>
<rectangle x1="-1.9377" y1="0.6292" x2="-1.6268" y2="0.6475" layer="200"/>
<rectangle x1="-1.3159" y1="0.6292" x2="1.3176" y2="0.6475" layer="200"/>
<rectangle x1="1.6468" y1="0.6292" x2="1.9942" y2="0.6475" layer="200"/>
<rectangle x1="2.0308" y1="0.6292" x2="2.0491" y2="0.6475" layer="200"/>
<rectangle x1="-1.9925" y1="0.6475" x2="-1.6268" y2="0.6658" layer="200"/>
<rectangle x1="-1.3159" y1="0.6475" x2="1.3176" y2="0.6658" layer="200"/>
<rectangle x1="1.6285" y1="0.6475" x2="2.0308" y2="0.6658" layer="200"/>
<rectangle x1="-1.9925" y1="0.6658" x2="-1.6085" y2="0.6841" layer="200"/>
<rectangle x1="-1.3159" y1="0.6658" x2="1.3176" y2="0.6841" layer="200"/>
<rectangle x1="1.6285" y1="0.6658" x2="2.0308" y2="0.6841" layer="200"/>
<rectangle x1="-1.9925" y1="0.6841" x2="-1.6085" y2="0.7024" layer="200"/>
<rectangle x1="-1.3159" y1="0.6841" x2="1.3359" y2="0.7024" layer="200"/>
<rectangle x1="1.6285" y1="0.6841" x2="2.0491" y2="0.7024" layer="200"/>
<rectangle x1="-1.9925" y1="0.7024" x2="-1.6085" y2="0.7207" layer="200"/>
<rectangle x1="-1.3159" y1="0.7024" x2="1.3359" y2="0.7207" layer="200"/>
<rectangle x1="1.6285" y1="0.7024" x2="2.0491" y2="0.7207" layer="200"/>
<rectangle x1="-1.9925" y1="0.7207" x2="-1.6085" y2="0.7389" layer="200"/>
<rectangle x1="-1.3159" y1="0.7207" x2="1.3176" y2="0.7389" layer="200"/>
<rectangle x1="1.6285" y1="0.7207" x2="2.0491" y2="0.7389" layer="200"/>
<rectangle x1="-1.9925" y1="0.7389" x2="-1.6085" y2="0.7572" layer="200"/>
<rectangle x1="-1.3159" y1="0.7389" x2="1.3176" y2="0.7572" layer="200"/>
<rectangle x1="1.6285" y1="0.7389" x2="2.0491" y2="0.7572" layer="200"/>
<rectangle x1="-1.9925" y1="0.7572" x2="-1.6085" y2="0.7755" layer="200"/>
<rectangle x1="-1.3159" y1="0.7572" x2="1.3176" y2="0.7755" layer="200"/>
<rectangle x1="1.6285" y1="0.7572" x2="2.0491" y2="0.7755" layer="200"/>
<rectangle x1="-1.9925" y1="0.7755" x2="-1.6085" y2="0.7938" layer="200"/>
<rectangle x1="-1.3159" y1="0.7755" x2="1.3176" y2="0.7938" layer="200"/>
<rectangle x1="1.6285" y1="0.7755" x2="2.0491" y2="0.7938" layer="200"/>
<rectangle x1="-1.9925" y1="0.7938" x2="-1.6085" y2="0.8121" layer="200"/>
<rectangle x1="-1.2976" y1="0.7938" x2="1.3176" y2="0.8121" layer="200"/>
<rectangle x1="1.6285" y1="0.7938" x2="2.0491" y2="0.8121" layer="200"/>
<rectangle x1="-1.9925" y1="0.8121" x2="-1.6085" y2="0.8304" layer="200"/>
<rectangle x1="-1.3159" y1="0.8121" x2="1.3176" y2="0.8304" layer="200"/>
<rectangle x1="1.6468" y1="0.8121" x2="2.0491" y2="0.8304" layer="200"/>
<rectangle x1="-1.9925" y1="0.8304" x2="-1.6268" y2="0.8487" layer="200"/>
<rectangle x1="-1.3159" y1="0.8304" x2="1.3359" y2="0.8487" layer="200"/>
<rectangle x1="1.6651" y1="0.8304" x2="2.0491" y2="0.8487" layer="200"/>
<rectangle x1="-1.9925" y1="0.8487" x2="-1.956" y2="0.867" layer="200"/>
<rectangle x1="-1.8462" y1="0.8487" x2="-1.828" y2="0.867" layer="200"/>
<rectangle x1="-1.2976" y1="0.8487" x2="1.3176" y2="0.867" layer="200"/>
<rectangle x1="1.8114" y1="0.8487" x2="1.8296" y2="0.867" layer="200"/>
<rectangle x1="2.0125" y1="0.8487" x2="2.0491" y2="0.867" layer="200"/>
<rectangle x1="-1.9925" y1="0.867" x2="-1.9743" y2="0.8852" layer="200"/>
<rectangle x1="-1.2976" y1="0.867" x2="1.3176" y2="0.8852" layer="200"/>
<rectangle x1="2.0308" y1="0.867" x2="2.0491" y2="0.8852" layer="200"/>
<rectangle x1="-1.2976" y1="0.8852" x2="1.3176" y2="0.9035" layer="200"/>
<rectangle x1="-1.3159" y1="0.9035" x2="1.3176" y2="0.9218" layer="200"/>
<rectangle x1="-1.3159" y1="0.9218" x2="1.3176" y2="0.9401" layer="200"/>
<rectangle x1="-1.2976" y1="0.9401" x2="1.3176" y2="0.9584" layer="200"/>
<rectangle x1="2.0308" y1="0.9401" x2="2.0491" y2="0.9584" layer="200"/>
<rectangle x1="-1.2976" y1="0.9584" x2="1.3176" y2="0.9767" layer="200"/>
<rectangle x1="2.0308" y1="0.9584" x2="2.0491" y2="0.9767" layer="200"/>
<rectangle x1="-1.2976" y1="0.9767" x2="1.3359" y2="0.995" layer="200"/>
<rectangle x1="2.0308" y1="0.9767" x2="2.0491" y2="0.995" layer="200"/>
<rectangle x1="-1.2976" y1="0.995" x2="1.3359" y2="1.0133" layer="200"/>
<rectangle x1="2.0308" y1="0.995" x2="2.0491" y2="1.0133" layer="200"/>
<rectangle x1="-1.2976" y1="1.0133" x2="1.3176" y2="1.0316" layer="200"/>
<rectangle x1="2.0308" y1="1.0133" x2="2.0491" y2="1.0316" layer="200"/>
<rectangle x1="-1.2793" y1="1.0316" x2="1.3176" y2="1.0498" layer="200"/>
<rectangle x1="2.0308" y1="1.0316" x2="2.0491" y2="1.0498" layer="200"/>
<rectangle x1="-1.2793" y1="1.0498" x2="1.3176" y2="1.0681" layer="200"/>
<rectangle x1="2.0308" y1="1.0498" x2="2.0491" y2="1.0681" layer="200"/>
<rectangle x1="-1.261" y1="1.0681" x2="1.3176" y2="1.0864" layer="200"/>
<rectangle x1="2.0308" y1="1.0681" x2="2.0491" y2="1.0864" layer="200"/>
<rectangle x1="-1.2427" y1="1.0864" x2="1.3176" y2="1.1047" layer="200"/>
<rectangle x1="2.0308" y1="1.0864" x2="2.0491" y2="1.1047" layer="200"/>
<rectangle x1="-1.828" y1="1.1047" x2="-1.6999" y2="1.123" layer="200"/>
<rectangle x1="-1.2244" y1="1.1047" x2="1.3176" y2="1.123" layer="200"/>
<rectangle x1="1.7748" y1="1.1047" x2="1.8845" y2="1.123" layer="200"/>
<rectangle x1="2.0308" y1="1.1047" x2="2.0491" y2="1.123" layer="200"/>
<rectangle x1="-1.9743" y1="1.123" x2="-1.6268" y2="1.1413" layer="200"/>
<rectangle x1="-1.2062" y1="1.123" x2="1.3176" y2="1.1413" layer="200"/>
<rectangle x1="1.6468" y1="1.123" x2="1.9394" y2="1.1413" layer="200"/>
<rectangle x1="2.0308" y1="1.123" x2="2.0491" y2="1.1413" layer="200"/>
<rectangle x1="-1.9925" y1="1.1413" x2="-1.6268" y2="1.1596" layer="200"/>
<rectangle x1="-1.1879" y1="1.1413" x2="1.3176" y2="1.1596" layer="200"/>
<rectangle x1="1.6468" y1="1.1413" x2="1.9942" y2="1.1596" layer="200"/>
<rectangle x1="2.0308" y1="1.1413" x2="2.0491" y2="1.1596" layer="200"/>
<rectangle x1="-1.9925" y1="1.1596" x2="-1.6268" y2="1.1779" layer="200"/>
<rectangle x1="-1.1696" y1="1.1596" x2="1.3176" y2="1.1779" layer="200"/>
<rectangle x1="1.6285" y1="1.1596" x2="2.0125" y2="1.1779" layer="200"/>
<rectangle x1="-1.9925" y1="1.1779" x2="-1.6085" y2="1.1961" layer="200"/>
<rectangle x1="-1.1513" y1="1.1779" x2="1.3176" y2="1.1961" layer="200"/>
<rectangle x1="1.6285" y1="1.1779" x2="2.0491" y2="1.1961" layer="200"/>
<rectangle x1="-1.9925" y1="1.1961" x2="-1.6085" y2="1.2144" layer="200"/>
<rectangle x1="-1.133" y1="1.1961" x2="1.3176" y2="1.2144" layer="200"/>
<rectangle x1="1.6285" y1="1.1961" x2="2.0491" y2="1.2144" layer="200"/>
<rectangle x1="-1.9925" y1="1.2144" x2="-1.6268" y2="1.2327" layer="200"/>
<rectangle x1="-1.1147" y1="1.2144" x2="1.3176" y2="1.2327" layer="200"/>
<rectangle x1="1.6285" y1="1.2144" x2="2.0491" y2="1.2327" layer="200"/>
<rectangle x1="-1.9925" y1="1.2327" x2="-1.6268" y2="1.251" layer="200"/>
<rectangle x1="-1.0964" y1="1.2327" x2="1.3176" y2="1.251" layer="200"/>
<rectangle x1="1.6468" y1="1.2327" x2="2.0491" y2="1.251" layer="200"/>
<rectangle x1="-1.9925" y1="1.251" x2="-1.6268" y2="1.2693" layer="200"/>
<rectangle x1="-1.0599" y1="1.251" x2="1.3176" y2="1.2693" layer="200"/>
<rectangle x1="1.6468" y1="1.251" x2="2.0491" y2="1.2693" layer="200"/>
<rectangle x1="-1.9925" y1="1.2693" x2="-1.6451" y2="1.2876" layer="200"/>
<rectangle x1="-1.0416" y1="1.2693" x2="1.2993" y2="1.2876" layer="200"/>
<rectangle x1="1.6651" y1="1.2693" x2="2.0491" y2="1.2876" layer="200"/>
<rectangle x1="-1.9925" y1="1.2876" x2="-1.6634" y2="1.3059" layer="200"/>
<rectangle x1="-1.005" y1="1.2876" x2="1.281" y2="1.3059" layer="200"/>
<rectangle x1="1.6833" y1="1.2876" x2="2.0491" y2="1.3059" layer="200"/>
<rectangle x1="-1.9925" y1="1.3059" x2="-1.6816" y2="1.3242" layer="200"/>
<rectangle x1="-0.9501" y1="1.3059" x2="1.2079" y2="1.3242" layer="200"/>
<rectangle x1="1.7016" y1="1.3059" x2="2.0491" y2="1.3242" layer="200"/>
<rectangle x1="-1.9925" y1="1.3242" x2="-1.956" y2="1.3424" layer="200"/>
<rectangle x1="-1.9194" y1="1.3242" x2="-1.7182" y2="1.3424" layer="200"/>
<rectangle x1="1.7382" y1="1.3242" x2="1.9394" y2="1.3424" layer="200"/>
<rectangle x1="1.976" y1="1.3242" x2="2.0491" y2="1.3424" layer="200"/>
<rectangle x1="-1.9925" y1="1.3424" x2="-1.9743" y2="1.3607" layer="200"/>
<rectangle x1="2.0125" y1="1.3424" x2="2.0491" y2="1.3607" layer="200"/>
<rectangle x1="2.0308" y1="1.3607" x2="2.0491" y2="1.379" layer="200"/>
<rectangle x1="2.0308" y1="1.379" x2="2.0491" y2="1.3973" layer="200"/>
<rectangle x1="2.0308" y1="1.3973" x2="2.0491" y2="1.4156" layer="200"/>
<rectangle x1="2.0308" y1="1.4156" x2="2.0491" y2="1.4339" layer="200"/>
<rectangle x1="2.0308" y1="1.4339" x2="2.0491" y2="1.4522" layer="200"/>
<rectangle x1="2.0125" y1="1.4522" x2="2.0491" y2="1.4705" layer="200"/>
<rectangle x1="1.9942" y1="1.4705" x2="2.0491" y2="1.4888" layer="200"/>
<rectangle x1="2.0125" y1="1.4888" x2="2.0491" y2="1.507" layer="200"/>
<rectangle x1="2.0125" y1="1.507" x2="2.0491" y2="1.5253" layer="200"/>
<rectangle x1="2.0125" y1="1.5253" x2="2.0491" y2="1.5436" layer="200"/>
<rectangle x1="2.0125" y1="1.5436" x2="2.0491" y2="1.5619" layer="200"/>
<rectangle x1="2.0308" y1="1.5619" x2="2.0491" y2="1.5802" layer="200"/>
<rectangle x1="2.0308" y1="1.5802" x2="2.0491" y2="1.5985" layer="200"/>
<rectangle x1="2.0308" y1="1.5985" x2="2.0491" y2="1.6168" layer="200"/>
<rectangle x1="2.0125" y1="1.6168" x2="2.0491" y2="1.6351" layer="200"/>
<rectangle x1="-1.261" y1="1.6351" x2="-1.1513" y2="1.6533" layer="200"/>
<rectangle x1="-0.8404" y1="1.6351" x2="-0.6392" y2="1.6533" layer="200"/>
<rectangle x1="-0.3466" y1="1.6351" x2="-0.1272" y2="1.6533" layer="200"/>
<rectangle x1="0.1654" y1="1.6351" x2="0.3666" y2="1.6533" layer="200"/>
<rectangle x1="0.6592" y1="1.6351" x2="0.8787" y2="1.6533" layer="200"/>
<rectangle x1="1.1896" y1="1.6351" x2="1.2079" y2="1.6533" layer="200"/>
<rectangle x1="2.0125" y1="1.6351" x2="2.0491" y2="1.6533" layer="200"/>
<rectangle x1="-1.2976" y1="1.6533" x2="-1.133" y2="1.6716" layer="200"/>
<rectangle x1="-0.877" y1="1.6533" x2="-0.6209" y2="1.6716" layer="200"/>
<rectangle x1="-0.3649" y1="1.6533" x2="-0.1272" y2="1.6716" layer="200"/>
<rectangle x1="0.1472" y1="1.6533" x2="0.3849" y2="1.6716" layer="200"/>
<rectangle x1="0.6409" y1="1.6533" x2="0.8787" y2="1.6716" layer="200"/>
<rectangle x1="1.153" y1="1.6533" x2="1.3176" y2="1.6716" layer="200"/>
<rectangle x1="2.0125" y1="1.6533" x2="2.0491" y2="1.6716" layer="200"/>
<rectangle x1="-1.3342" y1="1.6716" x2="-1.1147" y2="1.6899" layer="200"/>
<rectangle x1="-0.877" y1="1.6716" x2="-0.6209" y2="1.6899" layer="200"/>
<rectangle x1="-0.3649" y1="1.6716" x2="-0.1272" y2="1.6899" layer="200"/>
<rectangle x1="0.1289" y1="1.6716" x2="0.3849" y2="1.6899" layer="200"/>
<rectangle x1="0.6409" y1="1.6716" x2="0.8787" y2="1.6899" layer="200"/>
<rectangle x1="1.1347" y1="1.6716" x2="1.3359" y2="1.6899" layer="200"/>
<rectangle x1="2.0125" y1="1.6716" x2="2.0491" y2="1.6899" layer="200"/>
<rectangle x1="-1.3342" y1="1.6899" x2="-1.1147" y2="1.7082" layer="200"/>
<rectangle x1="-0.877" y1="1.6899" x2="-0.6209" y2="1.7082" layer="200"/>
<rectangle x1="-0.3649" y1="1.6899" x2="-0.1089" y2="1.7082" layer="200"/>
<rectangle x1="0.1289" y1="1.6899" x2="0.3849" y2="1.7082" layer="200"/>
<rectangle x1="0.6409" y1="1.6899" x2="0.897" y2="1.7082" layer="200"/>
<rectangle x1="1.1347" y1="1.6899" x2="1.3542" y2="1.7082" layer="200"/>
<rectangle x1="1.9942" y1="1.6899" x2="2.0491" y2="1.7082" layer="200"/>
<rectangle x1="-1.3525" y1="1.7082" x2="-1.1147" y2="1.7265" layer="200"/>
<rectangle x1="-0.877" y1="1.7082" x2="-0.6209" y2="1.7265" layer="200"/>
<rectangle x1="-0.3649" y1="1.7082" x2="-0.1089" y2="1.7265" layer="200"/>
<rectangle x1="0.1289" y1="1.7082" x2="0.3849" y2="1.7265" layer="200"/>
<rectangle x1="0.6409" y1="1.7082" x2="0.897" y2="1.7265" layer="200"/>
<rectangle x1="1.1347" y1="1.7082" x2="1.3724" y2="1.7265" layer="200"/>
<rectangle x1="2.0125" y1="1.7082" x2="2.0491" y2="1.7265" layer="200"/>
<rectangle x1="-1.3708" y1="1.7265" x2="-1.1147" y2="1.7448" layer="200"/>
<rectangle x1="-0.877" y1="1.7265" x2="-0.6209" y2="1.7448" layer="200"/>
<rectangle x1="-0.3649" y1="1.7265" x2="-0.1089" y2="1.7448" layer="200"/>
<rectangle x1="0.1289" y1="1.7265" x2="0.3849" y2="1.7448" layer="200"/>
<rectangle x1="0.6409" y1="1.7265" x2="0.897" y2="1.7448" layer="200"/>
<rectangle x1="1.1347" y1="1.7265" x2="1.3724" y2="1.7448" layer="200"/>
<rectangle x1="2.0125" y1="1.7265" x2="2.0491" y2="1.7448" layer="200"/>
<rectangle x1="-1.3708" y1="1.7448" x2="-1.133" y2="1.7631" layer="200"/>
<rectangle x1="-0.877" y1="1.7448" x2="-0.6209" y2="1.7631" layer="200"/>
<rectangle x1="-0.3649" y1="1.7448" x2="-0.1089" y2="1.7631" layer="200"/>
<rectangle x1="0.1289" y1="1.7448" x2="0.3849" y2="1.7631" layer="200"/>
<rectangle x1="0.6409" y1="1.7448" x2="0.897" y2="1.7631" layer="200"/>
<rectangle x1="1.1347" y1="1.7448" x2="1.3907" y2="1.7631" layer="200"/>
<rectangle x1="2.0125" y1="1.7448" x2="2.0491" y2="1.7631" layer="200"/>
<rectangle x1="-1.3708" y1="1.7631" x2="-1.133" y2="1.7814" layer="200"/>
<rectangle x1="-0.877" y1="1.7631" x2="-0.6209" y2="1.7814" layer="200"/>
<rectangle x1="-0.3649" y1="1.7631" x2="-0.1089" y2="1.7814" layer="200"/>
<rectangle x1="0.1289" y1="1.7631" x2="0.3849" y2="1.7814" layer="200"/>
<rectangle x1="0.6409" y1="1.7631" x2="0.897" y2="1.7814" layer="200"/>
<rectangle x1="1.1347" y1="1.7631" x2="1.3907" y2="1.7814" layer="200"/>
<rectangle x1="2.0125" y1="1.7631" x2="2.0491" y2="1.7814" layer="200"/>
<rectangle x1="-1.3708" y1="1.7814" x2="-1.1147" y2="1.7996" layer="200"/>
<rectangle x1="-0.877" y1="1.7814" x2="-0.6209" y2="1.7996" layer="200"/>
<rectangle x1="-0.3649" y1="1.7814" x2="-0.1089" y2="1.7996" layer="200"/>
<rectangle x1="0.1289" y1="1.7814" x2="0.3849" y2="1.7996" layer="200"/>
<rectangle x1="0.6409" y1="1.7814" x2="0.897" y2="1.7996" layer="200"/>
<rectangle x1="1.1347" y1="1.7814" x2="1.3907" y2="1.7996" layer="200"/>
<rectangle x1="2.0125" y1="1.7814" x2="2.0491" y2="1.7996" layer="200"/>
<rectangle x1="-1.3708" y1="1.7996" x2="-1.1147" y2="1.8179" layer="200"/>
<rectangle x1="-0.877" y1="1.7996" x2="-0.6209" y2="1.8179" layer="200"/>
<rectangle x1="-0.3649" y1="1.7996" x2="-0.1089" y2="1.8179" layer="200"/>
<rectangle x1="0.1289" y1="1.7996" x2="0.3849" y2="1.8179" layer="200"/>
<rectangle x1="0.6409" y1="1.7996" x2="0.897" y2="1.8179" layer="200"/>
<rectangle x1="1.1347" y1="1.7996" x2="1.3907" y2="1.8179" layer="200"/>
<rectangle x1="2.0125" y1="1.7996" x2="2.0491" y2="1.8179" layer="200"/>
<rectangle x1="-1.3708" y1="1.8179" x2="-1.133" y2="1.8362" layer="200"/>
<rectangle x1="-0.877" y1="1.8179" x2="-0.6209" y2="1.8362" layer="200"/>
<rectangle x1="-0.3649" y1="1.8179" x2="-0.1089" y2="1.8362" layer="200"/>
<rectangle x1="0.1289" y1="1.8179" x2="0.3849" y2="1.8362" layer="200"/>
<rectangle x1="0.6409" y1="1.8179" x2="0.897" y2="1.8362" layer="200"/>
<rectangle x1="1.1347" y1="1.8179" x2="1.3907" y2="1.8362" layer="200"/>
<rectangle x1="2.0125" y1="1.8179" x2="2.0491" y2="1.8362" layer="200"/>
<rectangle x1="-1.3708" y1="1.8362" x2="-1.133" y2="1.8545" layer="200"/>
<rectangle x1="-0.877" y1="1.8362" x2="-0.6209" y2="1.8545" layer="200"/>
<rectangle x1="-0.3649" y1="1.8362" x2="-0.1089" y2="1.8545" layer="200"/>
<rectangle x1="0.1289" y1="1.8362" x2="0.3849" y2="1.8545" layer="200"/>
<rectangle x1="0.6409" y1="1.8362" x2="0.8787" y2="1.8545" layer="200"/>
<rectangle x1="1.153" y1="1.8362" x2="1.3907" y2="1.8545" layer="200"/>
<rectangle x1="1.9942" y1="1.8362" x2="2.0491" y2="1.8545" layer="200"/>
<rectangle x1="-1.3708" y1="1.8545" x2="-1.133" y2="1.8728" layer="200"/>
<rectangle x1="-0.877" y1="1.8545" x2="-0.6209" y2="1.8728" layer="200"/>
<rectangle x1="-0.3649" y1="1.8545" x2="-0.1272" y2="1.8728" layer="200"/>
<rectangle x1="0.1472" y1="1.8545" x2="0.3849" y2="1.8728" layer="200"/>
<rectangle x1="0.6409" y1="1.8545" x2="0.8787" y2="1.8728" layer="200"/>
<rectangle x1="1.153" y1="1.8545" x2="1.3907" y2="1.8728" layer="200"/>
<rectangle x1="2.0125" y1="1.8545" x2="2.0491" y2="1.8728" layer="200"/>
<rectangle x1="-1.3708" y1="1.8728" x2="-1.133" y2="1.8911" layer="200"/>
<rectangle x1="-0.8587" y1="1.8728" x2="-0.6392" y2="1.8911" layer="200"/>
<rectangle x1="-0.3649" y1="1.8728" x2="-0.1272" y2="1.8911" layer="200"/>
<rectangle x1="0.1472" y1="1.8728" x2="0.3666" y2="1.8911" layer="200"/>
<rectangle x1="0.6592" y1="1.8728" x2="0.8787" y2="1.8911" layer="200"/>
<rectangle x1="1.153" y1="1.8728" x2="1.3907" y2="1.8911" layer="200"/>
<rectangle x1="2.0125" y1="1.8728" x2="2.0491" y2="1.8911" layer="200"/>
<rectangle x1="-1.3708" y1="1.8911" x2="-1.133" y2="1.9094" layer="200"/>
<rectangle x1="-0.8587" y1="1.8911" x2="-0.6392" y2="1.9094" layer="200"/>
<rectangle x1="-0.3466" y1="1.8911" x2="-0.1272" y2="1.9094" layer="200"/>
<rectangle x1="0.1472" y1="1.8911" x2="0.3666" y2="1.9094" layer="200"/>
<rectangle x1="0.6592" y1="1.8911" x2="0.8787" y2="1.9094" layer="200"/>
<rectangle x1="1.153" y1="1.8911" x2="1.3724" y2="1.9094" layer="200"/>
<rectangle x1="2.0125" y1="1.8911" x2="2.0491" y2="1.9094" layer="200"/>
<rectangle x1="-1.3525" y1="1.9094" x2="-1.1513" y2="1.9277" layer="200"/>
<rectangle x1="-0.8587" y1="1.9094" x2="-0.6392" y2="1.9277" layer="200"/>
<rectangle x1="-0.3466" y1="1.9094" x2="-0.1455" y2="1.9277" layer="200"/>
<rectangle x1="0.1472" y1="1.9094" x2="0.3666" y2="1.9277" layer="200"/>
<rectangle x1="0.6592" y1="1.9094" x2="0.8787" y2="1.9277" layer="200"/>
<rectangle x1="1.1713" y1="1.9094" x2="1.3724" y2="1.9277" layer="200"/>
<rectangle x1="2.0125" y1="1.9094" x2="2.0491" y2="1.9277" layer="200"/>
<rectangle x1="-1.3525" y1="1.9277" x2="-1.1513" y2="1.946" layer="200"/>
<rectangle x1="-0.8587" y1="1.9277" x2="-0.6575" y2="1.946" layer="200"/>
<rectangle x1="-0.3466" y1="1.9277" x2="-0.1455" y2="1.946" layer="200"/>
<rectangle x1="0.1654" y1="1.9277" x2="0.3666" y2="1.946" layer="200"/>
<rectangle x1="0.6592" y1="1.9277" x2="0.8604" y2="1.946" layer="200"/>
<rectangle x1="1.153" y1="1.9277" x2="1.3724" y2="1.946" layer="200"/>
<rectangle x1="2.0125" y1="1.9277" x2="2.0491" y2="1.946" layer="200"/>
<rectangle x1="-1.9925" y1="1.946" x2="-1.9743" y2="1.9642" layer="200"/>
<rectangle x1="-1.9377" y1="1.946" x2="-1.8645" y2="1.9642" layer="200"/>
<rectangle x1="-1.3525" y1="1.946" x2="-1.2427" y2="1.9642" layer="200"/>
<rectangle x1="-0.8404" y1="1.946" x2="-0.6758" y2="1.9642" layer="200"/>
<rectangle x1="-0.3466" y1="1.946" x2="-0.2918" y2="1.9642" layer="200"/>
<rectangle x1="0.1654" y1="1.946" x2="0.2203" y2="1.9642" layer="200"/>
<rectangle x1="0.6044" y1="1.946" x2="0.8238" y2="1.9642" layer="200"/>
<rectangle x1="1.025" y1="1.946" x2="1.0616" y2="1.9642" layer="200"/>
<rectangle x1="1.1713" y1="1.946" x2="1.281" y2="1.9642" layer="200"/>
<rectangle x1="1.3176" y1="1.946" x2="1.3542" y2="1.9642" layer="200"/>
<rectangle x1="1.7931" y1="1.946" x2="2.0491" y2="1.9642" layer="200"/>
<rectangle x1="-0.8382" y1="0.3302" x2="-0.3556" y2="0.8128" layer="31"/>
<rectangle x1="0.4318" y1="0.3302" x2="0.9144" y2="0.8128" layer="31"/>
<rectangle x1="-0.8255" y1="-0.8763" x2="-0.3429" y2="-0.3937" layer="31"/>
<rectangle x1="0.3937" y1="-0.8763" x2="0.8763" y2="-0.3937" layer="31"/>
<smd name="1" x="-2.0662" y="1.2567" dx="1.016" dy="0.254" layer="1" roundness="100" rot="R180"/>
<smd name="2" x="-2.0662" y="0.7496" dx="1.016" dy="0.254" layer="1" roundness="100" rot="R180"/>
<smd name="3" x="-2.0662" y="0.2475" dx="1.016" dy="0.254" layer="1" roundness="100" rot="R180"/>
<smd name="4" x="-2.0662" y="-0.2875" dx="1.016" dy="0.254" layer="1" roundness="100" rot="R180"/>
<smd name="5" x="-2.0662" y="-0.7921" dx="1.016" dy="0.254" layer="1" roundness="100" rot="R180"/>
<smd name="6" x="-2.0662" y="-1.2967" dx="1.016" dy="0.254" layer="1" roundness="100" rot="R180"/>
<smd name="7" x="-1.2667" y="-2.1216" dx="1.016" dy="0.254" layer="1" roundness="100" rot="R90"/>
<smd name="8" x="-0.7621" y="-2.1216" dx="1.016" dy="0.254" layer="1" roundness="100" rot="R90"/>
<smd name="9" x="-0.2575" y="-2.1216" dx="1.016" dy="0.254" layer="1" roundness="100" rot="R90"/>
<smd name="10" x="0.2775" y="-2.1216" dx="1.016" dy="0.254" layer="1" roundness="100" rot="R90"/>
<smd name="11" x="0.7796" y="-2.1216" dx="1.016" dy="0.254" layer="1" roundness="100" rot="R90"/>
<smd name="12" x="1.2867" y="-2.1216" dx="1.016" dy="0.254" layer="1" roundness="100" rot="R90"/>
<smd name="13" x="2.0862" y="-1.2967" dx="1.016" dy="0.254" layer="1" roundness="100" rot="R180"/>
<smd name="14" x="2.0862" y="-0.7921" dx="1.016" dy="0.254" layer="1" roundness="100" rot="R180"/>
<smd name="15" x="2.0862" y="-0.2875" dx="1.016" dy="0.254" layer="1" roundness="100" rot="R180"/>
<smd name="16" x="2.0862" y="0.2475" dx="1.016" dy="0.254" layer="1" roundness="100" rot="R180"/>
<smd name="17" x="2.0862" y="0.7496" dx="1.016" dy="0.254" layer="1" roundness="100" rot="R180"/>
<smd name="18" x="2.0862" y="1.2567" dx="1.016" dy="0.254" layer="1" roundness="100" rot="R180"/>
<smd name="19" x="1.2867" y="2.0816" dx="1.016" dy="0.254" layer="1" roundness="100" rot="R90"/>
<smd name="20" x="0.7796" y="2.0816" dx="1.016" dy="0.254" layer="1" roundness="100" rot="R90"/>
<smd name="21" x="0.2775" y="2.0816" dx="1.016" dy="0.254" layer="1" roundness="100" rot="R90"/>
<smd name="22" x="-0.2575" y="2.0816" dx="1.016" dy="0.254" layer="1" roundness="100" rot="R90"/>
<smd name="23" x="-0.7621" y="2.0816" dx="1.016" dy="0.254" layer="1" roundness="100" rot="R90"/>
<smd name="24" x="-1.2667" y="2.0816" dx="1.016" dy="0.254" layer="1" roundness="100" rot="R90"/>
<smd name="P$1" x="0.02" y="-0.01" dx="2.6162" dy="2.6162" layer="1" cream="no"/>
<text x="-0.6" y="1" size="0.254" layer="51">Y</text>
<text x="1.1" y="0.4" size="0.254" layer="51">X</text>
<text x="-0.1" y="-0.6" size="0.254" layer="51">Z</text>
<text x="-1.9834" y="-2.1048" size="0.0366" layer="200" font="vector">C:/Documents and Settings/jbartlett/Desktop/mpu-6050.bmp</text>
</package>
</packages>
<symbols>
<symbol name="MPU-6000">
<description>MPU-6000 - 6DOF w/ I2C and SPI interface.</description>
<wire x1="-12.7" y1="10.16" x2="-12.7" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-10.16" x2="12.7" y2="-10.16" width="0.254" layer="94"/>
<wire x1="12.7" y1="-10.16" x2="12.7" y2="10.16" width="0.254" layer="94"/>
<wire x1="12.7" y1="10.16" x2="-12.7" y2="10.16" width="0.254" layer="94"/>
<pin name="VDD" x="-17.78" y="7.62" length="middle"/>
<pin name="INT" x="-17.78" y="5.08" length="middle"/>
<pin name="FSYNC" x="-17.78" y="2.54" length="middle"/>
<pin name="CLKIN" x="-17.78" y="0" length="middle"/>
<pin name="REGOUT" x="-17.78" y="-2.54" length="middle"/>
<pin name="CPOUT" x="-17.78" y="-5.08" length="middle"/>
<pin name="GND" x="-17.78" y="-7.62" length="middle"/>
<pin name="AUXDA" x="17.78" y="-5.08" length="middle" rot="R180"/>
<pin name="AUXCL" x="17.78" y="-2.54" length="middle" rot="R180"/>
<pin name="CS" x="17.78" y="7.62" length="middle" rot="R180"/>
<pin name="SCL/SCLK" x="17.78" y="5.08" length="middle" rot="R180"/>
<pin name="CLKOUT" x="17.78" y="-7.62" length="middle" rot="R180"/>
<pin name="AD0/SDO" x="17.78" y="2.54" length="middle" rot="R180"/>
<text x="-12.7" y="10.16" size="1.778" layer="95">&gt;NAME</text>
<text x="-12.7" y="-12.7" size="1.778" layer="95">&gt;VALUE</text>
<pin name="SDA/SDI" x="17.78" y="0" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MPU-6000" prefix="U">
<description>MPU-6000 - I2C address is 0x68 with AD0 low and 0x69 with AD0 high.</description>
<gates>
<gate name="G$1" symbol="MPU-6000" x="0" y="0"/>
</gates>
<devices>
<device name="QFN-24" package="QFN-24-TESTING">
<connects>
<connect gate="G$1" pin="AD0/SDO" pad="9"/>
<connect gate="G$1" pin="AUXCL" pad="7"/>
<connect gate="G$1" pin="AUXDA" pad="6"/>
<connect gate="G$1" pin="CLKIN" pad="1"/>
<connect gate="G$1" pin="CLKOUT" pad="22"/>
<connect gate="G$1" pin="CPOUT" pad="20"/>
<connect gate="G$1" pin="CS" pad="8"/>
<connect gate="G$1" pin="FSYNC" pad="11"/>
<connect gate="G$1" pin="GND" pad="18"/>
<connect gate="G$1" pin="INT" pad="12"/>
<connect gate="G$1" pin="REGOUT" pad="10"/>
<connect gate="G$1" pin="SCL/SCLK" pad="23"/>
<connect gate="G$1" pin="SDA/SDI" pad="24"/>
<connect gate="G$1" pin="VDD" pad="13"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U2" library="SparkFun-DigitalIC" deviceset="EEPROM-I2C" device="EIAJ"/>
<part name="J1" library="SparkFun-Boards" deviceset="ARDUINO_R3" device="NO_HOLES"/>
<part name="SUPPLY1" library="SparkFun-Aesthetics" deviceset="VCC" device=""/>
<part name="GND1" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="R1" library="SparkFun-Resistors" deviceset="RESISTOR" device="PTH-2W" value="4.7k"/>
<part name="R2" library="SparkFun-Resistors" deviceset="RESISTOR" device="PTH-2W" value="4.7k"/>
<part name="GND2" library="SparkFun-Aesthetics" deviceset="GND" device=""/>
<part name="U1" library="adafruit" deviceset="TXB0104PWR" device=""/>
<part name="U3" library="SparkFun-Sensors" deviceset="MPU-6000" device="QFN-24"/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="SUPPLY2" library="SparkFun-Aesthetics" deviceset="VCC" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U2" gate="G$1" x="106.68" y="96.52"/>
<instance part="J1" gate="G$1" x="63.5" y="78.74"/>
<instance part="SUPPLY1" gate="G$1" x="35.56" y="119.38"/>
<instance part="GND1" gate="1" x="35.56" y="40.64"/>
<instance part="R1" gate="G$1" x="134.62" y="106.68" rot="R90"/>
<instance part="R2" gate="G$1" x="152.4" y="106.68" rot="R90"/>
<instance part="GND2" gate="1" x="129.54" y="99.06" rot="R90"/>
<instance part="U1" gate="G$1" x="104.14" y="66.04" rot="R180"/>
<instance part="U3" gate="G$1" x="157.48" y="66.04"/>
<instance part="GND3" gate="1" x="137.16" y="50.8"/>
<instance part="GND4" gate="1" x="121.92" y="78.74"/>
<instance part="SUPPLY2" gate="G$1" x="86.36" y="45.72"/>
</instances>
<busses>
</busses>
<nets>
<net name="VCC" class="0">
<segment>
<pinref part="SUPPLY1" gate="G$1" pin="VCC"/>
<wire x1="35.56" y1="119.38" x2="35.56" y2="116.84" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="VCC"/>
<wire x1="35.56" y1="116.84" x2="119.38" y2="116.84" width="0.1524" layer="91"/>
<wire x1="119.38" y1="116.84" x2="119.38" y2="101.6" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="119.38" y1="116.84" x2="134.62" y2="116.84" width="0.1524" layer="91"/>
<wire x1="134.62" y1="116.84" x2="134.62" y2="111.76" width="0.1524" layer="91"/>
<junction x="119.38" y="116.84"/>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="134.62" y1="116.84" x2="152.4" y2="116.84" width="0.1524" layer="91"/>
<wire x1="152.4" y1="116.84" x2="152.4" y2="111.76" width="0.1524" layer="91"/>
<junction x="134.62" y="116.84"/>
<pinref part="J1" gate="G$1" pin="5V"/>
<wire x1="50.8" y1="76.2" x2="35.56" y2="76.2" width="0.1524" layer="91"/>
<wire x1="35.56" y1="76.2" x2="35.56" y2="116.84" width="0.1524" layer="91"/>
<junction x="35.56" y="116.84"/>
</segment>
<segment>
<pinref part="SUPPLY2" gate="G$1" pin="VCC"/>
<wire x1="86.36" y1="45.72" x2="86.36" y2="43.18" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="VCCB"/>
<wire x1="101.6" y1="48.26" x2="101.6" y2="43.18" width="0.1524" layer="91"/>
<wire x1="86.36" y1="43.18" x2="101.6" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="A0"/>
<wire x1="93.98" y1="101.6" x2="91.44" y2="101.6" width="0.1524" layer="91"/>
<wire x1="91.44" y1="101.6" x2="91.44" y2="99.06" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="A1"/>
<wire x1="91.44" y1="99.06" x2="93.98" y2="99.06" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="A2"/>
<wire x1="93.98" y1="96.52" x2="91.44" y2="96.52" width="0.1524" layer="91"/>
<wire x1="91.44" y1="96.52" x2="91.44" y2="99.06" width="0.1524" layer="91"/>
<junction x="91.44" y="99.06"/>
<pinref part="U2" gate="G$1" pin="VSS"/>
<wire x1="93.98" y1="93.98" x2="91.44" y2="93.98" width="0.1524" layer="91"/>
<wire x1="91.44" y1="93.98" x2="91.44" y2="96.52" width="0.1524" layer="91"/>
<junction x="91.44" y="96.52"/>
</segment>
</net>
<net name="A4" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="SCL"/>
<wire x1="119.38" y1="96.52" x2="134.62" y2="96.52" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="134.62" y1="96.52" x2="134.62" y2="101.6" width="0.1524" layer="91"/>
<wire x1="134.62" y1="96.52" x2="139.7" y2="96.52" width="0.1524" layer="91"/>
<junction x="134.62" y="96.52"/>
<label x="139.7" y="96.52" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="A4"/>
<wire x1="50.8" y1="91.44" x2="45.72" y2="91.44" width="0.1524" layer="91"/>
<label x="45.72" y="91.44" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="B2"/>
<wire x1="88.9" y1="66.04" x2="86.36" y2="66.04" width="0.1524" layer="91"/>
<label x="86.36" y="66.04" size="1.016" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="A5" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="SDA"/>
<wire x1="119.38" y1="93.98" x2="152.4" y2="93.98" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="152.4" y1="93.98" x2="152.4" y2="101.6" width="0.1524" layer="91"/>
<wire x1="152.4" y1="93.98" x2="160.02" y2="93.98" width="0.1524" layer="91"/>
<junction x="152.4" y="93.98"/>
<label x="160.02" y="93.98" size="1.27" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="A5"/>
<wire x1="50.8" y1="88.9" x2="45.72" y2="88.9" width="0.1524" layer="91"/>
<label x="45.72" y="88.9" size="1.27" layer="95" rot="R180" xref="yes"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="B1"/>
<wire x1="88.9" y1="63.5" x2="86.36" y2="63.5" width="0.1524" layer="91"/>
<label x="86.36" y="63.5" size="1.016" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="GND@2"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="50.8" y1="68.58" x2="35.56" y2="68.58" width="0.1524" layer="91"/>
<wire x1="35.56" y1="68.58" x2="35.56" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="WP"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="119.38" y1="99.06" x2="127" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U3" gate="G$1" pin="GND"/>
<wire x1="139.7" y1="58.42" x2="137.16" y2="58.42" width="0.1524" layer="91"/>
<wire x1="137.16" y1="58.42" x2="137.16" y2="53.34" width="0.1524" layer="91"/>
<pinref part="GND3" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="GND"/>
<pinref part="GND4" gate="1" pin="GND"/>
<wire x1="104.14" y1="81.28" x2="121.92" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="VDD"/>
<wire x1="139.7" y1="73.66" x2="129.54" y2="73.66" width="0.1524" layer="91"/>
<wire x1="129.54" y1="73.66" x2="129.54" y2="43.18" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="VCCA"/>
<wire x1="129.54" y1="43.18" x2="106.68" y2="43.18" width="0.1524" layer="91"/>
<wire x1="106.68" y1="43.18" x2="106.68" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="A1"/>
<wire x1="119.38" y1="63.5" x2="121.92" y2="63.5" width="0.1524" layer="91"/>
<label x="121.92" y="63.5" size="1.016" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="U3" gate="G$1" pin="SDA/SDI"/>
<wire x1="175.26" y1="66.04" x2="177.8" y2="66.04" width="0.1524" layer="91"/>
<label x="177.8" y="66.04" size="1.016" layer="95" xref="yes"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="SCL/SCLK"/>
<wire x1="175.26" y1="71.12" x2="177.8" y2="71.12" width="0.1524" layer="91"/>
<label x="177.8" y="71.12" size="1.016" layer="95" xref="yes"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="A2"/>
<wire x1="119.38" y1="66.04" x2="121.92" y2="66.04" width="0.1524" layer="91"/>
<label x="121.92" y="66.04" size="1.016" layer="95" xref="yes"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
