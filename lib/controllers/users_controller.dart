import 'dart:async';
import 'package:aqueduct/aqueduct.dart';

class UsersController extends ResourceController {
  @Operation.get()
  Future<Response> getData() async {
    return Response.ok('Oke');
  }
}
