<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Request;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'date_of_birth' => 'date',
    ];

    public static function getUserId($id)
    {
        return self::find($id);
    }

    public static function getEmail($email)
    {
        return User::where('email', '=', $email)->first();
    }

    public static function getToken($remember_token)
    {
        return User::where('remember_token', '=', $remember_token)->first();
    }

    public static function getAdmin()
    {
        $return = self::select('users.*')->where('user_type', '=', 1)->where('is_delete', '=', 0);
        if (!empty(Request::get('name'))) {
            $return = $return->where('name', 'like', '%' . Request::get('name') . '%');
        }
        if (!empty(Request::get('email'))) {
            $return = $return->where('email', 'like', '%' . Request::get('email') . '%');
        }
        if (!empty(Request::get('date'))) {
            $return = $return->whereDate('created_at', '=', Request::get('date'));
        }
        $return = $return->orderBy('id', 'desc')->get();
        return $return;
    }

    public static function getStudent()
    {
        $return = self::select('users.*', 'class.name as class_name')->join('class', 'class.id', '=', 'users.class_id', 'left')->where('users.user_type', '=', 3)->where('users.is_delete', '=', 0);
        if (!empty(Request::get('name'))) {
            $return = $return->where('users.name', 'like', '%' . Request::get('name') . '%');
        }
        if (!empty(Request::get('class'))) {
            $return = $return->where('class.name ', 'like', '%' . Request::get('class') . '%');
        }
        if (!empty(Request::get('mobile_number'))) {
            $return = $return->where('users.mobile_number ', 'like', '%' . Request::get('mobile_number') . '%');
        }

        $return = $return->orderBy('users.id', 'desc')->get();
        return $return;
    }

    public function getAvatar()
    {
        if (!empty($this->user_avatar) && file_exists('upload/profile/' . $this->user_avatar)) {
            return url('upload/profile/' . $this->user_avatar);
        } else {
            return "";
        }
    }
}
