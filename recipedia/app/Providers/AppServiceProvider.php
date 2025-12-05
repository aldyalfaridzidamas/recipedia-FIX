<?php
namespace App\Providers;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Gate;
use App\Models\Recipe;
use App\Models\Comment;
use App\Policies\RecipePolicy;
use App\Policies\CommentPolicy;
use Illuminate\Support\Facades\URL;
class AppServiceProvider extends ServiceProvider
{
    public function register(): void
    {
    }
    public function boot(): void
    {
        Gate::policy(Recipe::class, RecipePolicy::class);
        Gate::policy(Comment::class, CommentPolicy::class);
        if (config('app.env') === 'production') {
            URL::forceScheme('https');
        }
    }
}
