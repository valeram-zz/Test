<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Genre;

class GenreController extends Controller{
  public function store(Request $request){
      Genre::create($request->all());
      return ['created' => true];
  }
  public function update(Request $request, $id){
    $user = Genre::find($id);
    $user->update($request->all());
    return ['updated' => true];
  }
  public function show($id){
    return Genre::find($id);
  }
  public function destroy($id){
    Genre::destroy($id);
    return ['deleted' => true];
  }
}
