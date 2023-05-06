<?php

namespace App\Http\Livewire\Admin\Sliders;

use App\Models\Slider;
use Livewire\Component;
use Illuminate\Support\Facades\File;

class Index extends Component
{
    public $slider_id;

    public function deleteSlider($slider_id){
        $this->slider_id = $slider_id;
    }

    public function destroySlider(){
        $slider = Slider::findOrFail($this->slider_id);
        if($slider->count() > 0){
            $destination = $slider->image;
            if(File::exists($destination)){
                File::delete($destination);
            }
        }
        $slider->delete();
        session()->flash('message','Slider Deleted Successfully');
        $this->dispatchBrowserEvent('close-modal');
    }

    public function render()
    {
        $sliders = Slider::all();
        return view('livewire.admin.sliders.index', compact('sliders'));
    }
}
