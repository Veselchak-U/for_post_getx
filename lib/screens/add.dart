import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:for_post/import.dart';
import 'package:get/get.dart';

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        final addCubit = AddCubit(
          dataRepository: RepositoryProvider.of<DatabaseRepository>(context),
        );
        addCubit.init();
        return addCubit;
      },
      lazy: false,
      child: _AddView(),
    );
  }
}

class _AddView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return BlocBuilder<AddCubit, AddState>(
      builder: (BuildContext context, AddState addState) {
        return Stack(
          children: [
            Scaffold(
              body: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    title: Text(
                      'New article',
                    ),
                    centerTitle: true,
                    automaticallyImplyLeading: false,
                    leading: RaisedButton(
                      shape: CircleBorder(),
                      color: Colors.white.withOpacity(0.3),
                      elevation: 0,
                      onPressed: () => Get.back(),
                      child: Icon(Icons.arrow_back),
                    ),
                    backgroundColor: Colors.white,
                    elevation: 0.0,
                    expandedHeight: screenHeight / 4,
                    flexibleSpace: (addState.newArticle.bannerUrl == null ||
                            addState.newArticle.bannerUrl.isEmpty)
                        ? Center(
                            child: _AddPhotoButton(),
                          )
                        : FadeInImage.assetNetwork(
                            image: addState.newArticle.bannerUrl,
                            fit: BoxFit.fitWidth,
                            placeholder: '${kAssetPath}placeholder_img.png',
                            imageErrorBuilder: (context, object, stack) =>
                                Image.asset('${kAssetPath}placeholder_img.png'),
                          ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: _AddForm(),
                    ),
                  ),
                ],
              ),
            ),
            if (addState.status == AddStatus.busy)
              Center(
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
          ],
        );
      },
    );
  }
}

class _AddPhotoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.add_a_photo),
            SizedBox(width: 16),
            Text('Add banner'),
          ],
        ),
      ),
    );
  }
}

class _AddForm extends StatefulWidget {
  @override
  _AddFormState createState() => _AddFormState();
}

class _AddFormState extends State<_AddForm> {
  final _formKey = GlobalKey<FormState>();
  AddCubit addCubit;

  @override
  void initState() {
    super.initState();
    addCubit = BlocProvider.of<AddCubit>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Banner URL',
              helperText: '',
            ),
            initialValue: 'http:\\',
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (value) {
              addCubit.updateArticle(
                  addCubit.state.newArticle.copyWith(bannerUrl: value));
            },
            onSaved: (value) {
              addCubit.updateArticle(
                  addCubit.state.newArticle.copyWith(bannerUrl: value));
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) => addCubit.validateBannerUrl(value),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Title',
              helperText: '',
            ),
            initialValue: 'Title',
            textInputAction: TextInputAction.next,
            onSaved: (value) {
              addCubit.updateArticle(
                  addCubit.state.newArticle.copyWith(title: value));
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) => addCubit.validateTitle(value),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Description',
              helperText: '',
            ),
            initialValue: 'Description',
            minLines: 5,
            maxLines: 10,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.multiline,
            onSaved: (value) {
              addCubit.updateArticle(
                  addCubit.state.newArticle.copyWith(description: value));
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) => addCubit.validateDescription(value),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () async {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  final result = await addCubit.addArticle();
                  if (result) {
                    Get.back(result: addCubit.state.newArticle);
                  }
                }
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text('Add article'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
