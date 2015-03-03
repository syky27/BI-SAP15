<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="D" />
        <signal name="C" />
        <signal name="B" />
        <signal name="A" />
        <signal name="CA" />
        <signal name="CB" />
        <signal name="CC" />
        <signal name="CD" />
        <signal name="CE" />
        <signal name="CF" />
        <signal name="CG" />
        <signal name="DP" />
        <signal name="AN1" />
        <signal name="AN3" />
        <signal name="AN2" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <port polarity="Input" name="D" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="A" />
        <port polarity="Output" name="CA" />
        <port polarity="Output" name="CB" />
        <port polarity="Output" name="CC" />
        <port polarity="Output" name="CD" />
        <port polarity="Output" name="CE" />
        <port polarity="Output" name="CF" />
        <port polarity="Output" name="CG" />
        <port polarity="Output" name="DP" />
        <port polarity="Output" name="AN1" />
        <port polarity="Output" name="AN3" />
        <port polarity="Output" name="AN2" />
        <blockdef name="decoder_7seg">
            <timestamp>2015-3-3T16:40:4</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-336" y2="-336" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="nasobicka">
            <timestamp>2013-2-24T22:46:41</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="decoder_7seg" name="XLXI_1">
            <blockpin signalname="XLXN_21" name="d" />
            <blockpin signalname="XLXN_20" name="c" />
            <blockpin signalname="XLXN_19" name="b" />
            <blockpin signalname="XLXN_18" name="a" />
            <blockpin signalname="CA" name="ca" />
            <blockpin signalname="CB" name="cb" />
            <blockpin signalname="CC" name="cc" />
            <blockpin signalname="CD" name="cd" />
            <blockpin signalname="CE" name="ce" />
            <blockpin signalname="CF" name="cf" />
            <blockpin signalname="CG" name="cg" />
            <blockpin signalname="DP" name="dp" />
        </block>
        <block symbolname="nasobicka" name="XLXI_2">
            <blockpin signalname="D" name="d" />
            <blockpin signalname="C" name="c" />
            <blockpin signalname="B" name="b" />
            <blockpin signalname="A" name="a" />
            <blockpin signalname="XLXN_18" name="outa" />
            <blockpin signalname="XLXN_19" name="outb" />
            <blockpin signalname="XLXN_20" name="outc" />
            <blockpin signalname="XLXN_21" name="outd" />
        </block>
        <block symbolname="vcc" name="XLXI_6">
            <blockpin signalname="AN3" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_7">
            <blockpin signalname="AN2" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_8">
            <blockpin signalname="AN1" name="P" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1888" y="1328" name="XLXI_1" orien="R0">
        </instance>
        <instance x="992" y="1200" name="XLXI_2" orien="R0">
        </instance>
        <branch name="D">
            <wire x2="992" y1="976" y2="976" x1="960" />
        </branch>
        <iomarker fontsize="28" x="960" y="976" name="D" orien="R180" />
        <branch name="C">
            <wire x2="992" y1="1040" y2="1040" x1="960" />
        </branch>
        <iomarker fontsize="28" x="960" y="1040" name="C" orien="R180" />
        <branch name="B">
            <wire x2="992" y1="1104" y2="1104" x1="960" />
        </branch>
        <iomarker fontsize="28" x="960" y="1104" name="B" orien="R180" />
        <branch name="A">
            <wire x2="992" y1="1168" y2="1168" x1="960" />
        </branch>
        <iomarker fontsize="28" x="960" y="1168" name="A" orien="R180" />
        <branch name="CA">
            <wire x2="2304" y1="848" y2="848" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="848" name="CA" orien="R0" />
        <branch name="CB">
            <wire x2="2304" y1="912" y2="912" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="912" name="CB" orien="R0" />
        <branch name="CC">
            <wire x2="2304" y1="976" y2="976" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="976" name="CC" orien="R0" />
        <branch name="CD">
            <wire x2="2304" y1="1040" y2="1040" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="1040" name="CD" orien="R0" />
        <branch name="CE">
            <wire x2="2304" y1="1104" y2="1104" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="1104" name="CE" orien="R0" />
        <branch name="CF">
            <wire x2="2304" y1="1168" y2="1168" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="1168" name="CF" orien="R0" />
        <branch name="CG">
            <wire x2="2304" y1="1232" y2="1232" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="1232" name="CG" orien="R0" />
        <branch name="DP">
            <wire x2="2304" y1="1296" y2="1296" x1="2272" />
        </branch>
        <iomarker fontsize="28" x="2304" y="1296" name="DP" orien="R0" />
        <iomarker fontsize="28" x="2192" y="1408" name="AN1" orien="R0" />
        <iomarker fontsize="28" x="2304" y="1504" name="AN2" orien="R0" />
        <iomarker fontsize="28" x="2304" y="1584" name="AN3" orien="R0" />
        <branch name="AN1">
            <wire x2="912" y1="1456" y2="1472" x1="912" />
            <wire x2="1056" y1="1472" y2="1472" x1="912" />
            <wire x2="1296" y1="1328" y2="1328" x1="1056" />
            <wire x2="1312" y1="1328" y2="1328" x1="1296" />
            <wire x2="1520" y1="1328" y2="1328" x1="1312" />
            <wire x2="1856" y1="1328" y2="1328" x1="1520" />
            <wire x2="1856" y1="1328" y2="1408" x1="1856" />
            <wire x2="2192" y1="1408" y2="1408" x1="1856" />
            <wire x2="1056" y1="1328" y2="1408" x1="1056" />
            <wire x2="1056" y1="1408" y2="1472" x1="1056" />
        </branch>
        <branch name="AN3">
            <wire x2="1376" y1="1584" y2="1584" x1="1264" />
            <wire x2="1600" y1="1584" y2="1584" x1="1376" />
            <wire x2="2304" y1="1584" y2="1584" x1="1600" />
            <wire x2="1264" y1="1584" y2="1728" x1="1264" />
            <wire x2="1264" y1="1728" y2="1744" x1="1264" />
            <wire x2="1328" y1="1744" y2="1744" x1="1264" />
            <wire x2="1328" y1="1728" y2="1744" x1="1328" />
        </branch>
        <branch name="AN2">
            <wire x2="944" y1="1664" y2="1680" x1="944" />
            <wire x2="1040" y1="1680" y2="1680" x1="944" />
            <wire x2="1040" y1="1584" y2="1664" x1="1040" />
            <wire x2="1040" y1="1664" y2="1680" x1="1040" />
            <wire x2="1120" y1="1584" y2="1584" x1="1040" />
            <wire x2="1120" y1="1504" y2="1584" x1="1120" />
            <wire x2="1296" y1="1504" y2="1504" x1="1120" />
            <wire x2="1520" y1="1504" y2="1504" x1="1296" />
            <wire x2="2304" y1="1504" y2="1504" x1="1520" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="1632" y1="976" y2="976" x1="1376" />
            <wire x2="1632" y1="976" y2="1280" x1="1632" />
            <wire x2="1888" y1="1280" y2="1280" x1="1632" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="1616" y1="1040" y2="1040" x1="1376" />
            <wire x2="1616" y1="1040" y2="1136" x1="1616" />
            <wire x2="1888" y1="1136" y2="1136" x1="1616" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1648" y1="1104" y2="1104" x1="1376" />
            <wire x2="1648" y1="992" y2="1104" x1="1648" />
            <wire x2="1888" y1="992" y2="992" x1="1648" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="1600" y1="1168" y2="1168" x1="1376" />
            <wire x2="1600" y1="848" y2="1168" x1="1600" />
            <wire x2="1888" y1="848" y2="848" x1="1600" />
        </branch>
        <instance x="1264" y="1728" name="XLXI_6" orien="R0" />
        <instance x="880" y="1664" name="XLXI_7" orien="R0" />
        <instance x="848" y="1456" name="XLXI_8" orien="R0" />
    </sheet>
</drawing>