part of 'user_dialogs_overview_watcher_bloc.dart';


@freezed
abstract class UserDialogsOverviewWatcherState with _$UserDialogsOverviewWatcherState {
  const factory UserDialogsOverviewWatcherState.initial() = Initial;
  const factory UserDialogsOverviewWatcherState.loadInProgress() = DataTransferInProgress;
  const factory UserDialogsOverviewWatcherState.loadSuccess(KtList<DialogOverview> dialogs) = LoadSuccess;
  const factory UserDialogsOverviewWatcherState.loadFailure(ChatFailure chatFailure) =
      LoadFailure;
}
