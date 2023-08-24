<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class Role
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle($request, Closure $next, ...$roles)
    {
        if (!Auth::check())
            return redirect('/');

        $user = Auth::user();
        $arrayRole = explode('|', $roles[0]);

        foreach ($arrayRole as $role) {
            if ($user->hasRole($role))
                return $next($request);
        }

        Session::flash('error', 'Anda Tidak Punya Akses Ke halaman Tersebut');
        return back();
    }
}
