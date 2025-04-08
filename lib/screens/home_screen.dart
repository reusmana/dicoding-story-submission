import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:story_app_submission/class/localization.dart';
import 'package:story_app_submission/class/story.dart';
import 'package:story_app_submission/common.dart';
import 'package:story_app_submission/providers/auth_provider.dart';
import 'package:story_app_submission/providers/localizations_provider.dart';
import 'package:story_app_submission/providers/story_provider.dart';
import 'package:story_app_submission/utils/no_internet.dart';
import 'package:story_app_submission/widgets/list_cards.dart';

class HomeScreen extends StatefulWidget {
  final List<Story> stories;
  final Function(String) onTapped;
  final Function() onLogout;
  final Function() toAdd;
  const HomeScreen({
    super.key,
    required this.stories,
    required this.onTapped,
    required this.onLogout,
    required this.toAdd,
  });

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    final storyProv = context.read<StoryProvider>();

    scrollController.addListener(() {
      if (scrollController.position.pixels >=
          scrollController.position.maxScrollExtent) {
        if (storyProv.sizeItems != null) {
          storyProv.getStories();
        }
      }
    });
    Future.microtask(() async {
      storyProv.getStories();
    });
  }

  Future<void> refresh() async {
    final storyProv = context.read<StoryProvider>();
    await storyProv.getStories();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.titleAppBar,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
        actions: [
          DropdownButtonHideUnderline(
            child: DropdownButton(
              icon: Icon(Icons.language, size: 26, color: Colors.white),
              items:
                  AppLocalizations.supportedLocales.map((Locale locale) {
                    final flag = Localization.getFlag(locale.languageCode);
                    return DropdownMenuItem(
                      value: locale,
                      child: Center(
                        child: Text(
                          flag,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),
                      onTap: () {
                        final provider = Provider.of<LocalizationsProvider>(
                          context,
                          listen: false,
                        );
                        provider.setLocale(locale);
                      },
                    );
                  }).toList(),
              onChanged: (_) {},
            ),
          ),
          IconButton(
            onPressed: () {
              AppSettings.openAppSettings();
            },
            icon: const Icon(Icons.settings, color: Colors.white, size: 26),
          ),
          IconButton(
            onPressed: () async {
              final result = await authProvider.logout();
              if (context.mounted) {
                if (result) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        AppLocalizations.of(context)!.logoutAlertSuccess,
                      ),
                    ),
                  );
                  widget.onLogout();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        AppLocalizations.of(context)!.logoutAlertFailed,
                      ),
                    ),
                  );
                }
              }
            },
            icon:
                authProvider.isLoading
                    ? Center(
                      child: CircularProgressIndicator(color: Colors.white),
                    )
                    : const Icon(Icons.logout, color: Colors.red, size: 26),
          ),
        ],
      ),
      body: Consumer<StoryProvider>(
        builder: (context, ref, child) {
          if (ref.isLoading) {
            return Center(child: const CircularProgressIndicator());
          }
          if (ref.errorMessage != null) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(NoInternet.getFriendlyErrorMessage(ref.errorMessage!)),
                    SizedBox(height: 10),
                    IconButton(
                      iconSize: 60,
                      onPressed: () async {
                        await refresh();
                      },
                      icon: Icon(Icons.restore),
                    ),
                  ],
                ),
              ),
            );
          }

          if (ref.stories.isEmpty) {
            return Center(child: Text(AppLocalizations.of(context)!.noStory));
          }
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListCards(
                  context: context,
                  ref: ref,
                  onTapped: widget.onTapped,
                  controller: scrollController,
                ),
              ),
              Consumer<StoryProvider>(
                builder: (context, ref, child) {
                  if (ref.loadingPaginate) {
                    return Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(1),
                          ],
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      alignment: Alignment.bottomCenter,
                      child: CircularProgressIndicator(
                        strokeWidth: 5,
                        color: Colors.white,
                      ),
                    );
                  }
                  return const SizedBox();
                },
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () async {
          widget.toAdd();
        },
        child: const Icon(Icons.add, color: Colors.white, size: 40),
      ),
    );
  }
}
