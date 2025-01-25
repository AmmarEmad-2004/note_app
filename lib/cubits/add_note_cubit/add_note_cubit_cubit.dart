import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());
  addNote(NoteModel note) {
    AddNoteCubitLoading();
    try {
      
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      notesBox.add(note);
      emit(AddNoteCubitSuccess());
      
    } on Exception catch (e) {
      emit(AddNoteCubitFailure(errMassage: e.toString()));
    }
  }
}
