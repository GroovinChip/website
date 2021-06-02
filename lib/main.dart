import 'package:flutter/material.dart';
import 'package:flutter_brand_palettes/flutter_brand_palettes.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'groovinchip.dev',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.brown,
        primaryColor: Colors.brown,
        accentColor: Colors.brown.shade300,
        canvasColor: Color.lerp(
          Colors.brown.shade800,
          Colors.black,
          0.5,
        ),
        appBarTheme: AppBarTheme(
          color: Color.lerp(
            Colors.brown.shade800,
            Colors.black,
            0.5,
          ),
          elevation: 0,
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final urls = {
    'GitHub': 'https://github.com/GroovinChip',
    'Twitter': 'https://twitter.com/GroovinChip',
    'LinkedIn': 'https://www.linkedin.com/in/reubenturner42/',
    'YouTube': 'https://www.youtube.com/channel/UCqRA9X1SF1AyCNYkFp7gLTw',
    'Gmail': 'mailto:groovinchip@gmail.com',
    'CallManager': 'https://github.com/GroovinChip/call_manager',
    'macos_ui': 'https://github.com/GroovinChip/macos_ui',
    'groovin_widgets': 'https://github.com/GroovinChip/groovin_widgets',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'GroovinChip',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Reuben Turner',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                  ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Software Developer • Husband • Father',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.w700,
                    //fontSize: 30,
                  ),
            ),
            const SizedBox(height: 24.0),
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                  icon: Icon(MdiIcons.github),
                  label: Text(
                    'GITHUB',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () async {
                    if (await canLaunch(urls['GitHub']!)) {
                      await launch(urls['GitHub']!);
                    }
                  },
                ),
                const SizedBox(width: 8.0),
                Text('•'),
                const SizedBox(width: 8.0),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: Twitter.blue().color,
                  ),
                  icon: Icon(MdiIcons.twitter),
                  label: Text(
                    'TWITTER',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () async {
                    if (await canLaunch(urls['Twitter']!)) {
                      await launch(urls['Twitter']!);
                    }
                  },
                ),
                const SizedBox(width: 8.0),
                Text('•'),
                const SizedBox(width: 8.0),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: Linkedin.blue().color,
                  ),
                  icon: Icon(MdiIcons.linkedin),
                  label: Text(
                    'LINKEDIN',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () async {
                    if (await canLaunch(urls['LinkedIn']!)) {
                      await launch(urls['LinkedIn']!);
                    }
                  },
                ),
                const SizedBox(width: 8.0),
                Text('•'),
                const SizedBox(width: 8.0),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: Youtube.red().color,
                  ),
                  icon: Icon(MdiIcons.youtube),
                  label: Text(
                    'YOUTUBE',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () async {
                    if (await canLaunch(urls['YouTube']!)) {
                      await launch(urls['YouTube']!);
                    }
                  },
                ),
                const SizedBox(width: 8.0),
                Text('•'),
                const SizedBox(width: 8.0),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: Color(0xffDB4437),
                  ),
                  icon: Icon(MdiIcons.gmail),
                  label: Text(
                    'GMAIL',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () async {
                    if (await canLaunch(urls['Gmail']!)) {
                      await launch(urls['Gmail']!);
                    }
                  },
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            Text(
              'Popular Projects',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                  ),
            ),
            const SizedBox(height: 24.0),
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                  child: Text(
                    'CALL MANAGER',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () async {
                    if (await canLaunch(urls['CallManager']!)) {
                      await launch(urls['CallManager']!);
                    }
                  },
                ),
                const SizedBox(width: 8.0),
                Text('•'),
                const SizedBox(width: 8.0),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                  child: Text(
                    'MACOS_UI',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () async {
                    if (await canLaunch(urls['macos_ui']!)) {
                      await launch(urls['macos_ui']!);
                    }
                  },
                ),
                const SizedBox(width: 8.0),
                Text('•'),
                const SizedBox(width: 8.0),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                  ),
                  child: Text(
                    'GROOVIN_WIDGETS',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                  onPressed: () async {
                    if (await canLaunch(urls['groovin_widgets']!)) {
                      await launch(urls['groovin_widgets']!);
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
