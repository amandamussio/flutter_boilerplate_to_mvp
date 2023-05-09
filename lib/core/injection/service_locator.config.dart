// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:flutter_boilerplate_to_mvp/core/infra/services/firebase/firebase_injectable_module.dart'
    as _i9;
import 'package:flutter_boilerplate_to_mvp/core/routes/app_router.dart' as _i3;
import 'package:flutter_boilerplate_to_mvp/modules/auth/presentation/cubit/auth_cubit.dart'
    as _i4;
import 'package:flutter_boilerplate_to_mvp/modules/auth/repository/authentication_repository.dart'
    as _i7;
import 'package:flutter_boilerplate_to_mvp/modules/sign_up/presentation/cubit/sign_up_cubit.dart'
    as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.factory<_i4.AuthCubit>(() => _i4.AuthCubit(gh<dynamic>()));
    gh.lazySingleton<_i5.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i6.FirebaseFirestore>(
        () => firebaseInjectableModule.firestore);
    gh.lazySingleton<_i7.AuthenticationRepository>(() =>
        _i7.AuthenticationRepository(firebaseAuth: gh<_i5.FirebaseAuth>()));
    gh.factory<_i8.SignUpCubit>(
        () => _i8.SignUpCubit(gh<_i7.AuthenticationRepository>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i9.FirebaseInjectableModule {}
