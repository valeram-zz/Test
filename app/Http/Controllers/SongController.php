<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Song;
use Illuminate\Support\Facades\DB;

class SongController extends Controller {

  public function store(Request $request) {
      Song::create($request->all());
      return ['created' => true];
  }

  public function update(Request $request, $id) {
    $user = Song::find($id);
    $user->update($request->all());
    return ['updated' => true];
  }

  public function show($id) {
    return Song::find($id);
  }

  public function destroy($id) {
    Song::destroy($id);
    return ['deleted' => true];
  }

  public function getAll() {
    return Song::all();
  }

  public function filterByAttribute($data) {
    if(isset($data)){
      $songs = DB::table('songs')
                  ->join('genres', 'songs.genre', '=', 'genres.id')
                  ->select('songs.title' , 'songs.artist', 'songs.duration', 'genres.name')
                  ->where('artist', 'like', $data)
                  ->orWhere('title', 'like', $data)
                  ->orWhere('genres.name', 'like', $data)
                  ->get();

      return $songs;
    }else{
      return ['Please dont send empty data'];
    }
  }

  public function getSongsByDuration ($max, $min){
    echo $max;
    if(isset($max) && isset($min)){
      $songs = DB::table('songs')
                  ->join('genres', 'songs.genre', '=', 'genres.id')
                  ->select('songs.title' , 'songs.artist', 'songs.duration', 'genres.name')
                  ->whereBetween('songs.duration', [$max, $min])
                  ->get();

      return $songs;
    }else{
      return ['Please dont send empty data'];
    }
  }
}
