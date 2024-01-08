// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [saved_empty_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SavedEmptyModel extends Equatable {
  SavedEmptyModel() {}

  SavedEmptyModel copyWith() {
    return SavedEmptyModel();
  }

  @override
  List<Object?> get props => [];
}
