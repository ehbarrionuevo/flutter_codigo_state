
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_codigo_state/models/person_model.dart';

part 'person_event.dart';
part 'person_state.dart';

class PersonBloc extends Bloc<PersonEvent, PersonState>{
  PersonBloc(): super(PersonState()){
    on<AddNewPerson>((event, emit){
      emit(PersonState(personModel: event.model));
    });

    on<DeletePerson>((event, emit){
      emit(PersonState(personModel: null));
    });
  }

}
