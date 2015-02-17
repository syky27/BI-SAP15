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
        <signal name="CIN" />
        <signal name="B0" />
        <signal name="A0" />
        <signal name="S0" />
        <signal name="B1" />
        <signal name="A1" />
        <signal name="S1" />
        <signal name="B2" />
        <signal name="A2" />
        <signal name="S2" />
        <signal name="B3" />
        <signal name="A3" />
        <signal name="COUT" />
        <signal name="S3" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <port polarity="Input" name="CIN" />
        <port polarity="Input" name="B0" />
        <port polarity="Input" name="A0" />
        <port polarity="Output" name="S0" />
        <port polarity="Input" name="B1" />
        <port polarity="Input" name="A1" />
        <port polarity="Output" name="S1" />
        <port polarity="Input" name="B2" />
        <port polarity="Input" name="A2" />
        <port polarity="Output" name="S2" />
        <port polarity="Input" name="B3" />
        <port polarity="Input" name="A3" />
        <port polarity="Output" name="COUT" />
        <port polarity="Output" name="S3" />
        <blockdef name="gates">
            <timestamp>2015-2-17T16:27:14</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="gates" name="XLXI_1">
            <blockpin signalname="CIN" name="p" />
            <blockpin signalname="B0" name="B" />
            <blockpin signalname="A0" name="A" />
            <blockpin signalname="XLXN_3" name="q" />
            <blockpin signalname="S0" name="S" />
        </block>
        <block symbolname="gates" name="XLXI_2">
            <blockpin signalname="XLXN_3" name="p" />
            <blockpin signalname="B1" name="B" />
            <blockpin signalname="A1" name="A" />
            <blockpin signalname="XLXN_2" name="q" />
            <blockpin signalname="S1" name="S" />
        </block>
        <block symbolname="gates" name="XLXI_3">
            <blockpin signalname="XLXN_2" name="p" />
            <blockpin signalname="B2" name="B" />
            <blockpin signalname="A2" name="A" />
            <blockpin signalname="XLXN_1" name="q" />
            <blockpin signalname="S2" name="S" />
        </block>
        <block symbolname="gates" name="XLXI_4">
            <blockpin signalname="XLXN_1" name="p" />
            <blockpin signalname="B3" name="B" />
            <blockpin signalname="A3" name="A" />
            <blockpin signalname="COUT" name="q" />
            <blockpin signalname="S3" name="S" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1312" y="1040" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1920" y="1024" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2592" y="1024" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="2592" y1="864" y2="864" x1="2304" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1808" y1="880" y2="880" x1="1696" />
            <wire x2="1808" y1="864" y2="880" x1="1808" />
            <wire x2="1920" y1="864" y2="864" x1="1808" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1296" y1="896" y2="896" x1="1056" />
            <wire x2="1312" y1="880" y2="880" x1="1296" />
            <wire x2="1296" y1="880" y2="896" x1="1296" />
        </branch>
        <branch name="B0">
            <wire x2="608" y1="928" y2="928" x1="592" />
            <wire x2="608" y1="928" y2="960" x1="608" />
            <wire x2="672" y1="960" y2="960" x1="608" />
        </branch>
        <branch name="A0">
            <wire x2="608" y1="1040" y2="1040" x1="592" />
            <wire x2="672" y1="1024" y2="1024" x1="608" />
            <wire x2="608" y1="1024" y2="1040" x1="608" />
        </branch>
        <branch name="B1">
            <wire x2="1312" y1="944" y2="944" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1280" y="944" name="B1" orien="R180" />
        <branch name="A1">
            <wire x2="1312" y1="1008" y2="1008" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1008" name="A1" orien="R180" />
        <branch name="B2">
            <wire x2="1920" y1="928" y2="928" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="1888" y="928" name="B2" orien="R180" />
        <branch name="A2">
            <wire x2="1920" y1="992" y2="992" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="1888" y="992" name="A2" orien="R180" />
        <branch name="S2">
            <wire x2="2320" y1="768" y2="768" x1="1904" />
            <wire x2="2320" y1="768" y2="992" x1="2320" />
            <wire x2="1904" y1="768" y2="1232" x1="1904" />
            <wire x2="2320" y1="1232" y2="1232" x1="1904" />
            <wire x2="2320" y1="992" y2="992" x1="2304" />
        </branch>
        <branch name="B3">
            <wire x2="2592" y1="928" y2="928" x1="2560" />
        </branch>
        <iomarker fontsize="28" x="2560" y="928" name="B3" orien="R180" />
        <branch name="A3">
            <wire x2="2592" y1="992" y2="992" x1="2560" />
        </branch>
        <iomarker fontsize="28" x="2560" y="992" name="A3" orien="R180" />
        <branch name="COUT">
            <wire x2="3008" y1="864" y2="864" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="3008" y="864" name="COUT" orien="R0" />
        <branch name="S3">
            <wire x2="3008" y1="992" y2="992" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="3008" y="992" name="S3" orien="R0" />
        <branch name="CIN">
            <wire x2="624" y1="752" y2="752" x1="576" />
            <wire x2="624" y1="752" y2="896" x1="624" />
            <wire x2="672" y1="896" y2="896" x1="624" />
        </branch>
        <iomarker fontsize="28" x="576" y="752" name="CIN" orien="R180" />
        <iomarker fontsize="28" x="592" y="928" name="B0" orien="R180" />
        <iomarker fontsize="28" x="592" y="1040" name="A0" orien="R180" />
        <instance x="672" y="1056" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1056" y="1264" name="S0" orien="R0" />
        <branch name="S0">
            <wire x2="992" y1="1168" y2="1264" x1="992" />
            <wire x2="1056" y1="1264" y2="1264" x1="992" />
            <wire x2="1072" y1="1168" y2="1168" x1="992" />
            <wire x2="1072" y1="1024" y2="1024" x1="1056" />
            <wire x2="1072" y1="1024" y2="1168" x1="1072" />
        </branch>
        <iomarker fontsize="28" x="1664" y="1200" name="S1" orien="R0" />
        <branch name="S1">
            <wire x2="1600" y1="1104" y2="1200" x1="1600" />
            <wire x2="1664" y1="1200" y2="1200" x1="1600" />
            <wire x2="1712" y1="1104" y2="1104" x1="1600" />
            <wire x2="1712" y1="1008" y2="1008" x1="1696" />
            <wire x2="1712" y1="1008" y2="1104" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="2320" y="1232" name="S2" orien="R0" />
    </sheet>
</drawing>