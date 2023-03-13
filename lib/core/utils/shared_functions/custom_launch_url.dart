import 'package:bookly/core/utils/shared_widgets/custom_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customLaunchUrl(String ? url , context) async {
  if(url == null) {
    return;
  }
   Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  }else{
    customSnackBar(context, 'Cannot launch $url');
  }
}
