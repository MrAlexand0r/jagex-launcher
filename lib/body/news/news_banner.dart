import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:launcher/body/news/bloc/news_cubit.dart';
import 'package:launcher/body/news/bloc/news_status.dart';
import 'package:launcher/config/backend_urls.dart';

class NewsBanner extends StatelessWidget {
  const NewsBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: getImage(state),
          ),
        );
      }
    );
  }

  Image getImage(NewsState state) {
    if(state.osrsStatus?.loadRemoteBanner == true && state.osrsStatus?.remoteBannerLinkUrl != null) {
      return Image.network(
        '${BackendUrls.publishing}/osrs/${state.osrsStatus!.remoteBannerLinkUrl!}',
        fit: BoxFit.fill,
      );
    } else {
      return Image.asset('assets/images/default_banner.jpg', fit: BoxFit.fill,);
    }
  }
}
