<?php

namespace App\Http\Livewire\Admin\Products;

use App\Models\Product;
use Livewire\Component;
use Livewire\WithPagination;
use Illuminate\Support\Facades\File;

class Index extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';

    public $product_id;

    public function deleteProduct($product_id){
        $this->product_id = $product_id;
    }

    public function destroyProduct(){
        $product = Product::findOrFail($this->product_id);
        if($product->productImages){
            foreach($product->productImages as $image){
                if(File::exists($image->$image)){
                    File::delete($image->$image);
                }
            }
        }
        $product->delete();
        session()->flash('message','Product Deleted With the All Images');
        $this->dispatchBrowserEvent('close-modal');
    }

    public function render()
    {
        $products = Product::orderBy('id', 'DESC')->paginate(10);
        // $products = Product::all();
        return view('livewire.admin.products.index', compact('products'));
    }
}
