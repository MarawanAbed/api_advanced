import 'package:api/api/presentation/manager/api_cubit.dart';
import 'package:api/api/presentation/manager/api_state.dart';
import 'package:api/core/exceptions/expections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApiCubit, ApiState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (data) => ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      data[index].avatar!,
                    ),
                  ),
                  title: Text(data[index].firstName!),
                  subtitle: Text(data[index].email!),
                ),
              );
            },
          ),
          fail: (message) => Center(
            child: Text(NetworkExceptions.getErrorMessage(message)),
          ),
        );
      },
    );
  }
}

// all users
///            return ListView.builder(
///             itemCount: state.users.length,
///             itemBuilder: (context, index) {
///              return Card(
///                 child: ListTile(
///                   leading: CircleAvatar(
///                     backgroundImage: NetworkImage(
///                      state.users[index].avatar!,
///                     ),
///                ),
///                  title: Text(state.users[index].firstName!),
///                   subtitle: Text(state.users[index].email!),
///                ),
///              );
///             },
///           );
///
///          /// single user
///                    return Card(
//             child: ListTile(
//               leading: CircleAvatar(
//                 backgroundImage: NetworkImage(
//                   state.users.avatar!,
//                 ),
//               ),
//               title: Text(state.users.firstName!),
//               subtitle: Text(state.users.email!),
//             ),
//           );
