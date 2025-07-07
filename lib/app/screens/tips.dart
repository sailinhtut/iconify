const Map<String, dynamic> tips = {
  /// Performance Tips
  "Tips 1": """   
  <h1 bis_size="{&quot;x&quot;:20,&quot;y&quot;:20,&quot;w&quot;:1143,&quot;h&quot;:31,&quot;abs_x&quot;:179,&quot;abs_y&quot;:1341}">1. Define Clear Architecture and Document Internal Best Practices 📃</h1>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:68,&quot;w&quot;:1143,&quot;h&quot;:20,&quot;abs_x&quot;:179,&quot;abs_y&quot;:1389}">One of the most important things is bringing all the team members on the same page. Especially when onboarding new team members, questions like these might pop up:</p>

<ul bis_size="{&quot;x&quot;:20,&quot;y&quot;:102,&quot;w&quot;:1143,&quot;h&quot;:83,&quot;abs_x&quot;:179,&quot;abs_y&quot;:1423}">
	<li bis_size="{&quot;x&quot;:60,&quot;y&quot;:102,&quot;w&quot;:1063,&quot;h&quot;:20,&quot;abs_x&quot;:219,&quot;abs_y&quot;:1423}"><em bis_size="{&quot;x&quot;:60,&quot;y&quot;:105,&quot;w&quot;:383,&quot;h&quot;:14,&quot;abs_x&quot;:219,&quot;abs_y&quot;:1426}">&ldquo;I need to update the design system, where in code should I do it?&rdquo;</em></li>
	<li bis_size="{&quot;x&quot;:60,&quot;y&quot;:123,&quot;w&quot;:1063,&quot;h&quot;:20,&quot;abs_x&quot;:219,&quot;abs_y&quot;:1444}"><em bis_size="{&quot;x&quot;:60,&quot;y&quot;:126,&quot;w&quot;:341,&quot;h&quot;:14,&quot;abs_x&quot;:219,&quot;abs_y&quot;:1447}">&ldquo;How do we handle API errors on the business logic layer?&rdquo;</em></li>
	<li bis_size="{&quot;x&quot;:60,&quot;y&quot;:144,&quot;w&quot;:1063,&quot;h&quot;:20,&quot;abs_x&quot;:219,&quot;abs_y&quot;:1465}"><em bis_size="{&quot;x&quot;:60,&quot;y&quot;:147,&quot;w&quot;:376,&quot;h&quot;:14,&quot;abs_x&quot;:219,&quot;abs_y&quot;:1468}">&ldquo;Do we have best practices for conditional rendering of Widgets?&rdquo;</em></li>
	<li bis_size="{&quot;x&quot;:60,&quot;y&quot;:164,&quot;w&quot;:1063,&quot;h&quot;:20,&quot;abs_x&quot;:219,&quot;abs_y&quot;:1485}"><em bis_size="{&quot;x&quot;:60,&quot;y&quot;:168,&quot;w&quot;:286,&quot;h&quot;:14,&quot;abs_x&quot;:219,&quot;abs_y&quot;:1489}">&ldquo;What kind of tests should I write for this feature?&rdquo;</em></li>
</ul>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:198,&quot;w&quot;:1143,&quot;h&quot;:20,&quot;abs_x&quot;:179,&quot;abs_y&quot;:1519}">Ideally most of the questions should be answered by your thorough documentation of the <strong bis_size="{&quot;x&quot;:534,&quot;y&quot;:201,&quot;w&quot;:74,&quot;h&quot;:14,&quot;abs_x&quot;:693,&quot;abs_y&quot;:1522}">architecture</strong> and <strong bis_size="{&quot;x&quot;:638,&quot;y&quot;:201,&quot;w&quot;:87,&quot;h&quot;:14,&quot;abs_x&quot;:797,&quot;abs_y&quot;:1522}">best practices</strong> in your team.</p>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:232,&quot;w&quot;:1143,&quot;h&quot;:20,&quot;abs_x&quot;:179,&quot;abs_y&quot;:1553}">However, If your team is still in a phase without strictly set best-practices and lacking documentation, I highly encourage you to <strong bis_size="{&quot;x&quot;:750,&quot;y&quot;:235,&quot;w&quot;:100,&quot;h&quot;:14,&quot;abs_x&quot;:909,&quot;abs_y&quot;:1556}">try the following</strong>:</p>

<ol bis_size="{&quot;x&quot;:20,&quot;y&quot;:266,&quot;w&quot;:1143,&quot;h&quot;:145,&quot;abs_x&quot;:179,&quot;abs_y&quot;:1587}">
	<li bis_size="{&quot;x&quot;:60,&quot;y&quot;:266,&quot;w&quot;:1063,&quot;h&quot;:20,&quot;abs_x&quot;:219,&quot;abs_y&quot;:1587}">Set up a meeting with your dev team where you discuss all the different parts of the app &mdash;<em bis_size="{&quot;x&quot;:581,&quot;y&quot;:269,&quot;w&quot;:267,&quot;h&quot;:14,&quot;abs_x&quot;:740,&quot;abs_y&quot;:1590}"> from state management to widgets and above</em>.</li>
	<li bis_size="{&quot;x&quot;:60,&quot;y&quot;:287,&quot;w&quot;:1063,&quot;h&quot;:41,&quot;abs_x&quot;:219,&quot;abs_y&quot;:1608}">Analyze, research and finally <strong bis_size="{&quot;x&quot;:229,&quot;y&quot;:290,&quot;w&quot;:195,&quot;h&quot;:14,&quot;abs_x&quot;:388,&quot;abs_y&quot;:1611}">define the first set of guidelines</strong> <em bis_size="{&quot;x&quot;:429,&quot;y&quot;:290,&quot;w&quot;:90,&quot;h&quot;:14,&quot;abs_x&quot;:588,&quot;abs_y&quot;:1611}">(in written form)</em> <strong bis_size="{&quot;x&quot;:523,&quot;y&quot;:290,&quot;w&quot;:36,&quot;h&quot;:14,&quot;abs_x&quot;:682,&quot;abs_y&quot;:1611}">which</strong> you think would <strong bis_size="{&quot;x&quot;:656,&quot;y&quot;:290,&quot;w&quot;:283,&quot;h&quot;:14,&quot;abs_x&quot;:815,&quot;abs_y&quot;:1611}">eliminate most of the insecurities &amp; questions</strong> that <strong bis_size="{&quot;x&quot;:969,&quot;y&quot;:290,&quot;w&quot;:95,&quot;h&quot;:14,&quot;abs_x&quot;:1128,&quot;abs_y&quot;:1611}">keep appearing</strong> within your team.</li>
	<li bis_size="{&quot;x&quot;:60,&quot;y&quot;:328,&quot;w&quot;:1063,&quot;h&quot;:20,&quot;abs_x&quot;:219,&quot;abs_y&quot;:1649}">Try to <strong bis_size="{&quot;x&quot;:96,&quot;y&quot;:331,&quot;w&quot;:20,&quot;h&quot;:14,&quot;abs_x&quot;:255,&quot;abs_y&quot;:1652}">put</strong> the first iteration of guidelines <strong bis_size="{&quot;x&quot;:292,&quot;y&quot;:331,&quot;w&quot;:77,&quot;h&quot;:14,&quot;abs_x&quot;:451,&quot;abs_y&quot;:1652}">into practice</strong> <em bis_size="{&quot;x&quot;:373,&quot;y&quot;:331,&quot;w&quot;:136,&quot;h&quot;:14,&quot;abs_x&quot;:532,&quot;abs_y&quot;:1652}">(e.g. in your next sprint)</em>.</li>
	<li bis_size="{&quot;x&quot;:60,&quot;y&quot;:349,&quot;w&quot;:1063,&quot;h&quot;:20,&quot;abs_x&quot;:219,&quot;abs_y&quot;:1670}">After a while <strong bis_size="{&quot;x&quot;:135,&quot;y&quot;:352,&quot;w&quot;:119,&quot;h&quot;:14,&quot;abs_x&quot;:294,&quot;abs_y&quot;:1673}">observe the results</strong> and talk again with your team about the parts that were useful but also try to find the parts which were too loosely defined or incomplete.</li>
	<li bis_size="{&quot;x&quot;:60,&quot;y&quot;:370,&quot;w&quot;:1063,&quot;h&quot;:41,&quot;abs_x&quot;:219,&quot;abs_y&quot;:1691}"><strong bis_size="{&quot;x&quot;:60,&quot;y&quot;:373,&quot;w&quot;:125,&quot;h&quot;:14,&quot;abs_x&quot;:219,&quot;abs_y&quot;:1694}">Continuously iterate</strong> the documentation as necessary.<br bis_size="{&quot;x&quot;:379,&quot;y&quot;:370,&quot;w&quot;:0,&quot;h&quot;:20,&quot;abs_x&quot;:538,&quot;abs_y&quot;:1691}" />
	Also, don&rsquo;t forget to iterate <em bis_size="{&quot;x&quot;:215,&quot;y&quot;:394,&quot;w&quot;:52,&quot;h&quot;:14,&quot;abs_x&quot;:374,&quot;abs_y&quot;:1715}">(refactor)</em> the parts of code which are problematic in the first place and for which no amount of documentation would shed enough light on.</li>
</ol>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:424,&quot;w&quot;:1143,&quot;h&quot;:41,&quot;abs_x&quot;:179,&quot;abs_y&quot;:1745}"><strong bis_size="{&quot;x&quot;:20,&quot;y&quot;:428,&quot;w&quot;:117,&quot;h&quot;:14,&quot;abs_x&quot;:179,&quot;abs_y&quot;:1749}">Consistency is key</strong>. And <strong bis_size="{&quot;x&quot;:171,&quot;y&quot;:428,&quot;w&quot;:217,&quot;h&quot;:14,&quot;abs_x&quot;:330,&quot;abs_y&quot;:1749}">consistency comes with guidelines</strong>.<br bis_size="{&quot;x&quot;:392,&quot;y&quot;:424,&quot;w&quot;:0,&quot;h&quot;:20,&quot;abs_x&quot;:551,&quot;abs_y&quot;:1745}" />
Find and define your standard best-practices, which will help your team to be confident about the ins and outs of your codebase.</p>

<blockquote bis_size="{&quot;x&quot;:60,&quot;y&quot;:479,&quot;w&quot;:1063,&quot;h&quot;:71,&quot;abs_x&quot;:219,&quot;abs_y&quot;:1800}">
<p bis_size="{&quot;x&quot;:84,&quot;y&quot;:494,&quot;w&quot;:1030,&quot;h&quot;:41,&quot;abs_x&quot;:243,&quot;abs_y&quot;:1815}">TIP: You can use free tools such as <a bis_size="{&quot;x&quot;:288,&quot;y&quot;:497,&quot;w&quot;:46,&quot;h&quot;:15,&quot;abs_x&quot;:447,&quot;abs_y&quot;:1818}" href="https://www.notion.so/" target="_blank"><strong bis_size="{&quot;x&quot;:288,&quot;y&quot;:497,&quot;w&quot;:46,&quot;h&quot;:15,&quot;abs_x&quot;:447,&quot;abs_y&quot;:1818}">Notion</strong></a> to document these best-practices. I am also a huge fan of <strong bis_size="{&quot;x&quot;:669,&quot;y&quot;:497,&quot;w&quot;:159,&quot;h&quot;:15,&quot;abs_x&quot;:828,&quot;abs_y&quot;:1818}">architectural diagrams</strong> &mdash; presenting the architectural parts in a easy-to-digest visual format. One of the nice <strong bis_size="{&quot;x&quot;:313,&quot;y&quot;:518,&quot;w&quot;:107,&quot;h&quot;:15,&quot;abs_x&quot;:472,&quot;abs_y&quot;:1839}">free visual tools</strong> that you could use for diagrams is <a bis_size="{&quot;x&quot;:626,&quot;y&quot;:518,&quot;w&quot;:43,&quot;h&quot;:15,&quot;abs_x&quot;:785,&quot;abs_y&quot;:1839}" href="https://www.figma.com/" target="_blank"><strong bis_size="{&quot;x&quot;:626,&quot;y&quot;:518,&quot;w&quot;:43,&quot;h&quot;:15,&quot;abs_x&quot;:785,&quot;abs_y&quot;:1839}">Figma</strong></a><strong bis_size="{&quot;x&quot;:669,&quot;y&quot;:518,&quot;w&quot;:6,&quot;h&quot;:15,&quot;abs_x&quot;:828,&quot;abs_y&quot;:1839}">/</strong><a bis_size="{&quot;x&quot;:675,&quot;y&quot;:518,&quot;w&quot;:51,&quot;h&quot;:15,&quot;abs_x&quot;:834,&quot;abs_y&quot;:1839}" href="https://www.figma.com/figjam/" target="_blank"><strong bis_size="{&quot;x&quot;:675,&quot;y&quot;:518,&quot;w&quot;:51,&quot;h&quot;:15,&quot;abs_x&quot;:834,&quot;abs_y&quot;:1839}">FigJam</strong></a>.</p>
</blockquote>

<h1 bis_size="{&quot;x&quot;:20,&quot;y&quot;:568,&quot;w&quot;:1143,&quot;h&quot;:31,&quot;abs_x&quot;:179,&quot;abs_y&quot;:1889}">2. Separate Business and UI Logic</h1>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:617,&quot;w&quot;:1143,&quot;h&quot;:399,&quot;abs_x&quot;:179,&quot;abs_y&quot;:1938}"><img alt="" bis_size="{&quot;x&quot;:20,&quot;y&quot;:617,&quot;w&quot;:700,&quot;h&quot;:394,&quot;abs_x&quot;:179,&quot;abs_y&quot;:1938}" src="https://miro.medium.com/max/875/1*-Wn4rc1baVbZqzRNAn4xEA.png" style="height:394px; width:700px" /></p>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:1029,&quot;w&quot;:1143,&quot;h&quot;:20,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2350}">From my experience &mdash; <strong bis_size="{&quot;x&quot;:158,&quot;y&quot;:1032,&quot;w&quot;:109,&quot;h&quot;:14,&quot;abs_x&quot;:317,&quot;abs_y&quot;:2353}">this one is a must</strong>. I dare to say that it&rsquo;s almost impossible to keep widgets clean if you intertwine Business &amp; UI logic.</p>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:1063,&quot;w&quot;:1143,&quot;h&quot;:145,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2384}"><img alt="" bis_size="{&quot;x&quot;:20,&quot;y&quot;:1063,&quot;w&quot;:700,&quot;h&quot;:140,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2384}" src="https://miro.medium.com/max/875/1*LqNsqh3ipepBLIZpieMK2g.png" style="height:140px; width:700px" /></p>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:1222,&quot;w&quot;:1143,&quot;h&quot;:20,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2543}">If business logic is laying around in your widgets and your app is growing &rarr; it&rsquo;s time to find a state management solution! :)</p>

<h2 bis_size="{&quot;x&quot;:20,&quot;y&quot;:1259,&quot;w&quot;:1143,&quot;h&quot;:23,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2580}">Benefits of Separation:</h2>

<ul bis_size="{&quot;x&quot;:20,&quot;y&quot;:1298,&quot;w&quot;:1143,&quot;h&quot;:83,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2619}">
	<li bis_size="{&quot;x&quot;:60,&quot;y&quot;:1298,&quot;w&quot;:1063,&quot;h&quot;:20,&quot;abs_x&quot;:219,&quot;abs_y&quot;:2619}">makes it <strong bis_size="{&quot;x&quot;:112,&quot;y&quot;:1301,&quot;w&quot;:71,&quot;h&quot;:14,&quot;abs_x&quot;:271,&quot;abs_y&quot;:2622}">easy to test</strong> both UI &amp; business logic layers <strong bis_size="{&quot;x&quot;:368,&quot;y&quot;:1301,&quot;w&quot;:64,&quot;h&quot;:14,&quot;abs_x&quot;:527,&quot;abs_y&quot;:2622}">separately</strong></li>
	<li bis_size="{&quot;x&quot;:60,&quot;y&quot;:1319,&quot;w&quot;:1063,&quot;h&quot;:20,&quot;abs_x&quot;:219,&quot;abs_y&quot;:2640}">much <strong bis_size="{&quot;x&quot;:95,&quot;y&quot;:1322,&quot;w&quot;:109,&quot;h&quot;:14,&quot;abs_x&quot;:254,&quot;abs_y&quot;:2643}">easier refactoring</strong></li>
	<li bis_size="{&quot;x&quot;:60,&quot;y&quot;:1340,&quot;w&quot;:1063,&quot;h&quot;:20,&quot;abs_x&quot;:219,&quot;abs_y&quot;:2661}"><strong bis_size="{&quot;x&quot;:60,&quot;y&quot;:1343,&quot;w&quot;:105,&quot;h&quot;:14,&quot;abs_x&quot;:219,&quot;abs_y&quot;:2664}">faster debugging</strong></li>
	<li bis_size="{&quot;x&quot;:60,&quot;y&quot;:1361,&quot;w&quot;:1063,&quot;h&quot;:20,&quot;abs_x&quot;:219,&quot;abs_y&quot;:2682}"><strong bis_size="{&quot;x&quot;:60,&quot;y&quot;:1364,&quot;w&quot;:234,&quot;h&quot;:14,&quot;abs_x&quot;:219,&quot;abs_y&quot;:2685}">faster implementation of new features</strong></li>
</ul>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:1394,&quot;w&quot;:1143,&quot;h&quot;:83,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2715}">Based on my personal experience, I can highly recommend the <a bis_size="{&quot;x&quot;:387,&quot;y&quot;:1398,&quot;w&quot;:210,&quot;h&quot;:14,&quot;abs_x&quot;:546,&quot;abs_y&quot;:2719}" href="https://pub.dev/packages/bloc" target="_blank"><strong bis_size="{&quot;x&quot;:387,&quot;y&quot;:1398,&quot;w&quot;:210,&quot;h&quot;:14,&quot;abs_x&quot;:546,&quot;abs_y&quot;:2719}">BLOC state management package</strong></a>. It&rsquo;s mature and flexible enough so it&rsquo;s suitable for almost every use-case. If you&rsquo;re afraid of the possible boilerplate code <em bis_size="{&quot;x&quot;:166,&quot;y&quot;:1418,&quot;w&quot;:144,&quot;h&quot;:14,&quot;abs_x&quot;:325,&quot;abs_y&quot;:2739}">(that you&rsquo;ve heard about)</em> which comes with BLOC &rarr; you can read <a bis_size="{&quot;x&quot;:554,&quot;y&quot;:1418,&quot;w&quot;:316,&quot;h&quot;:14,&quot;abs_x&quot;:713,&quot;abs_y&quot;:2739}" href="https://itnext.io/flutter-blocs-at-scale-2-keeping-blocs-lean-1b659536e3ec" target="_blank"><strong bis_size="{&quot;x&quot;:554,&quot;y&quot;:1418,&quot;w&quot;:316,&quot;h&quot;:14,&quot;abs_x&quot;:713,&quot;abs_y&quot;:2739}">Flutter: BLOCs at Scale | 2 &mdash; Keeping BLOCs Lean</strong></a>, where I discuss how you can utilize concepts like reusable BLOCs, which will lower the amount of boilerplate.<br bis_size="{&quot;x&quot;:362,&quot;y&quot;:1436,&quot;w&quot;:0,&quot;h&quot;:20,&quot;abs_x&quot;:521,&quot;abs_y&quot;:2757}" />
If your app doesn&rsquo;t need all the possibilities of BLOC, you can use <strong bis_size="{&quot;x&quot;:402,&quot;y&quot;:1460,&quot;w&quot;:33,&quot;h&quot;:14,&quot;abs_x&quot;:561,&quot;abs_y&quot;:2781}">Cubit</strong> <em bis_size="{&quot;x&quot;:439,&quot;y&quot;:1460,&quot;w&quot;:180,&quot;h&quot;:14,&quot;abs_x&quot;:598,&quot;abs_y&quot;:2781}">(included in the same package)</em>.</p>

<h1 bis_size="{&quot;x&quot;:20,&quot;y&quot;:1495,&quot;w&quot;:1143,&quot;h&quot;:31,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2816}">3. Limit Widget&rsquo;s Render Function to ~60 Lines of Code</h1>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:1544,&quot;w&quot;:1143,&quot;h&quot;:41,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2865}">Your team will have large problems if your widgets are a giant pile of code. The limit of ~60 Lines of Code is just my favorite personal guideline which forced me and my team to keep widgets well structured and clear.</p>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:1598,&quot;w&quot;:1143,&quot;h&quot;:399,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2919}"><img alt="" bis_size="{&quot;x&quot;:20,&quot;y&quot;:1598,&quot;w&quot;:700,&quot;h&quot;:394,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2919}" src="https://miro.medium.com/max/875/1*95kJS0nUFByQpXujKwKxWQ.png" style="height:394px; width:700px" /></p>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:2011,&quot;w&quot;:1143,&quot;h&quot;:20,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3332}">Thanks to the extraordinary designer Sabina Mowich (<a bis_size="{&quot;x&quot;:331,&quot;y&quot;:2014,&quot;w&quot;:405,&quot;h&quot;:14,&quot;abs_x&quot;:490,&quot;abs_y&quot;:3335}" href="https://www.behance.net/gallery/131947637/Mobile-Banking-UI-design" target="_blank">https://www.behance.net/gallery/131947637/Mobile-Banking-UI-design</a>) for allowing me to use her design 🎨</p>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:2045,&quot;w&quot;:1143,&quot;h&quot;:20,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3366}">The above image shows an example of how we could structure our widgets on the screen-level while keeping the amount of code minimal.</p>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:2078,&quot;w&quot;:1143,&quot;h&quot;:20,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3399}"><strong bis_size="{&quot;x&quot;:20,&quot;y&quot;:2082,&quot;w&quot;:56,&quot;h&quot;:14,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3403}">Logically</strong> <strong bis_size="{&quot;x&quot;:79,&quot;y&quot;:2082,&quot;w&quot;:254,&quot;h&quot;:14,&quot;abs_x&quot;:238,&quot;abs_y&quot;:3403}">dividing the UI into multiple sub-sections</strong> and <strong bis_size="{&quot;x&quot;:363,&quot;y&quot;:2082,&quot;w&quot;:79,&quot;h&quot;:14,&quot;abs_x&quot;:522,&quot;abs_y&quot;:3403}">sub-widgets </strong>helps us achieve a clear and well maintainable set of UI code.</p>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:2112,&quot;w&quot;:1143,&quot;h&quot;:20,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3433}">Still curious why the widget&rsquo;s size can become such a big problem?</p>

<ul bis_size="{&quot;x&quot;:20,&quot;y&quot;:2146,&quot;w&quot;:1143,&quot;h&quot;:83,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3467}">
	<li bis_size="{&quot;x&quot;:60,&quot;y&quot;:2146,&quot;w&quot;:1063,&quot;h&quot;:41,&quot;abs_x&quot;:219,&quot;abs_y&quot;:3467}"><strong bis_size="{&quot;x&quot;:60,&quot;y&quot;:2149,&quot;w&quot;:93,&quot;h&quot;:14,&quot;abs_x&quot;:219,&quot;abs_y&quot;:3470}">code reviewing</strong> only one widget with 300+ lines of code will probably &ldquo;mentally exhaust&rdquo; the reviewer to such a degree, that he might easily forget about his deep-work session afterwards.</li>
	<li bis_size="{&quot;x&quot;:60,&quot;y&quot;:2188,&quot;w&quot;:1063,&quot;h&quot;:20,&quot;abs_x&quot;:219,&quot;abs_y&quot;:3509}">implementing <strong bis_size="{&quot;x&quot;:140,&quot;y&quot;:2191,&quot;w&quot;:304,&quot;h&quot;:14,&quot;abs_x&quot;:299,&quot;abs_y&quot;:3512}">simple UI design changes becomes cumbersome</strong>, when you&rsquo;re 5 minutes straight searching for the right piece of code that needs your edits.</li>
	<li bis_size="{&quot;x&quot;:60,&quot;y&quot;:2208,&quot;w&quot;:1063,&quot;h&quot;:20,&quot;abs_x&quot;:219,&quot;abs_y&quot;:3529}">it <strong bis_size="{&quot;x&quot;:70,&quot;y&quot;:2212,&quot;w&quot;:145,&quot;h&quot;:14,&quot;abs_x&quot;:229,&quot;abs_y&quot;:3533}">discourages reusability</strong> of widgets and <strong bis_size="{&quot;x&quot;:306,&quot;y&quot;:2212,&quot;w&quot;:166,&quot;h&quot;:14,&quot;abs_x&quot;:465,&quot;abs_y&quot;:3533}">promotes code duplication</strong>.</li>
</ul>

<blockquote bis_size="{&quot;x&quot;:60,&quot;y&quot;:2242,&quot;w&quot;:1063,&quot;h&quot;:50,&quot;abs_x&quot;:219,&quot;abs_y&quot;:3563}">
<p bis_size="{&quot;x&quot;:84,&quot;y&quot;:2257,&quot;w&quot;:1030,&quot;h&quot;:20,&quot;abs_x&quot;:243,&quot;abs_y&quot;:3578}">TIP: Having <strong bis_size="{&quot;x&quot;:161,&quot;y&quot;:2260,&quot;w&quot;:268,&quot;h&quot;:15,&quot;abs_x&quot;:320,&quot;abs_y&quot;:3581}">multiple smaller widgets is much better</strong> than having a single large one. Also,<strong bis_size="{&quot;x&quot;:644,&quot;y&quot;:2260,&quot;w&quot;:119,&quot;h&quot;:15,&quot;abs_x&quot;:803,&quot;abs_y&quot;:3581}"> use class widgets</strong> instead of functions (for performance reasons).</p>
</blockquote>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:2306,&quot;w&quot;:1143,&quot;h&quot;:20,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3627}"><strong bis_size="{&quot;x&quot;:20,&quot;y&quot;:2309,&quot;w&quot;:1099,&quot;h&quot;:14,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3630}"><em bis_size="{&quot;x&quot;:20,&quot;y&quot;:2309,&quot;w&quot;:1099,&quot;h&quot;:14,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3630}">NOTE: If you are curious how to write clean widgets and keep your UI code structured, be sure to press the follow button on my profile. I will be soon covering that topic in-depth.</em></strong></p>

<h1 bis_size="{&quot;x&quot;:20,&quot;y&quot;:2344,&quot;w&quot;:1143,&quot;h&quot;:31,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3665}">4. Create API Wrappers around Packages</h1>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:2393,&quot;w&quot;:1143,&quot;h&quot;:41,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3714}">When you read a package&rsquo;s documentation, it usually shows the <strong bis_size="{&quot;x&quot;:393,&quot;y&quot;:2396,&quot;w&quot;:206,&quot;h&quot;:14,&quot;abs_x&quot;:552,&quot;abs_y&quot;:3717}">direct usage of the package&rsquo;s API</strong>. This confuses especially less experienced devs by making them think that<strong bis_size="{&quot;x&quot;:20,&quot;y&quot;:2396,&quot;w&quot;:1094,&quot;h&quot;:35,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3717}"> polluting the codebase</strong> with direct calls of a package&rsquo;s function in random places <strong bis_size="{&quot;x&quot;:414,&quot;y&quot;:2417,&quot;w&quot;:99,&quot;h&quot;:14,&quot;abs_x&quot;:573,&quot;abs_y&quot;:3738}">is good practice</strong>.</p>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:2447,&quot;w&quot;:1143,&quot;h&quot;:20,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3768}">Except that <strong bis_size="{&quot;x&quot;:88,&quot;y&quot;:2451,&quot;w&quot;:86,&quot;h&quot;:14,&quot;abs_x&quot;:247,&quot;abs_y&quot;:3772}">it usually isn&rsquo;t</strong> &mdash; here&rsquo;s why:</p>

<ul bis_size="{&quot;x&quot;:20,&quot;y&quot;:2481,&quot;w&quot;:1143,&quot;h&quot;:62,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3802}">
	<li bis_size="{&quot;x&quot;:60,&quot;y&quot;:2481,&quot;w&quot;:1063,&quot;h&quot;:20,&quot;abs_x&quot;:219,&quot;abs_y&quot;:3802}">imagine you want to <strong bis_size="{&quot;x&quot;:179,&quot;y&quot;:2484,&quot;w&quot;:237,&quot;h&quot;:14,&quot;abs_x&quot;:338,&quot;abs_y&quot;:3805}">replace the package with a similar one</strong> &mdash; now you need to <strong bis_size="{&quot;x&quot;:535,&quot;y&quot;:2484,&quot;w&quot;:122,&quot;h&quot;:14,&quot;abs_x&quot;:694,&quot;abs_y&quot;:3805}">refactor all the calls</strong> across your whole codebase &rarr; a very mundane &amp; bug prone process.</li>
	<li bis_size="{&quot;x&quot;:60,&quot;y&quot;:2502,&quot;w&quot;:1063,&quot;h&quot;:20,&quot;abs_x&quot;:219,&quot;abs_y&quot;:3823}">through time <strong bis_size="{&quot;x&quot;:135,&quot;y&quot;:2505,&quot;w&quot;:261,&quot;h&quot;:14,&quot;abs_x&quot;:294,&quot;abs_y&quot;:3826}">packages are subject to breaking changes</strong>, which means that we need to <strong bis_size="{&quot;x&quot;:576,&quot;y&quot;:2505,&quot;w&quot;:200,&quot;h&quot;:14,&quot;abs_x&quot;:735,&quot;abs_y&quot;:3826}">change them all across the code</strong> <em bis_size="{&quot;x&quot;:781,&quot;y&quot;:2505,&quot;w&quot;:213,&quot;h&quot;:14,&quot;abs_x&quot;:940,&quot;abs_y&quot;:3826}">(similar issues as in the above point).</em></li>
	<li bis_size="{&quot;x&quot;:60,&quot;y&quot;:2523,&quot;w&quot;:1063,&quot;h&quot;:20,&quot;abs_x&quot;:219,&quot;abs_y&quot;:3844}">makes it more difficult to write tests.</li>
</ul>

<blockquote bis_size="{&quot;x&quot;:60,&quot;y&quot;:2557,&quot;w&quot;:1063,&quot;h&quot;:50,&quot;abs_x&quot;:219,&quot;abs_y&quot;:3878}">
<p bis_size="{&quot;x&quot;:84,&quot;y&quot;:2572,&quot;w&quot;:1030,&quot;h&quot;:20,&quot;abs_x&quot;:243,&quot;abs_y&quot;:3893}">Instead you should opt for wrapping service classes, which are flexible and easy to maintain.</p>
</blockquote>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:2620,&quot;w&quot;:1143,&quot;h&quot;:20,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3941}"><strong bis_size="{&quot;x&quot;:20,&quot;y&quot;:2624,&quot;w&quot;:57,&quot;h&quot;:14,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3945}">Example:</strong></p>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:2654,&quot;w&quot;:1143,&quot;h&quot;:42,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3975}">Let&rsquo;s assume we want to implement <strong bis_size="{&quot;x&quot;:229,&quot;y&quot;:2657,&quot;w&quot;:55,&quot;h&quot;:14,&quot;abs_x&quot;:388,&quot;abs_y&quot;:3978}">analytics</strong> in our app. After installing the analytics package of our choice <em bis_size="{&quot;x&quot;:645,&quot;y&quot;:2657,&quot;w&quot;:29,&quot;h&quot;:14,&quot;abs_x&quot;:804,&quot;abs_y&quot;:3978}">(e.g. </em><code bis_size="{&quot;x&quot;:675,&quot;y&quot;:2657,&quot;w&quot;:128,&quot;h&quot;:15,&quot;abs_x&quot;:834,&quot;abs_y&quot;:3978}"><em bis_size="{&quot;x&quot;:675,&quot;y&quot;:2657,&quot;w&quot;:128,&quot;h&quot;:15,&quot;abs_x&quot;:834,&quot;abs_y&quot;:3978}">firebase_analytics</em></code><em bis_size="{&quot;x&quot;:804,&quot;y&quot;:2657,&quot;w&quot;:4,&quot;h&quot;:14,&quot;abs_x&quot;:963,&quot;abs_y&quot;:3978}">)</em>, let&rsquo;s create a <code bis_size="{&quot;x&quot;:892,&quot;y&quot;:2657,&quot;w&quot;:114,&quot;h&quot;:15,&quot;abs_x&quot;:1051,&quot;abs_y&quot;:3978}"><strong bis_size="{&quot;x&quot;:892,&quot;y&quot;:2657,&quot;w&quot;:114,&quot;h&quot;:15,&quot;abs_x&quot;:1051,&quot;abs_y&quot;:3978}">AnalyticsService</strong></code> wrapper service class. This way we can define our own API and <strong bis_size="{&quot;x&quot;:258,&quot;y&quot;:2679,&quot;w&quot;:309,&quot;h&quot;:14,&quot;abs_x&quot;:417,&quot;abs_y&quot;:4000}">stay flexible in regards to future package changes</strong>.</p>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:2709,&quot;w&quot;:1143,&quot;h&quot;:20,&quot;abs_x&quot;:179,&quot;abs_y&quot;:4030}">This class could look something like this:</p>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:2743,&quot;w&quot;:1143,&quot;h&quot;:380,&quot;abs_x&quot;:179,&quot;abs_y&quot;:4064}"><img alt="" bis_size="{&quot;x&quot;:20,&quot;y&quot;:2743,&quot;w&quot;:700,&quot;h&quot;:375,&quot;abs_x&quot;:179,&quot;abs_y&quot;:4064}" src="https://miro.medium.com/max/875/1*VFjAF2dsb4LKXbmNc3Z25g.png" style="height:375px; width:700px" /></p>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:3137,&quot;w&quot;:1143,&quot;h&quot;:20,&quot;abs_x&quot;:179,&quot;abs_y&quot;:4458}">A comparison of the <strong bis_size="{&quot;x&quot;:139,&quot;y&quot;:3140,&quot;w&quot;:171,&quot;h&quot;:14,&quot;abs_x&quot;:298,&quot;abs_y&quot;:4461}">direct usage of the package</strong> VS <strong bis_size="{&quot;x&quot;:335,&quot;y&quot;:3140,&quot;w&quot;:161,&quot;h&quot;:14,&quot;abs_x&quot;:494,&quot;abs_y&quot;:4461}">usage of the service class</strong>:</p>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:3170,&quot;w&quot;:1143,&quot;h&quot;:410,&quot;abs_x&quot;:179,&quot;abs_y&quot;:4491}"><img alt="" bis_size="{&quot;x&quot;:20,&quot;y&quot;:3170,&quot;w&quot;:700,&quot;h&quot;:405,&quot;abs_x&quot;:179,&quot;abs_y&quot;:4491}" src="https://miro.medium.com/max/875/1*gf2-DA8RhdsmvOFy8XMkMw.png" style="height:405px; width:700px" /></p>

<blockquote bis_size="{&quot;x&quot;:60,&quot;y&quot;:3594,&quot;w&quot;:1063,&quot;h&quot;:71,&quot;abs_x&quot;:219,&quot;abs_y&quot;:4915}">
<p bis_size="{&quot;x&quot;:84,&quot;y&quot;:3609,&quot;w&quot;:1030,&quot;h&quot;:41,&quot;abs_x&quot;:243,&quot;abs_y&quot;:4930}">TIP: <strong bis_size="{&quot;x&quot;:113,&quot;y&quot;:3612,&quot;w&quot;:102,&quot;h&quot;:15,&quot;abs_x&quot;:272,&quot;abs_y&quot;:4933}">Loose coupling</strong> delivers obvious benefits in flexibility and extensibility. The caveat of slight overhead (which is boilerplate code) is irrelevant compared to long-term benefits.</p>
</blockquote>

<h1 bis_size="{&quot;x&quot;:20,&quot;y&quot;:3683,&quot;w&quot;:1143,&quot;h&quot;:31,&quot;abs_x&quot;:179,&quot;abs_y&quot;:5004}">5. Automate CI/CD</h1>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:3732,&quot;w&quot;:1143,&quot;h&quot;:401,&quot;abs_x&quot;:179,&quot;abs_y&quot;:5053}"><img alt="" bis_size="{&quot;x&quot;:20,&quot;y&quot;:3732,&quot;w&quot;:700,&quot;h&quot;:396,&quot;abs_x&quot;:179,&quot;abs_y&quot;:5053}" src="https://miro.medium.com/max/875/1*meJBzbKvmCAFzlvCed37Ow.png" style="height:396px; width:700px" /></p>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:4146,&quot;w&quot;:1143,&quot;h&quot;:20,&quot;abs_x&quot;:179,&quot;abs_y&quot;:5467}">Last but not least &mdash; setting up the CI/CD pipeline.</p>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:4180,&quot;w&quot;:1143,&quot;h&quot;:41,&quot;abs_x&quot;:179,&quot;abs_y&quot;:5501}">It&rsquo;s very important to have a nice <em bis_size="{&quot;x&quot;:210,&quot;y&quot;:4183,&quot;w&quot;:224,&quot;h&quot;:14,&quot;abs_x&quot;:369,&quot;abs_y&quot;:5504}">&ldquo;implement-test-merge-deploy-release&rdquo;</em> pipeline set up. While every pipeline might look a little bit different, they all have in common that when one is put into practice<strong bis_size="{&quot;x&quot;:20,&quot;y&quot;:4204,&quot;w&quot;:281,&quot;h&quot;:14,&quot;abs_x&quot;:179,&quot;abs_y&quot;:5525}"> it saves you hours of manual work each week</strong>.</p>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:4235,&quot;w&quot;:1143,&quot;h&quot;:41,&quot;abs_x&quot;:179,&quot;abs_y&quot;:5556}">My current favorite combination of CI/CD tools for Flutter is <strong bis_size="{&quot;x&quot;:361,&quot;y&quot;:4238,&quot;w&quot;:167,&quot;h&quot;:14,&quot;abs_x&quot;:520,&quot;abs_y&quot;:5559}">Github Actions + Fastlane. </strong>This combo enables you to easily design workflows that can run on different branches under different conditions.</p>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:4289,&quot;w&quot;:1143,&quot;h&quot;:20,&quot;abs_x&quot;:179,&quot;abs_y&quot;:5610}"><strong bis_size="{&quot;x&quot;:20,&quot;y&quot;:4292,&quot;w&quot;:57,&quot;h&quot;:14,&quot;abs_x&quot;:179,&quot;abs_y&quot;:5613}">Example:</strong></p>

<ul bis_size="{&quot;x&quot;:20,&quot;y&quot;:4323,&quot;w&quot;:1143,&quot;h&quot;:63,&quot;abs_x&quot;:179,&quot;abs_y&quot;:5644}">
	<li bis_size="{&quot;x&quot;:60,&quot;y&quot;:4323,&quot;w&quot;:1063,&quot;h&quot;:21,&quot;abs_x&quot;:219,&quot;abs_y&quot;:5644}">when you merge a PR <code bis_size="{&quot;x&quot;:192,&quot;y&quot;:4326,&quot;w&quot;:164,&quot;h&quot;:15,&quot;abs_x&quot;:351,&quot;abs_y&quot;:5647}">development &lt;-- feature</code> branch, <strong bis_size="{&quot;x&quot;:407,&quot;y&quot;:4326,&quot;w&quot;:73,&quot;h&quot;:14,&quot;abs_x&quot;:566,&quot;abs_y&quot;:5647}">you can run</strong> dart analyzer / linter, tests, generate docs, etc.</li>
	<li bis_size="{&quot;x&quot;:60,&quot;y&quot;:4344,&quot;w&quot;:1063,&quot;h&quot;:42,&quot;abs_x&quot;:219,&quot;abs_y&quot;:5665}">when you merge a PR <code bis_size="{&quot;x&quot;:192,&quot;y&quot;:4347,&quot;w&quot;:143,&quot;h&quot;:15,&quot;abs_x&quot;:351,&quot;abs_y&quot;:5668}">main &lt;-- development</code> branch, you can <strong bis_size="{&quot;x&quot;:435,&quot;y&quot;:4347,&quot;w&quot;:353,&quot;h&quot;:14,&quot;abs_x&quot;:594,&quot;abs_y&quot;:5668}">run all the steps above, increments build/version number</strong> + <strong bis_size="{&quot;x&quot;:803,&quot;y&quot;:4347,&quot;w&quot;:73,&quot;h&quot;:14,&quot;abs_x&quot;:962,&quot;abs_y&quot;:5668}">run fastlane</strong> which <strong bis_size="{&quot;x&quot;:917,&quot;y&quot;:4347,&quot;w&quot;:38,&quot;h&quot;:14,&quot;abs_x&quot;:1076,&quot;abs_y&quot;:5668}">builds</strong> the release and <strong bis_size="{&quot;x&quot;:60,&quot;y&quot;:4347,&quot;w&quot;:1060,&quot;h&quot;:35,&quot;abs_x&quot;:219,&quot;abs_y&quot;:5668}">deploys an internal release</strong> to both Google Play Store and App Store.</li>
</ul>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:4399,&quot;w&quot;:1143,&quot;h&quot;:20,&quot;abs_x&quot;:179,&quot;abs_y&quot;:5720}"><em bis_size="{&quot;x&quot;:20,&quot;y&quot;:4402,&quot;w&quot;:767,&quot;h&quot;:14,&quot;abs_x&quot;:179,&quot;abs_y&quot;:5723}">All this can finally happen without the pain of doing lots of manual steps under a tight deadline (on a Friday evening). Enjoy your beer </em>🍺🌞</p>
<br>
<i>With ❤ By <a href="https://medium.com/@nickjokic">Nick Jokic</a></i>
  """,

  /// General Tips One
  "Tips 2": """
<p>Developed by Google Flutter is an open-source UI software development kit. There are many Flutter Tips, Tricks, and Techniques for 2021 which will make your development process easy and fun. It is being used to build software from a single codebase for Android, iOS, Linux, Mac, Windows, Google Fuchsia, and the web. If you need to<a href="https://augnitive.com/services/mobile-application-development/?utm_source=Flutter%20tips%20blog&amp;utm_medium=Blog&amp;utm_campaign=flutter%20tips%20tricks%20and%20techniques" target="_blank"><strong> build any mobile application</strong></a> using Flutter you can <a href="https://augnitive.com/contact/?utm_source=Flutter%20tips%20blog&amp;utm_medium=Blog&amp;utm_campaign=flutter%20tips%20tricks%20and%20techniques" target="_blank"><strong>give us a knock</strong></a> or if you are developing yourself here are 10 Quick Flutter Tips, Tricks, and Techniques.&nbsp;</p>

<h3>1. Dismiss Keyboard Using Flutter&nbsp;</h3>

<p>To dismiss Keyboard, we have to set focus on a different node as shown in the example below using the Gesture Detector.</p>

<pre>
<code>GestureDetector(                                                                                                     	
          onTap: () {
                        FocusScope.of(context).requestFocus(FocusNode());
              },
              child: Container(
                   color: Colors.white,
     	          child:  new Column(
                       mainAxisAlignment:  MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                       TextField( ),
                       Text(&quot;Test&quot;),                            	
                 ],
            )
       )
   );
</code></pre>

<h3>2. Add Timer using Flutter</h3>

<p>If you need to execute a piece of code after some time in Flutter you have to use Timer class. Timer class will allow specifying the time which you need to delay the execution and after that time period code will be executed inside the Timer.</p>

<pre>
<code>void periodic() {
Timer.periodic(
    Duration(seconds: 1),
       (Timer time) {
	print(&quot;time: \${time.tick}&quot;);
       if (time.tick == 5) {
    	time.cancel();
    	print(&#39;Timer Cancelled&#39;);
         }
      },

   );

}
</code></pre>

<h3>3. Show Item Separately From ListView Using Flutter</h3>

<p>ListView makes its children scroll. Most of the time, we require a separator to distinguish between every child of ListView. This separator is basically a divider, which can be a line.&nbsp;</p>

<pre>
<code>ListView.separated(
  itemCount: data.length,
  separatorBuilder: (BuildContext context, int index) =&gt; Divider( height: 3, color: Colors.white),
  itemBuilder: (BuildContext context, int index) {
	return Container(
  	height: 150,
  	color: Colors.red,
  	child: Center(
   child: Text(&#39;\${data[index]}&#39;),
),
      );
   }
)
</code></pre>

<h3><strong>4. Create a circle shape image using Flutter</strong></h3>

<p>ClipOval widget clips the child widget in oval or circle shape. We can reshape the child<br />
widget by changing width and height. If width and height are equal the shape will be circular. If the width and height are given differently then the shape will be oval. Let&rsquo;s understand this with the help of an example:</p>

<pre>
<code>ClipOval(
   child: Image.network(
       imgUrl,
       fit: BoxFit.fill,
       width: 190.0,
       height: 190.0,
   ),
);
</code></pre>

<h3><strong>5. Refactor code using Flutter</strong></h3>

<p>When you start your layout and know for sure some UI components will be custom, but you have no time to implement them yet: create dummy Containers:</p>

<pre>
<code>ButtonContainer(child: child).</code></pre>

<p>It serves as a proxy. Later it will be super easy to refactor the code</p>

<h3><strong>6. If Null Operator (??)</strong></h3>

<p>Checks If something is null. If it&rsquo;s not null it returns its own value but if it&rsquo;s null it returns the value after ?? return abc ?? 10; // returns 10 if abc is null else returns its own value.</p>

<p>It also has a shorthand assignment when it&rsquo;s null.</p>

<p>abc ?? = 5&nbsp; // assigns 5 to abc if it&rsquo;s null</p>

<h3><strong>7. Always Use Final Variables In Your Stateless widgets.</strong></h3>

<p>It can sometimes be tempting to instantiate non-final variables in stateless widgets but that&rsquo;s something you should always avoid because stateless widgets are immutable which means that they are not supposed to change even a bit! If you need a non-final variable, consider using a Stateful widget instead!</p>

<h3><strong>8. Set the background image to your Container using Flutter</strong></h3>

<p>Want to set the background image to your Container? And you are using a Stack to do so? There is a better way to achieve this result. You can use decoration to set the image in the container.</p>

<pre>
<code>Container(
  width: double.maxFinite,
  height: double.maxFinite,
  decoration: BoxDecoration(   
    image: DecorationImage(
      image: NetworkImage(&#39;https://bit.ly/2oqNqj9&#39;),
    ),
  ),
  child: Center(
    child: Text(
      &#39;Flutter.dev&#39;,
      style: TextStyle(color: Colors.red),
    ),
  ),
),
</code></pre>

<p>You can provide Images according to your need, also you can use the box decoration properties to provide shape and border.</p>

<h3><strong>9. Knock Out the iPhone Notch with Safe Area Using Flutter</strong></h3>

<p>It&rsquo;s a horrible feeling when some of your content is getting cut by the iPhone X notch. The same could happen in Android. Consider using the<a href="https://api.flutter.dev/flutter/widgets/SafeArea-class.html" target="_blank"> SafeArea widget</a> can keep the pesky notification bars and phone notches from encroaching on your app&rsquo;s UI. It uses a MediaQuery to check the dimensions of the screen and pads its child Widget to match, making sure your app is safe on both iOS and Android!</p>

<h3><strong>10. Write Cleaner Code Using the Spread Operator with Flutter</strong></h3>

<p>The Dart 2.3 introduced a few useful features and one of them I like is the Spread operator. This is very useful when you need conditional UI widgets. Especially when you have nested conditional UI Widget.</p>

<pre>
<code>Stack(
   alignment: Alignment.center,
      children: &lt;Widget&gt;[

 	if (_visible) ...[

      	   spaceAnim(),
      	  //Nested if-else

      	if (_visible) ...[
          	   spaceAnim(),
      	] else ...[
          	   galaxyAnim(),
       	],

 	] else ...[
     	  galaxyAnim(),
     ],
  ],
),
</code></pre>

<p>&nbsp;</p>

<p>Flutter is an absolute lifesaver when it comes to developing eye-catching <a href="https://augnitive.com/services/mobile-application-development/?utm_source=Flutter%20tips%20blog&amp;utm_medium=Blog&amp;utm_campaign=flutter%20tips%20tricks%20and%20techniques" target="_blank"><strong>applications on IOS and android</strong></a>. Here at Augnitive, we have some top tire Flutter developers who have developed a passion for Flutter. If you have any questions or if you are looking for a bit of help don&rsquo;t hesitate to <a href="https://augnitive.com/contact/?utm_source=Flutter%20tips%20blog&amp;utm_medium=Blog&amp;utm_campaign=flutter%20tips%20tricks%20and%20techniques" target="_blank"><strong>get in touch</strong></a>.</p>
<br>
<i>With ❤ By <a href="https://augnitive.com">Mehedi Hasan</a></i>
""",

  /// General Tip 3
  "Tips 3": """
<h1>Fantastic Flutter Tips And Tricks I Have Found Helpful</h1>

<h2>Collection of tips and tricks to boost productivity</h2>

<p><img alt="" src="https://miro.medium.com/max/875/0*th-kvrMQqRDgULn-" style="height:467px; width:700px" /></p>

<p>Photo by <a href="https://unsplash.com/@artplay?utm_source=medium&amp;utm_medium=referral" target="_blank">Maxim Selyuk</a> on <a href="https://unsplash.com?utm_source=medium&amp;utm_medium=referral" target="_blank">Unsplash</a></p>

<p>I used to travel from long and bumpy roads with many signals on the road every day to reach the office. It was taking around 45 minutes to reach. One of my friends at the office lives in the same area as mine and also leaves for office at the same time but he always used to reach 5&ndash;10 minutes before me. 🙁 I thought he would be driving fast enough but when I actually asked him, He revealed the reason and <strong>I was surprised </strong>😯. He told there is a new road opened which avoids most of the signals. And that saved my few minutes every day on commute.</p>

<p>We as a developer can also save some time and boost productivity by knowing some tips and tricks. I have written this article to list down some tips and tricks that I have found during Flutter development. <strong>You might already know some of these 🕶 but I will keep on adding new and interesting ones at the top as I find it.</strong> You can also contribute by writing the tips you know in response so other people can also benefit from it.</p>

<p><em>Do you want to stay updated in Flutter world? Please click on subscribe button to get an email when the new tutorial is published or visit the </em><a href="https://flutterbeads.com/" target="_blank">https://flutterbeads.com</a></p>

<p><img alt="" src="https://miro.medium.com/max/750/1*9BEG-V8Nj_RAm8sEtYdjCg.gif" style="height:260px; width:600px" /></p>

<h1>#① - Flutter logs</h1>

<p>I know we get to see Flutter logs by default but this is something different. There is also a command to log the output of the running flutter app. It&rsquo;s called simple<strong> &rsquo;flutter logs&rsquo;</strong>. Just open the terminal and hit this command.</p>

<p>At this point, you must ask me a question. I am giving you time to think of that question before you read further.</p>

<p>🤔</p>

<p>🤔</p>

<p>🤔</p>

<p>Ok, You give it a thought. Thanks.</p>

<p>The question must be <strong>why?? Why we should use this command?</strong></p>

<p>The main advantage of using this command is that you can fire it in multiple terminal windows/tabs in Android studio. This gives us the ability to look back in the history of the log output of the previous app runs 😲</p>

<p><img alt="" src="https://miro.medium.com/max/750/1*4Lwo-PxNseyz5cr5VGGaww.gif" style="height:322px; width:600px" /></p>

<p>In the very first tab, you hit the &lsquo;flutter logs&rsquo; command and run the app. You can see all the log output in the first tab. Then you make some changes(probably print() or debugPrint() statement) and run &lsquo;flutter logs&rsquo; in another tab and run the app again. <strong>This trick can help you see the state of logs of the previous app run whereas normal logging will always replace old logs with the new ones.</strong></p>

<h1>#② - Slower animation</h1>

<p>If you are working with any kind of animation in Flutter then you must be aware of this. As its name suggests it slows the animation which can help you to figure out any issues.<strong> Complex Animation on slow mode reveals secrets behind it.</strong> It allows to you think of animation in slow mode before even implementing it.</p>

<ol>
	<li>Click Flutter inspector.</li>
	<li>Click &lsquo;Slow Animation&rsquo;.</li>
</ol>

<p><img alt="" src="https://miro.medium.com/max/750/1*64cMAyuVSJ1Ip8Jpyhnvuw.gif" style="height:237px; width:600px" /></p>

<p>To see slow mode in action quickly do the hot reload with any Implicitly Animated Widgets after changing some of its properties.</p>

<h1>#③ - Extract widget</h1>

<p>Writing a large widget tree is difficult to read/understand and can create issues in the performance of the app too. <strong>Its always better to split the widget tree in the stateless widgets. </strong>More info can be found here.</p>

<h2><a href="https://iirokrankka.com/2018/12/11/splitting-widgets-to-methods-performance-antipattern/" target="_blank">Splitting widgets to methods is a performance antipattern</a></h2>

<h3><a href="https://iirokrankka.com/2018/12/11/splitting-widgets-to-methods-performance-antipattern/" target="_blank">Almost 6 months ago, I advised you to split long build methods into multiple smaller methods. And it turns out I was&hellip;</a></h3>

<p><a href="https://iirokrankka.com/2018/12/11/splitting-widgets-to-methods-performance-antipattern/" target="_blank">iirokrankka.com</a></p>

<p>I am going to show you a quick way to do this.</p>

<p><img alt="" src="https://miro.medium.com/max/750/1*fHvocjrOUKVh4Bhyu9sM4w.gif" style="height:320px; width:600px" /></p>

<ol>
	<li>Select the Widget.</li>
	<li>Right click -&gt;Refactor -&gt; Extract -&gt; Flutter Widget.</li>
</ol>

<p>And the shortcut is Ctrl + Alt + W(PC) | ⌃ + ⌥ + W(Mac)</p>

<h1>#④ - Inspect Widget</h1>

<p>If you are coming from a web development background then you probably knowing &lsquo;🔎Inspect element&rsquo; where you can see all the properties applied to any HTML tag. This is the same feature with some limitations that brings joy to mobile development.</p>

<p><img alt="" src="https://miro.medium.com/max/750/1*TQoJYgVoj-0XxF62XvG0aw.gif" style="height:295px; width:600px" /></p>

<ol>
	<li>Click Flutter inspector.</li>
	<li>Click on the &lsquo;Enable Select Widget Mode&rsquo;.</li>
	<li>Select any widget on the screen.</li>
</ol>

<p>The problem is that sometimes it becomes difficult to find any widget in dart file even if it is properly structured. You can use the <strong>Flutter Widget Inspector to locate any widget on the screen and see all the applied properties. </strong>You can not modify the properties at runtime as of now, It is very useful though. Maybe we expect that in the future.</p>

<h1><strong>#</strong>⑤ <strong>- Reformat Dart code on save</strong></h1>

<p>Your dart code can become a huge Bracket puzzle and also an unreadable one if it&#39;s not properly formatted. I call it a Bracket puzzle because it may be a little confusing to find the bracket you forgot to write in unreadable code.</p>

<p>We are talking about converting this</p>

<pre>
Center(child: AnimatedContainer(duration: Duration(milliseconds: 100), height: 300, width: 20, decoration: BoxDecoration(color: Colors.deepPurple),),</pre>

<p>To &mdash;- &mdash; -&mdash; &mdash; ⬇️ &mdash; &mdash; &mdash; &mdash; This</p>

<pre>
Center(  
    child: AnimatedContainer(
    duration: Duration(milliseconds: 100),
    height: 300,
    width: 20,
    decoration: BoxDecoration(color: Colors.deepPurple),
  ),</pre>

<p>There is a handy shortcut available for this. It&rsquo;s Ctrl + Alt + R(PC) | ⌃ + ⌥ + R(Mac) in Android Studio but <strong>who likes to do this every time when you write code??</strong></p>

<p>There is one option called <strong>&lsquo;Format code on Save&rsquo;</strong> in the Android studio&rsquo;s settings page which reformats code when you save. Isn&rsquo;t it exciting?</p>

<p>Here are steps to enable it in Android studio.</p>

<p><img alt="" src="https://miro.medium.com/max/875/1*8O-_QFaHd8ZKKPMTZzlJfg.png" style="height:395px; width:700px" /></p>

<ol>
	<li>Go to settings.</li>
	<li>Click on Language and Framework section.</li>
	<li>Choose Flutter.</li>
	<li>Now you will find an option in the editor section.</li>
</ol>

<h1><strong>#</strong>⑥ <strong>- Live code snippet</strong></h1>

<p>A lot of boilerplate code can be written by installing plugins that generate code for you when typing a specific keyword defined by plugins.</p>

<p>For example typing below the whole line by yourself&hellip;</p>

<pre>
<em>import </em>&#39;package:flutter/material.dart&#39;;</pre>

<p>If you installed the plugin like this <a href="https://github.com/georgeherby/flutter-snippets" target="_blank">https://github.com/georgeherby/flutter-snippets</a> you may just have to write &lsquo;im&rsquo; and then you get a selection to have code for.</p>

<p><img alt="" src="https://miro.medium.com/max/750/1*oXS0r25DuVIhAK9OBwVhSA.gif" style="height:235px; width:600px" /></p>

<p>This was just a simple example.<strong> It becomes really helpful when you don&rsquo;t remember the exact syntax to get started with any widget.</strong> For example, starting to write a stateful widget with such plugins is time-saving instead of writing on your own.</p>

<h1>#⑦ - Spread operators</h1>

<p>Dart 2.3 Introduced very useful features and one of them I like is Spread operators. It allows us to write UI as Code meaning, with spread operator you can <strong>write if-else statement while writing the widget</strong>. For example</p>

<pre>
Row(
  mainAxisSize: MainAxisSize.min,
  mainAxisAlignment: MainAxisAlignment.center,
  children: &lt;Widget&gt;[
    <strong><em>if </em>(age &gt;= 18) ...[adultView(<em>true</em>)] <em>else </em>adultView(<em>false</em>),</strong>
  ],
)</pre>

<p>This could also be written as</p>

<pre>
Row(
  mainAxisSize: MainAxisSize.min,
  mainAxisAlignment: MainAxisAlignment.center,
  children: &lt;Widget&gt;[
   age &gt;= 18 ? adultView(<em>true</em>) : adultView(<em>false</em>),
  ],
)</pre>

<p>But<strong> Spread operators are very useful when you have nested if-else condition.</strong></p>

<h1>#⑧ - Dart cheat sheet.</h1>

<p>Download and keep this dart cheat sheet handy while developing Flutter apps.</p>

<p><a href="https://www.raywenderlich.com/4482580-dart-2-cheat-sheet-and-quick-reference-2019" target="_blank">https://www.raywenderlich.com/4482580-dart-2-cheat-sheet-and-quick-reference-2019</a></p>

<p>You can also share this article with your friends (Who are like me &mdash; <strong>Do you remember long and bumpy roads? If not, You may read the story carefully.</strong>)</p>

<p>This is not the end of this article. I will keep on adding/improving this article.</p>

<p>Thanks for reading.</p>

<h2><a href="https://flutterbeads.com/easy-way-to-internationalize-and-localize-your-flutter-app/" target="_blank">Easy Way to Internationalize and Localize Your Flutter app - FlutterBeads</a></h2>

<h3><a href="https://flutterbeads.com/easy-way-to-internationalize-and-localize-your-flutter-app/" target="_blank">More and more people are learning English every day. Still, there is a huge number of people who don&#39;t understand or&hellip;</a></h3>

<p><a href="https://flutterbeads.com/easy-way-to-internationalize-and-localize-your-flutter-app/" target="_blank">flutterbeads.com</a></p>

<h2><a href="https://medium.com/aubergine-solutions/create-an-onboarding-page-indicator-in-3-minutes-in-flutter-a2bd97ceeaff" target="_blank">Create an Onboarding Page Indicator in 3 Minutes in Flutter.</a></h2>

<h3><a href="https://medium.com/aubergine-solutions/create-an-onboarding-page-indicator-in-3-minutes-in-flutter-a2bd97ceeaff" target="_blank">User onboarding is a very important feature when you have a bunch of cool feature in your app. It&#39;s a process of&hellip;</a></h3>

<p><a href="https://medium.com/aubergine-solutions/create-an-onboarding-page-indicator-in-3-minutes-in-flutter-a2bd97ceeaff" target="_blank">medium.com</a></p>

<p><strong>Previous </strong>👆</p>

<p><strong>Up next</strong> 👇</p>

<h2><a href="https://flutterbeads.com/adding-animations-to-your-flutter-app/" target="_blank">Adding animations to your Flutter app - FlutterBeads</a></h2>

<h3><a href="https://flutterbeads.com/adding-animations-to-your-flutter-app/" target="_blank">Put simply, adding animations to your mobile app enhances the user experience. A well-choreographed animation can make&hellip;</a></h3>

<p><a href="https://flutterbeads.com/adding-animations-to-your-flutter-app/" target="_blank">flutterbeads.com</a></p>

<h2><a href="https://medium.com/flutter-community/useful-flutter-widget-draggablescrollablesheet-know-it-all-e5cc6c48528e" target="_blank">Flutter Widget In Focus &mdash; DraggableScrollableSheet (Know It All)</a></h2>

<h3><a href="https://medium.com/flutter-community/useful-flutter-widget-draggablescrollablesheet-know-it-all-e5cc6c48528e" target="_blank">Exploring DraggableScrollableSheet &mdash; looks like a BottomSheet but actually an advanced version of it.</a></h3>

<p><a href="https://medium.com/flutter-community/useful-flutter-widget-draggablescrollablesheet-know-it-all-e5cc6c48528e" target="_blank">medium.com</a></p>

<h2>Little about me</h2>

<p>Hi, Myself Pinkesh Darji. I love to solve problems using technology that improves user&rsquo;s life on a major scale. Over the last several years, I have been developing and leading various mobile apps in different areas. More than just programming, I love to write technical articles.</p>

<p>I write about Flutter at <a href="https://flutterbeads.com/" target="_blank">https://flutterbeads.com/</a>. A place to learn Flutter from high-quality tutorials.</p>
<br>
<i>With ❤ By <a href="https://medium.com/@pinkesh.earth">Pinkesh Darji</a></i>
""",

  /// General Tip 4
  "Tips 4": """
<h1>Flutter: Tips and tricks</h1>

<p><img alt="Resultado de imagem para flutter" src="https://miro.medium.com/proxy/1*szmA2b5DQS_U5wAGgHiPQg.png" style="width:700px" /></p>

<p>ALERT: this is an ONGOING article =)! Some cool stuffs may appear with no warning.</p>

<p>Hi beloved heroes! I&rsquo;m learning Flutter and this is (for now) a challenging framework for a lot of reasons:</p>

<ul>
	<li>It is a new framework, so documentation is not clear at crucial points and stackoverflow is still growing.</li>
	<li>It looks intuitive, but it isn&rsquo;t (try to add a TextField without a Material widget ancestor to see a demoniac error appears).</li>
	<li>Have 634524143414 widgets available, it&rsquo;s a little bit confusing to a beginner.</li>
	<li>The free course (<a href="https://br.udacity.com/course/build-native-mobile-apps-with-flutter--ud905" target="_blank">https://br.udacity.com/course/build-native-mobile-apps-with-flutter--ud905</a>) is not for dummies (it&rsquo;s hard in truly because the explanations are much faster &mdash; they explain router in 50 seconds, good luck).</li>
	<li>I&rsquo;m still learning =P.</li>
</ul>

<p>So, for these reasons, I decided to share with you all little tricks that I spend some time do discover myself. Enjoy =).</p>

<p>Again: This is an <strong>ONGOING </strong>article. I will place here some tips and tricks about my flutters experiences. This will be updated article for each trick I discover.</p>

<p>The project that I am developing is here: <a href="https://github.com/benhurott/flutter-demo" target="_blank">https://github.com/benhurott/flutter-demo</a></p>

<h1>#1: Hide keyboard when tap out the textfield:</h1>

<p>Wrap your component with <code>GestureDetector</code> and call on tap:</p>

<pre>
_dismissKeyboard(BuildContext context) {
  FocusScope.<em>of</em>(context).requestFocus(<strong>new </strong>FocusNode());
}

@override
Widget build(BuildContext context) {

  <strong>return new </strong>GestureDetector(
    onTap: () {
      <strong>this</strong>._dismissKeyboard(context);
    },
    child: <strong>new </strong>Container(
      color: Colors.<em>white</em>,
      child: <strong>new </strong>Column(
        children: &lt;Widget&gt;[/*...*/],
      ),
    ),
  );
}</pre>

<h1>#2: Color RGB or Hex with Opacity</h1>

<p>In Flutter, to create a color from RGB with alpha, use:</p>

<pre>
<strong>return new </strong>Container(
  color: <strong>new </strong>Color.fromRGBO(0, 0, 0, 0.5),
);</pre>

<p>To use hex-color:</p>

<pre>
<strong>return new </strong>Container(
  color: <strong>new </strong>Color(0xFF4286f4),
);
//0xFF -&gt; the opacity (FF for opaque)
//4286f4 -&gt; the hex-color</pre>

<p>Hex-color with opacity:</p>

<pre>
<strong>return new </strong>Container(
  color: <strong>new </strong>Color(0xFF4286f4).withOpacity(0.5),
);// or change the &quot;FF&quot; value 
// 100% &mdash; FF
// 95% &mdash; F2
// 90% &mdash; E6
// 85% &mdash; D9
// 80% &mdash; CC
// 75% &mdash; BF
// 70% &mdash; B3
// 65% &mdash; A6
// 60% &mdash; 99
// 55% &mdash; 8C
// 50% &mdash; 80
// 45% &mdash; 73
// 40% &mdash; 66
// 35% &mdash; 59
// 30% &mdash; 4D
// 25% &mdash; 40
// 20% &mdash; 33
// 15% &mdash; 26
// 10% &mdash; 1A
// 5% &mdash; 0D
// 0% &mdash; 00</pre>

<h1>#3: Using <strong>SafeArea </strong>to avoiding layout breaking</h1>

<p>After June 2018, new ios apps and updates must have iPhone X compatibility (<a href="https://developer.apple.com/ios/submit/" target="_blank">take a look</a>). This device has a &ldquo;particular&rdquo; header that break our layout.</p>

<p>Instead using a <code>Padding</code> , it&rsquo;s possible to use a <code>SafeArea</code> widget:</p>

<pre>
<strong>return new </strong>Container(
  color: ColorPalette.<em>primaryBlue</em>, width: 80.0,
  child: <strong>new </strong>SafeArea(
    child: <strong>new </strong>Column(
      mainAxisAlignment: MainAxisAlignment.<strong>start</strong>,
      children: &lt;Widget&gt;[
        /*....*/
      ],
    )
  )
);</pre>

<p><strong><em>Without</em></strong> <code>SafeArea</code> , this is the result:</p>

<p><img alt="" src="https://miro.medium.com/max/875/1*9ZhyfAyZFM5POFCbXFyibg.png" style="height:674px; width:700px" /></p>

<p><strong><em>With</em></strong> <code>SafeArea</code> :</p>

<p><img alt="" src="https://miro.medium.com/max/875/1*B3vVArIu6ThzTRpWW4Fzqg.png" style="height:699px; width:700px" /></p>

<p>You can put a<code>SafeArea</code> widget inside specific component if you want =).</p>

<h1>#4: Issue &gt; InkWell feedback</h1>

<p>We like feedbacks =). The docs say: &ldquo;Hey guy, use InkWell!&rdquo; but I tried and the touch feedback never appears.</p>

<p>After a search on the repository issues, I found an answer from <a href="https://github.com/passsy" target="_blank">passsy</a>:</p>

<p>We must wrap our component with a transparent<code>Material</code> widget:</p>

<pre>
_onSelect() {
  print(<strong>&#39;selected&#39;</strong>);
}

@override
Widget build(BuildContext context) {
  <strong>return new </strong>Container(
    color: ColorPalette.<em>primaryBlue</em>,
    height: 80.0,
    child: <strong>new </strong>Material(
      color: Colors.<em>transparent</em>,
      child: <strong>new </strong>InkWell(
        splashColor: Colors.<em>white</em>.withOpacity(0.2),
        onTap: <strong>this</strong>._onSelect,
        child: <strong>new </strong>Center(/*...*/),
      ),
    )
  );
}</pre>

<h1>#5: Adding ListView inside a Column widget</h1>

<p>If a ListView is a child of a Column widget, you will see this error:</p>

<pre>
flutter: ══╡ EXCEPTION CAUGHT BY RENDERING LIBRARY ╞═════════════════════════════════════════════════════════
flutter: The following assertion was thrown during performResize():
flutter: Vertical viewport was given unbounded height.
flutter: Viewports expand in the scrolling direction to fill their container.In this case, a vertical
flutter: viewport was given an unlimited amount of vertical space in which to expand. This situation
flutter: typically happens when a scrollable widget is nested inside another scrollable widget.
flutter: If this widget is always nested in a scrollable widget there is no need to use a viewport because
flutter: there will always be enough vertical space for the children. In this case, consider using a Column
flutter: instead. Otherwise, consider using the &quot;shrinkWrap&quot; property (or a ShrinkWrappingViewport) to size
flutter: the height of the viewport to the sum of the heights of its children.</pre>

<p>This occurs because Flutter cannot calculate the size of the screen.</p>

<p>This screen is a sample of the column with two principal widgets:</p>

<p><img alt="" src="https://miro.medium.com/max/393/1*azzWSJQ7H4gEHHKzW97PMg.png" style="height:528px; width:314px" /></p>

<p>The first section is fixed at the top, so, it can&rsquo;t be an item of the list (in my case). The second section is the list.</p>

<p>To solve this, just wrap your list with an <code>Expanded</code> widget:</p>

<pre>
<strong>new </strong>Column(
  children: &lt;Widget&gt;[
    <strong>this</strong>._renderSearch(),
    <strong>new </strong>Expanded(child: <strong>this</strong>._renderChatList())
  ],
)</pre>

<h1>#6: Add Border Radius to Container</h1>

<p>I really hoped this was more intuitive and documented, but&hellip;</p>

<pre>
<strong>new </strong>Container(
  height: 40.0,
  decoration: <strong>new </strong>BoxDecoration(
    color: Colors.<em>white</em>,
    borderRadius: <strong>new </strong>BorderRadius.all(<strong>new </strong>Radius.circular(5.0))
  ),
)</pre>

<h1>#7: Image rounded from network</h1>

<p>To create a &ldquo;avatar image&rdquo; that is rounded and the image is from network, use some like this:</p>

<pre>
<strong>new </strong>Container(
  width: 50.0,
  height: 50.0,
  decoration: <strong>new </strong>BoxDecoration(
    borderRadius: <strong>new </strong>BorderRadius.circular(25.0),
    image: <strong>new </strong>DecorationImage(
      image: <strong>new </strong>NetworkImage(<strong>&#39;http://mysite/myimage.jpg&#39;</strong>),
      fit: BoxFit.<strong>cover
    </strong>)
  ),
)</pre>
<br>
<i>With ❤ By <a href="https://medium.com/@benhurott">Ben-Hur Santos Ott</a></i>
""",
  "Tips 5": """
<h1 bis_size="{&quot;x&quot;:20,&quot;y&quot;:20,&quot;w&quot;:1143,&quot;h&quot;:31,&quot;abs_x&quot;:179,&quot;abs_y&quot;:1341}">10 Flutter Tips I Learned After 3 Years of Flutter Development</h1>

<h2 bis_size="{&quot;x&quot;:20,&quot;y&quot;:68,&quot;w&quot;:1143,&quot;h&quot;:23,&quot;abs_x&quot;:179,&quot;abs_y&quot;:1389}">Things that helped boost my productivity</h2>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:108,&quot;w&quot;:1143,&quot;h&quot;:399,&quot;abs_x&quot;:179,&quot;abs_y&quot;:1429}"><img alt="Tips to boost productivity" bis_size="{&quot;x&quot;:20,&quot;y&quot;:108,&quot;w&quot;:700,&quot;h&quot;:394,&quot;abs_x&quot;:179,&quot;abs_y&quot;:1429}" src="https://miro.medium.com/max/875/1*8ygSmgFCfR1QtSCqDm3jRA.png" style="height:394px; width:700px" /></p>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:520,&quot;w&quot;:1143,&quot;h&quot;:20,&quot;abs_x&quot;:179,&quot;abs_y&quot;:1841}">Photo by the author.</p>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:554,&quot;w&quot;:1143,&quot;h&quot;:41,&quot;abs_x&quot;:179,&quot;abs_y&quot;:1875}">Here are some of the tips and tricks I discovered over my three years of making Flutter applications and content. I am positive that they will improve your workflow if you don&rsquo;t already know about them.</p>

<h1 bis_size="{&quot;x&quot;:20,&quot;y&quot;:613,&quot;w&quot;:1143,&quot;h&quot;:31,&quot;abs_x&quot;:179,&quot;abs_y&quot;:1934}">1. Use a Lot of Packages</h1>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:662,&quot;w&quot;:1143,&quot;h&quot;:41,&quot;abs_x&quot;:179,&quot;abs_y&quot;:1983}">This may seem counterintuitive, but for a lot of people, just being done with a project is the first step so that you get actual users testing out your application. Over time, when the application is published and you are getting feedback, that is when you should look over the packages and replace them with your own code to have more control.</p>

<blockquote bis_size="{&quot;x&quot;:60,&quot;y&quot;:716,&quot;w&quot;:1063,&quot;h&quot;:71,&quot;abs_x&quot;:219,&quot;abs_y&quot;:2037}">
<p bis_size="{&quot;x&quot;:84,&quot;y&quot;:731,&quot;w&quot;:1030,&quot;h&quot;:41,&quot;abs_x&quot;:243,&quot;abs_y&quot;:2052}">Of course, a key part here is knowing that the package is tested, the author and you know that you can implement it yourself. In this case, you need to use and apply your own knowledge of what you think is acceptable to depend on.</p>
</blockquote>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:801,&quot;w&quot;:1143,&quot;h&quot;:20,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2122}">You can find all the packages over at <a bis_size="{&quot;x&quot;:235,&quot;y&quot;:804,&quot;w&quot;:46,&quot;h&quot;:14,&quot;abs_x&quot;:394,&quot;abs_y&quot;:2125}" href="https://pub.dev/" target="_blank">Pub.dev</a>.</p>

<h1 bis_size="{&quot;x&quot;:20,&quot;y&quot;:839,&quot;w&quot;:1143,&quot;h&quot;:31,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2160}">2. Utilize Snippets</h1>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:888,&quot;w&quot;:1143,&quot;h&quot;:42,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2209}">A while back, I only used the provided snippets for things like <code bis_size="{&quot;x&quot;:374,&quot;y&quot;:891,&quot;w&quot;:107,&quot;h&quot;:15,&quot;abs_x&quot;:533,&quot;abs_y&quot;:2212}">StatelessWidget</code>, but when you actually make custom snippets for tasks you do over and over again, you will save a ton of time! I will show an example of snippets. These originally came from <a bis_size="{&quot;x&quot;:354,&quot;y&quot;:912,&quot;w&quot;:70,&quot;h&quot;:14,&quot;abs_x&quot;:513,&quot;abs_y&quot;:2233}" href="https://github.com/filledstacks" target="_blank">FilledStacks</a> and I have been using them ever since!</p>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:943,&quot;w&quot;:1143,&quot;h&quot;:41,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2264}">If you are using VSCode, you can just hit F1, search for &ldquo;Snippets,&rdquo; and you should find the &ldquo;Configure user snippets.&rdquo; Add a file to your liking and the snippet code of your choice. Below is my testing snippet:</p>

<h1 bis_size="{&quot;x&quot;:20,&quot;y&quot;:1002,&quot;w&quot;:1143,&quot;h&quot;:31,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2323}">3. Use Linting Early</h1>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:1050,&quot;w&quot;:1143,&quot;h&quot;:20,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2371}">There are a bunch of different ways to set up linting, but I would just recommend setting up the <a bis_size="{&quot;x&quot;:567,&quot;y&quot;:1054,&quot;w&quot;:16,&quot;h&quot;:14,&quot;abs_x&quot;:726,&quot;abs_y&quot;:2375}" href="https://pub.dev/packages/lint" target="_blank">lint</a> package, which is super easy!</p>

<ul bis_size="{&quot;x&quot;:20,&quot;y&quot;:1084,&quot;w&quot;:1143,&quot;h&quot;:84,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2405}">
	<li bis_size="{&quot;x&quot;:60,&quot;y&quot;:1084,&quot;w&quot;:1063,&quot;h&quot;:21,&quot;abs_x&quot;:219,&quot;abs_y&quot;:2405}">Add the package to your <code bis_size="{&quot;x&quot;:204,&quot;y&quot;:1087,&quot;w&quot;:85,&quot;h&quot;:15,&quot;abs_x&quot;:363,&quot;abs_y&quot;:2408}">pubspec.yaml</code> file.</li>
	<li bis_size="{&quot;x&quot;:60,&quot;y&quot;:1105,&quot;w&quot;:1063,&quot;h&quot;:21,&quot;abs_x&quot;:219,&quot;abs_y&quot;:2426}">Create a <code bis_size="{&quot;x&quot;:113,&quot;y&quot;:1109,&quot;w&quot;:150,&quot;h&quot;:15,&quot;abs_x&quot;:272,&quot;abs_y&quot;:2430}">analysis_options.yaml</code> file.</li>
	<li bis_size="{&quot;x&quot;:60,&quot;y&quot;:1127,&quot;w&quot;:1063,&quot;h&quot;:20,&quot;abs_x&quot;:219,&quot;abs_y&quot;:2448}">Add the include line described in the package.</li>
	<li bis_size="{&quot;x&quot;:60,&quot;y&quot;:1147,&quot;w&quot;:1063,&quot;h&quot;:20,&quot;abs_x&quot;:219,&quot;abs_y&quot;:2468}">Profit?</li>
</ul>

<h1 bis_size="{&quot;x&quot;:20,&quot;y&quot;:1186,&quot;w&quot;:1143,&quot;h&quot;:31,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2507}">4. Use the Tooling</h1>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:1234,&quot;w&quot;:1143,&quot;h&quot;:21,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2555}">You probably already do this, but it will make it easier to follow the next tip. By using the tooling, you will simplify a lot in your life. <code bis_size="{&quot;x&quot;:759,&quot;y&quot;:1237,&quot;w&quot;:100,&quot;h&quot;:15,&quot;abs_x&quot;:918,&quot;abs_y&quot;:2558}">Extract Widget</code> is probably my favorite &mdash; and for good reason.</p>

<h1 bis_size="{&quot;x&quot;:20,&quot;y&quot;:1273,&quot;w&quot;:1143,&quot;h&quot;:31,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2594}">5. Multiple Private Widgets</h1>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:1321,&quot;w&quot;:1143,&quot;h&quot;:63,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2642}">Now this one can be controversial, but my approach for keeping code clean and easy to navigate is very simple. Let&rsquo;s say we have a big widget with a lot of nesting. Well, go ahead and try to take a piece out of that by using <code bis_size="{&quot;x&quot;:168,&quot;y&quot;:1345,&quot;w&quot;:100,&quot;h&quot;:15,&quot;abs_x&quot;:327,&quot;abs_y&quot;:2666}">Extract Widget</code>. Make it private by prefixing with an underscore as well as a good name. What you have done now is effectively just moved the code below the public version of that widget and everything has just become a lot easier to read and change. You don&#39;t need to try to figure out what that specific <code bis_size="{&quot;x&quot;:818,&quot;y&quot;:1367,&quot;w&quot;:64,&quot;h&quot;:15,&quot;abs_x&quot;:977,&quot;abs_y&quot;:2688}">Container</code> is for, as it now has a good name!</p>

<h1 bis_size="{&quot;x&quot;:20,&quot;y&quot;:1402,&quot;w&quot;:1143,&quot;h&quot;:31,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2723}">6. App Icon and Splash Screen</h1>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:1451,&quot;w&quot;:1143,&quot;h&quot;:41,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2772}">These two packages are huge time-savers for your projects: <a bis_size="{&quot;x&quot;:369,&quot;y&quot;:1454,&quot;w&quot;:124,&quot;h&quot;:14,&quot;abs_x&quot;:528,&quot;abs_y&quot;:2775}" href="https://pub.dev/packages/flutter_launcher_icons" target="_blank">Flutter launcher icons</a> and <a bis_size="{&quot;x&quot;:522,&quot;y&quot;:1454,&quot;w&quot;:120,&quot;h&quot;:14,&quot;abs_x&quot;:681,&quot;abs_y&quot;:2775}" href="https://pub.dev/packages/flutter_native_splash" target="_blank">Flutter Native Splash</a>. I recommend checking them out. They have great documentation on how to get started, which has saved an incredible amount of time.</p>

<h1 bis_size="{&quot;x&quot;:20,&quot;y&quot;:1510,&quot;w&quot;:1143,&quot;h&quot;:31,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2831}">7. Null Aware Operators</h1>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:1558,&quot;w&quot;:1143,&quot;h&quot;:42,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2879}">There are a bunch of different null aware operators such as <code bis_size="{&quot;x&quot;:364,&quot;y&quot;:1562,&quot;w&quot;:14,&quot;h&quot;:15,&quot;abs_x&quot;:523,&quot;abs_y&quot;:2883}">??</code>, <code bis_size="{&quot;x&quot;:386,&quot;y&quot;:1562,&quot;w&quot;:21,&quot;h&quot;:15,&quot;abs_x&quot;:545,&quot;abs_y&quot;:2883}">??=</code>, and more. Learning them will not only make your code cleaner and easier now, but it will also simplify a lot when null safety becomes stable in Flutter.</p>

<h1 bis_size="{&quot;x&quot;:20,&quot;y&quot;:1618,&quot;w&quot;:1143,&quot;h&quot;:31,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2939}">8. Reuse x.of(context)</h1>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:1666,&quot;w&quot;:1143,&quot;h&quot;:63,&quot;abs_x&quot;:179,&quot;abs_y&quot;:2987}">As you know, when you want to use theming in Flutter, you need to write things like <code bis_size="{&quot;x&quot;:500,&quot;y&quot;:1670,&quot;w&quot;:264,&quot;h&quot;:15,&quot;abs_x&quot;:659,&quot;abs_y&quot;:2991}">Theme.of(context).textTheme.bodyText1</code>. That is fine, but if you have to do it multiple times in the same widget, I recommend moving it to the top of the build method. You can do that easily by just copying the line I wrote and putting it in a variable like this: <code bis_size="{&quot;x&quot;:20,&quot;y&quot;:1691,&quot;w&quot;:959,&quot;h&quot;:36,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3012}">final theme = Theme.of(context).textTheme</code>. Now every time you need the theme, you would just write <code bis_size="{&quot;x&quot;:552,&quot;y&quot;:1712,&quot;w&quot;:107,&quot;h&quot;:15,&quot;abs_x&quot;:711,&quot;abs_y&quot;:3033}">theme.bodyText1</code> in your widget.</p>

<h1 bis_size="{&quot;x&quot;:20,&quot;y&quot;:1747,&quot;w&quot;:1143,&quot;h&quot;:31,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3068}">9. debugPrint</h1>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:1796,&quot;w&quot;:1143,&quot;h&quot;:42,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3117}">Sometimes we just need more information when we are debugging &mdash; especially for network requests. So instead of using a normal <code bis_size="{&quot;x&quot;:779,&quot;y&quot;:1799,&quot;w&quot;:143,&quot;h&quot;:15,&quot;abs_x&quot;:938,&quot;abs_y&quot;:3120}">print(myNetworkData)</code>, you can use <code bis_size="{&quot;x&quot;:20,&quot;y&quot;:1820,&quot;w&quot;:178,&quot;h&quot;:15,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3141}">debugPrint(myNetworkData)</code>. This will yield a lot more metadata for you in case you need it!</p>

<h1 bis_size="{&quot;x&quot;:20,&quot;y&quot;:1856,&quot;w&quot;:1143,&quot;h&quot;:31,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3177}">10. Single-Responsibility Widget</h1>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:1904,&quot;w&quot;:1143,&quot;h&quot;:20,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3225}">If you know about the SOLID principles, then this may already sound very familiar. Well, that is because it is. With &ldquo;single-responsibility,&rdquo; we mean that a widget is only supposed to do one thing.</p>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:1938,&quot;w&quot;:1143,&quot;h&quot;:41,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3259}">Do <em bis_size="{&quot;x&quot;:40,&quot;y&quot;:1941,&quot;w&quot;:18,&quot;h&quot;:14,&quot;abs_x&quot;:199,&quot;abs_y&quot;:3262}">not</em> make mega widgets that do a bunch of different things. For example, if you noticed that you have a widget containing other widgets that make up your custom button, break that out! Extract it and make it its own separate widget. This will make it a lot more manageable and you will now know that that specific widget&rsquo;s only rule is to serve and handle that button.</p>

<h1 bis_size="{&quot;x&quot;:20,&quot;y&quot;:1997,&quot;w&quot;:1143,&quot;h&quot;:31,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3318}">Conclusion</h1>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:2046,&quot;w&quot;:1143,&quot;h&quot;:20,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3367}">The ten tips in this article are taken from my YouTube video in which I share what I have learned from my experience developing apps in Flutter.</p>

<p bis_size="{&quot;x&quot;:20,&quot;y&quot;:2080,&quot;w&quot;:1143,&quot;h&quot;:20,&quot;abs_x&quot;:179,&quot;abs_y&quot;:3401}">Thanks for reading!</p>

<p>&nbsp;</p>
<br>
<i>With ❤ By <a href="https://robertbrunhage.medium.com/">Robert Brunhage</a></i>

"""
};
