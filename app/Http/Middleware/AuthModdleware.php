<?php

namespace App\Http\Middleware;

use Closure;

class AuthModdleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $session = session("user");
        if ($session == null) {
            return redirect("/login");//跳转到完善信息页
        }
        return $next($request);
    }
}
