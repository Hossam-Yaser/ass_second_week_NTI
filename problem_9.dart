// //class
// RemoteClient
// {
// String
// getDataUser()
// {
// return "data user from remote";
// }
// }
// class
// LocalClient
// {
// String
// getDataUser()
// {
// return
// "data user from local";
// }
// }
// class
// Repository
// {
// RemoteClient
// remoteClient;
// LocalClient
// localClient;
// Repository(
// this
// .remoteClient,
// this
// .localClient);
// void
// saveData(
// bool
// connectionInternet)
// {
// if
// (connectionInternet)
// {
// remoteClient.getDataUser();
// }
// else
// {
// localClient.getDataUser();
// }
// }
// }

// this code breaks the solid principle of Dependency Inversion because the Repository class is directly dependent on the concrete implementations of RemoteClient and LocalClient. Instead, it should depend on abstractions (interfaces or abstract classes) to allow for better flexibility and testability.
// To adhere to the Dependency Inversion Principle, we can introduce an interface for the data client and make the Repository depend on that interface instead of concrete implementations.
//******************************************************************************************************************** */
//abstract class DataClient {
//   String getDataUser();
// }
// class RemoteClient implements DataClient {
//   @override
//   String getDataUser() {
//     return "data user from remote";
//   }
// }
// class LocalClient implements DataClient {
//   @override
//   String getDataUser() {
//     return "data user from local";
//   }
// }
// class Repository {
//   DataClient dataClient;
//   Repository(this.dataClient);
//   void saveData(bool connectionInternet) {
//     if (connectionInternet) {
//       dataClient.getDataUser();
//     } else {
//       dataClient.getDataUser();
//     }
//   }
// }
