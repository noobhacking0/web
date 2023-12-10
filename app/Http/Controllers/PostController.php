<?php

namespace App\Http\Controllers;

// import model "post"
use App\Models\post;

// return type view
use Illuminate\View\View;

//return type redirectResponse
use Illuminate\Http\RedirectResponse;

// import facades "storage"
use Illuminate\Support\Facades\Storage;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PostController extends Controller
{
    /**
     * index
     * 
     * @return view
     */

     public function Index(): View
     {
        // get posts
        $posts = Post::latest()->paginate(5);

        // render view with posts
        return view('posts.index',compact('posts'));
     }
     public function home(): View
     {
        // get posts
        $posts = Post::latest()->paginate();

        // render view with posts
        return view('index',compact('posts'));
     }
     public function create(): View
     {
     return view('posts.create');
     }
     public function store(Request $request): RedirectResponse
     {
        //validate form
        $this->validate($request, [
        'image' => 'required|image|mimes:jpeg,jpg,png,webp|max:109000',
        'title' => 'required|min:5',
        'content' => 'required|min:10'
        ]);
        //upload image
        $image = $request->file('image');
        $image->storeAs('public/posts', $image->hashName());
        //create post
        Post::create([
        'image' => $image->hashName(),
        'title' => $request->title,
        'content' => $request->content
        ]);
        //redirect to index
        return redirect()->route('posts.index')->with(['success' => 'Data Berhasil Disimpan!']);
    }
    public function show(string $id): View
    {
        // get post by id
        $post = Post::findOrFail($id);

        // render view with post
        return view('posts.show', compact('post'));
    }
    public function destroy($id): RedirectResponse
    {
        // get post by id
        $post = Post::findOrFail($id);

        // delete image
        Storage::delete('public/posts/'. $post->image);

        // delete post
        $post->delete();
        
        // redirect to index
        return redirect()->route('posts.index')->with(['success' => 'data berhasil dihapus!!']);
    }
    public function edit(string $id): View
    {
        // get post by id
        $post = Post::findOrFail($id);

        // render view with post
        return view('posts.edit', compact('post'));
    }
    public function update(Request $request, $id): RedirectResponse
{
//validate form
$this->validate($request, [
'image' => 'image|mimes:jpeg,jpg,png,webp|max:100900',
'title' => 'required|min:5',
'content' => 'required|min:10'
]);
//get post by ID
$post = Post::findOrFail($id);
//check if image is uploaded
if ($request->hasFile('image')) {
//upload new image
$image = $request->file('image');
$image->storeAs('public/posts', $image->hashName());
//delete old image
Storage::delete('public/posts/'.$post->image);
//update post with new image
$post->update([
'image' => $image->hashName(),
'title' => $request->title,
'content' => $request->content
]);
} else {
//update post without image
$post->update([
'title' => $request->title,
'content' => $request->content
]);
}
//redirect to index
return redirect()->route('posts.index')->with(['success' => 'Data Berhasil Diubah!']);
}

public function search (Request $request)
{
    $search =  $request->search;
    $posts = DB::table('posts')
    ->where('title','like',"%". $search ."%")
    ->paginate();
    return view ('posts.index',compact('posts'));
}

}