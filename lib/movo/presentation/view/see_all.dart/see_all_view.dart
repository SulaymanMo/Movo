import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movo/core/theme/extension.dart';
import 'package:movo/movo/presentation/widget/card_item.dart';
import 'package:sizer/sizer.dart';

class SeeAllView<C extends Cubit<T>, T> extends StatefulWidget {
  final String title;
  const SeeAllView({required this.title, super.key});

  @override
  State<SeeAllView<C, T>> createState() => _SeeAllViewState<C, T>();
}

class _SeeAllViewState<C extends Cubit<T>, T> extends State<SeeAllView<C, T>> {
  bool _isList = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () => setState(() => _isList = !_isList),
            icon: Icon(
              _isList ? Icons.list : Icons.grid_view_rounded,
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () => context.pop(),
          style: context.theme.iconButtonTheme.style,
          icon: const Icon(Icons.navigate_before),
        ),
      ),
      body: SeeAllBody<C>(_isList),
    );
  }
}

class SeeAllBody<C extends Cubit> extends StatefulWidget {
  const SeeAllBody(this._isList, {super.key});
  final bool _isList;

  @override
  State<SeeAllBody<C>> createState() => _SeeAllBodyState<C>();
}

class _SeeAllBodyState<C extends Cubit> extends State<SeeAllBody<C>> {
  late ScrollController _controller;

  void _listener(context) {
    _controller.addListener(() {
      if (_controller.position.atEdge) {
        // context.read<C>().get();
        debugPrint('Hello');
        // && _controller.position.pixels != 0
      }
    });
  }

  @override
  void initState() {
    _controller = ScrollController();
    _listener(context);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.removeListener;
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return GridView.builder(
          controller: _controller,
          padding: EdgeInsets.symmetric(
            vertical: 3.h,
            horizontal: widget._isList ? 3.w : 1.w,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 12,
            crossAxisSpacing: 7,
            crossAxisCount: widget._isList ? 1 : 3,
            childAspectRatio: widget._isList ? 2 : 1 / 2,
          ),
          itemCount: context.read<C>().state.movies.length,
          itemBuilder: (_, index) {
            return CardItem(
              height: 19.h,
              isList: widget._isList,
              context.read<C>().state.movies[index],
            );
          },
        );
      },
    );
  }
}
