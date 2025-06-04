<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    use HasFactory;

    protected $fillable = ['title', 'note', 'status'];
    // User.php
    public function tasks()
    {
        return $this->hasMany(Task::class);
    }

    // Task.php
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    
}
