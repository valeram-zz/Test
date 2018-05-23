<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Song extends Model {
  /**
   * The attributes that are mass assignable.
   *
   * @var array
   */
  protected $fillable = [
      'id',
      'artist',
      'title',
      'genre',
      'duration',
      'genre'
  ];


  /**
  * Get the genre that owns the song.
  */
  public function product() {
      return $this->hasOne('App\Genre');
  }
}
