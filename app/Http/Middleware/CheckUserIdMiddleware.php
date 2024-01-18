<?php
namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class CheckUserIdMiddleware
{
    public function handle(Request $request, Closure $next)
    {
        $userIdFromRoute = $request->route('userId');
        
        if ($userIdFromRoute != auth()->user()->id) {
            abort(403, 'Unauthorized action.');
        }

        return $next($request);
    }
}