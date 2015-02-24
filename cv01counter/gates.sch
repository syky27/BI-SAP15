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
        <signal name="XLXN_4" />
        <signal name="p" />
        <signal name="B" />
        <signal name="A" />
        <signal name="q" />
        <signal name="S" />
        <port polarity="Input" name="p" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="A" />
        <port polarity="Output" name="q" />
        <port polarity="Output" name="S" />
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <block symbolname="nand2" name="XLXI_1">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="p" name="I1" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_2">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_3">
            <blockpin signalname="XLXN_2" name="I0" />
            <blockpin signalname="XLXN_1" name="I1" />
            <blockpin signalname="q" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_4">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="p" name="I1" />
            <blockpin signalname="S" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_5">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1696" y="752" name="XLXI_1" orien="R0" />
        <instance x="1712" y="992" name="XLXI_2" orien="R0" />
        <instance x="2144" y="864" name="XLXI_3" orien="R0" />
        <instance x="1664" y="480" name="XLXI_4" orien="R0" />
        <instance x="1040" y="720" name="XLXI_5" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="2048" y1="656" y2="656" x1="1952" />
            <wire x2="2048" y1="656" y2="736" x1="2048" />
            <wire x2="2144" y1="736" y2="736" x1="2048" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="2048" y1="896" y2="896" x1="1968" />
            <wire x2="2048" y1="800" y2="896" x1="2048" />
            <wire x2="2144" y1="800" y2="800" x1="2048" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1472" y1="624" y2="624" x1="1296" />
            <wire x2="1472" y1="624" y2="688" x1="1472" />
            <wire x2="1648" y1="688" y2="688" x1="1472" />
            <wire x2="1696" y1="688" y2="688" x1="1648" />
            <wire x2="1664" y1="416" y2="416" x1="1648" />
            <wire x2="1648" y1="416" y2="688" x1="1648" />
        </branch>
        <branch name="p">
            <wire x2="1632" y1="176" y2="176" x1="960" />
            <wire x2="1632" y1="176" y2="352" x1="1632" />
            <wire x2="1664" y1="352" y2="352" x1="1632" />
            <wire x2="1632" y1="352" y2="624" x1="1632" />
            <wire x2="1696" y1="624" y2="624" x1="1632" />
        </branch>
        <branch name="B">
            <wire x2="960" y1="864" y2="864" x1="592" />
            <wire x2="1712" y1="864" y2="864" x1="960" />
            <wire x2="1040" y1="656" y2="656" x1="960" />
            <wire x2="960" y1="656" y2="864" x1="960" />
        </branch>
        <branch name="A">
            <wire x2="976" y1="576" y2="576" x1="608" />
            <wire x2="976" y1="576" y2="592" x1="976" />
            <wire x2="1040" y1="592" y2="592" x1="976" />
            <wire x2="976" y1="592" y2="928" x1="976" />
            <wire x2="1712" y1="928" y2="928" x1="976" />
        </branch>
        <branch name="q">
            <wire x2="2432" y1="768" y2="768" x1="2400" />
        </branch>
        <iomarker fontsize="28" x="2432" y="768" name="q" orien="R0" />
        <branch name="S">
            <wire x2="1952" y1="384" y2="384" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="1952" y="384" name="S" orien="R0" />
        <iomarker fontsize="28" x="960" y="176" name="p" orien="R180" />
        <iomarker fontsize="28" x="592" y="864" name="B" orien="R180" />
        <iomarker fontsize="28" x="608" y="576" name="A" orien="R180" />
    </sheet>
</drawing>