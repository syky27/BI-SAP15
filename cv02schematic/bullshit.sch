<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="A" />
        <signal name="XLXN_5" />
        <signal name="B" />
        <signal name="C" />
        <signal name="F" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="C" />
        <port polarity="Output" name="F" />
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <blockdef name="and3b2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <block symbolname="and2b1" name="XLXI_1">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_2">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="and3b2" name="XLXI_3">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="A" name="I2" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_4">
            <blockpin signalname="XLXN_3" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_1" name="I2" />
            <blockpin signalname="F" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="464" y="1312" name="XLXI_1" orien="R0" />
        <instance x="480" y="1552" name="XLXI_2" orien="R0" />
        <instance x="480" y="1904" name="XLXI_3" orien="R0" />
        <instance x="1120" y="1600" name="XLXI_4" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1120" y1="1216" y2="1216" x1="720" />
            <wire x2="1120" y1="1216" y2="1408" x1="1120" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="928" y1="1456" y2="1456" x1="736" />
            <wire x2="928" y1="1456" y2="1472" x1="928" />
            <wire x2="1120" y1="1472" y2="1472" x1="928" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1120" y1="1776" y2="1776" x1="736" />
            <wire x2="1120" y1="1536" y2="1776" x1="1120" />
        </branch>
        <branch name="A">
            <wire x2="384" y1="960" y2="1488" x1="384" />
            <wire x2="448" y1="1488" y2="1488" x1="384" />
            <wire x2="480" y1="1488" y2="1488" x1="448" />
            <wire x2="448" y1="1488" y2="1712" x1="448" />
            <wire x2="480" y1="1712" y2="1712" x1="448" />
            <wire x2="464" y1="1248" y2="1248" x1="448" />
            <wire x2="448" y1="1248" y2="1488" x1="448" />
        </branch>
        <branch name="B">
            <wire x2="320" y1="960" y2="1776" x1="320" />
            <wire x2="464" y1="1776" y2="1776" x1="320" />
            <wire x2="480" y1="1776" y2="1776" x1="464" />
            <wire x2="480" y1="1424" y2="1424" x1="464" />
            <wire x2="464" y1="1424" y2="1776" x1="464" />
        </branch>
        <branch name="C">
            <wire x2="224" y1="960" y2="1840" x1="224" />
            <wire x2="432" y1="1840" y2="1840" x1="224" />
            <wire x2="480" y1="1840" y2="1840" x1="432" />
            <wire x2="464" y1="1184" y2="1184" x1="432" />
            <wire x2="432" y1="1184" y2="1840" x1="432" />
        </branch>
        <branch name="F">
            <wire x2="1408" y1="1472" y2="1472" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="1408" y="1472" name="F" orien="R0" />
        <iomarker fontsize="28" x="384" y="960" name="A" orien="R270" />
        <iomarker fontsize="28" x="320" y="960" name="B" orien="R270" />
        <iomarker fontsize="28" x="224" y="960" name="C" orien="R270" />
    </sheet>
</drawing>