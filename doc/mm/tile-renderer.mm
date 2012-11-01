<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1351660884342" ID="ID_450239161" MODIFIED="1351662963974" TEXT="Tile Renderer">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1351660915385" ID="ID_643882199" MODIFIED="1351662963973" POSITION="right" TEXT="Tile Dispatching">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1351661020716" ID="ID_1596844811" MODIFIED="1351662963973" TEXT="How do we efficiently tile the world?">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1351661476657" ID="ID_727888625" MODIFIED="1351662963973" TEXT="Use map offsets">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1351661494160" ID="ID_1022649205" MODIFIED="1351662963972" TEXT="We can do some sort of 2^n offset">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1351661519712" ID="ID_560661739" MODIFIED="1351662963972" TEXT="2^n width / height">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1351661528464" ID="ID_1428580234" MODIFIED="1351662963972" TEXT="Provides intersection of tiles">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1351661532935" ID="ID_1350695053" MODIFIED="1351662963972" TEXT="Heavy in memory though">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1351661465473" ID="ID_1655840975" MODIFIED="1351662963971" TEXT="Hot cache for tiles we&apos;ve seen or will see">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1351661195695" ID="ID_752195567" MODIFIED="1351662963971" TEXT="We want to only draw certain boundaries">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1351661041443" ID="ID_27706351" MODIFIED="1351662963970" POSITION="right" TEXT="Layers">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1351660930390" ID="ID_1598595012" MODIFIED="1351662963970" TEXT="Tiles">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1351660954706" ID="ID_669451499" MODIFIED="1351662963970" TEXT="Image">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1351661804425" ID="ID_1198619552" MODIFIED="1351662963969" TEXT="Sprite based"/>
<node CREATED="1351661807305" ID="ID_1983198899" MODIFIED="1351662963969" TEXT="Animations for tiles"/>
</node>
<node CREATED="1351660960669" ID="ID_1033344694" MODIFIED="1351662963969" TEXT="Bounding box">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1351660965837" ID="ID_311507246" MODIFIED="1351662963969" TEXT="Coordinates">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1351661561855" ID="ID_1730493963" MODIFIED="1351662963969" TEXT="Properties">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1351661566030" ID="ID_1399843243" MODIFIED="1351662963969" TEXT="Event driven?">
<node CREATED="1351661610230" ID="ID_717546130" MODIFIED="1351662963969" TEXT="Unit touches tile"/>
<node CREATED="1351661620814" ID="ID_68935806" MODIFIED="1351662963968" TEXT="Entity based">
<node CREATED="1351661702941" ID="ID_1394621803" MODIFIED="1351662963968" TEXT="Everything is an entity"/>
<node CREATED="1351661709939" ID="ID_1558009214" MODIFIED="1351662963968" TEXT="All entities have basic properties"/>
<node CREATED="1351661718451" ID="ID_318485544" MODIFIED="1351662963968" TEXT="Dynamic cast to other objects"/>
</node>
</node>
<node CREATED="1351661573343" ID="ID_1517678634" MODIFIED="1351662963968" TEXT="Impacts environment"/>
<node CREATED="1351661580263" ID="ID_283595" MODIFIED="1351662963968" TEXT="Impacts players"/>
<node CREATED="1351661594030" ID="ID_1404653690" MODIFIED="1351662963968" TEXT="Physical properties"/>
<node CREATED="1351661598326" ID="ID_1070043358" MODIFIED="1351662963968" TEXT="Interactable properties"/>
</node>
</node>
<node CREATED="1351661146976" ID="ID_628108878" MODIFIED="1351662963968" TEXT="Ordered">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1351661155480" ID="ID_1982875712" MODIFIED="1351662963967" TEXT="Front to back">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1351661160608" ID="ID_1703754151" MODIFIED="1351662963967" TEXT="Back to front">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1351661397803" ID="ID_109342412" MODIFIED="1351662963967" TEXT="Tree based?">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1351661401715" ID="ID_1249989693" MODIFIED="1351662963967" TEXT="Infinite sub-orderings"/>
<node CREATED="1351661411970" ID="ID_1755356894" MODIFIED="1351662963967" TEXT="Layers within layers"/>
<node CREATED="1351661417002" ID="ID_1623101724" MODIFIED="1351662963967" TEXT="Highly customizable"/>
<node CREATED="1351661420730" ID="ID_1315389719" MODIFIED="1351662963967" TEXT="Traverse in-order?"/>
</node>
</node>
<node CREATED="1351661833249" ID="ID_1394254442" MODIFIED="1351662963967" TEXT="Shader properties?">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1351661843232" ID="ID_1584464023" MODIFIED="1351662963967" TEXT="Apply shader to layers">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1351661848887" ID="ID_1911566904" MODIFIED="1351662963966" TEXT="Allows you to easily construct neat effects">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1351661894575" ID="ID_1087818333" MODIFIED="1351662963966" TEXT="Properties">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1351661899983" ID="ID_60760865" MODIFIED="1351662963966" TEXT="Opacity">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1351661902263" ID="ID_1478858948" MODIFIED="1351662963966" TEXT="Pseudo-layers">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1351661908455" ID="ID_22298886" MODIFIED="1351662963966" TEXT="Named">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node CREATED="1351661206439" ID="ID_946131478" MODIFIED="1351662963966" POSITION="left" TEXT="Map">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1351661210855" ID="ID_1400839300" MODIFIED="1351662963965" TEXT="Composed of many tiles">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1351661214959" ID="ID_1890557450" MODIFIED="1351662963965" TEXT="We know our bounding box">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1351661220174" ID="ID_1652633494" MODIFIED="1351662963965" TEXT="Map moves around player">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1351661225583" ID="ID_1186719735" MODIFIED="1351662963965" TEXT="Yes?">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1351661314284" ID="ID_1139129012" MODIFIED="1351662963964" TEXT="Hot cache is important"/>
<node CREATED="1351661319780" ID="ID_1083176497" MODIFIED="1351662963964" TEXT="Always render a look-ahead"/>
</node>
<node CREATED="1351661249590" ID="ID_1828635477" MODIFIED="1351662963964" TEXT="No?">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1351661328684" ID="ID_1248642833" MODIFIED="1351662963964" TEXT="Local-space caching"/>
<node CREATED="1351661362354" ID="ID_1047608974" MODIFIED="1351662963964" TEXT="Compute n-grids around map"/>
</node>
</node>
<node CREATED="1351661927790" ID="ID_1865273508" MODIFIED="1351662963964" TEXT="Map entities?">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1351661935822" ID="ID_1732477128" MODIFIED="1351662963964" TEXT="Triggerable regions">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1351662074098" ID="ID_1273635058" MODIFIED="1351662963963" TEXT="touchable">
<node CREATED="1351662130352" ID="ID_450454509" MODIFIED="1351662963963" TEXT="npc_touchable"/>
<node CREATED="1351662137249" ID="ID_1923953504" MODIFIED="1351662963963" TEXT="player_touchable"/>
<node CREATED="1351662141385" ID="ID_1095639375" MODIFIED="1351662963963" TEXT="entity_touchable"/>
</node>
<node CREATED="1351662083954" ID="ID_939887238" MODIFIED="1351662963963" TEXT="noticeable"/>
<node CREATED="1351662088898" ID="ID_967724630" MODIFIED="1351662963963" TEXT="interactable"/>
</node>
<node CREATED="1351661941462" ID="ID_1437269196" MODIFIED="1351662963963" TEXT="Static objects">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1351661952053" ID="ID_1333868960" MODIFIED="1351662963963" TEXT="Just specialized tiles"/>
<node CREATED="1351662166561" ID="ID_1950066511" MODIFIED="1351662963963" TEXT="Perhaps additional annotation"/>
<node CREATED="1351662175984" ID="ID_1425450868" MODIFIED="1351662963962" TEXT="Can run its own events"/>
</node>
<node CREATED="1351661974765" ID="ID_667636516" MODIFIED="1351662963962" TEXT="Dynamic objects">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1351661978757" ID="ID_1662654420" MODIFIED="1351662963962" TEXT="Scriptable"/>
<node CREATED="1351661980804" ID="ID_981882378" MODIFIED="1351662963962" TEXT="Extended properties"/>
<node CREATED="1351661987237" ID="ID_367749748" MODIFIED="1351662963962" TEXT="Acts like an entity"/>
</node>
</node>
</node>
</node>
</map>
