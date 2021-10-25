import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_admin_dashboard/dependency_injection.dart' as di;
import 'package:web_admin_dashboard/presentation/blocs/login/login_bloc.dart';
import 'package:web_admin_dashboard/presentation/pages/navigation/page.dart';
import 'package:web_admin_dashboard/utils/validators.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginBloc _loginBloc = di.sl.get();

  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 3,
        ),
        constraints: const BoxConstraints(
          minWidth: 500.0,
        ),
        child: Form(
          key: _key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      context.setLocale(const Locale('en'));
                    },
                    child: const Text(
                      'ENG',
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  TextButton(
                    onPressed: () {
                      context.setLocale(const Locale('uk'));
                    },
                    child: const Text(
                      'УКР',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'email'.tr(),
                ),
                validator: emailValidator,
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'password'.tr(),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              BlocListener<LoginBloc, LoginBlocState>(
                bloc: _loginBloc,
                listener: (BuildContext context, LoginBlocState snapshot) {
                  if (snapshot.status == LoginBlocStatus.Error) {
                    showDialog<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Center(
                            child: Text(
                              'something_went_wrong'.tr() +
                                  snapshot.error.toString(),
                            ),
                          ),
                        );
                      },
                    );
                  }
                  if (snapshot.status == LoginBlocStatus.Login &&
                      snapshot.user!.role == 'admin') {
                    Navigator.push(
                      context,
                      MaterialPageRoute<NavigationPage>(
                        builder: (_) => NavigationPage(),
                      ),
                    );
                  }
                },
                child: TextButton(
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      _loginBloc.add(LoginBlocEvent.login(
                        _emailController.text,
                        _passwordController.text,
                      ));
                    }
                  },
                  child: Text(
                    'login'.tr(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
