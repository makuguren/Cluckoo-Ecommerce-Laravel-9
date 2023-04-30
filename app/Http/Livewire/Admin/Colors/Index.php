<?php

namespace App\Http\Livewire\Admin\Colors;

use Livewire\Component;
use App\Models\Color;
use Livewire\WithPagination;

class Index extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';

    public $color_id;

    public function deleteColor($color_id){
        // dd($color_id);
        $this->color_id = $color_id;
    }

    public function destroyColor(){
        $color = Color::findOrFail($this->color_id);
        $color->delete();
        session()->flash('message','Color Deleted Successfully');
        $this->dispatchBrowserEvent('close-modal');
    }

    public function render(){
        $colors = Color::orderBy('id', 'DESC')->paginate(10);
        return view('livewire.admin.colors.index',['colors' => $colors]);
    }

}
