import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movo/movo/domain/entity/entity_base.dart';
import 'package:movo/movo/domain/entity/movie_entity.dart';
import 'package:movo/movo/domain/usecase/get_cast.dart';
import 'package:movo/movo/domain/usecase/get_images.dart';
import 'package:movo/movo/domain/usecase/get_similar.dart';
import '../../movo/domain/usecase/ge_details_usecase.dart';
import '../../movo/presentation/manager/details/details_cubit.dart';
import '../../movo/presentation/view/details/cast_details_view.dart';
import '../../movo/presentation/view/details/movie_details_view.dart';
import '../helper/service_locator.dart';

Future<void> navigate(BuildContext context, {required Entity entity}) async {
  await Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) {
        return MultiBlocProvider(
          providers: [
            if (entity is MovieEntity)
              BlocProvider<DetailsCubit>(
                create: (_) => DetailsCubit(
                  cast: getIt.get<GetCast>(),
                  images: getIt.get<GetImages>(),
                  details: getIt.get<GetDetails>(),
                  similar: getIt.get<GetSimilar>(),
                )
                  ..getDetails(entity.id)
                  // ..getSimilar(entity.id)
                  // ..getAlbum(entity.id),
              ),
          ],
          child: entity is MovieEntity
              ? const MovieDetailsView()
              : const CastDetailsView(),
        );
      },
    ),
  );
}
