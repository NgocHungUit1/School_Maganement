<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class ClassModel extends Model
{
    use HasFactory;
    protected $table = 'class';

    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    public static function getClassId($id)
    {
        return self::find($id);
    }

    public static function getClass()
    {
        $return = ClassModel::select('class.*')
            ->join('users', 'users.id', 'class.created_by')
            ->where('class.is_delete', '=', 0)
            ->where('class.status', '=', 0)
            ->orderBy('class.name', 'asc')->get();
        return $return;

    }

}
