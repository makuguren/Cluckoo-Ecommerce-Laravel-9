<?php

namespace App\Http\Livewire\Admin\Users;

use App\Models\User;
use Livewire\Component;
use Livewire\WithPagination;

class Index extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';

    public $userId;

    public function deleteUser($userId){
        $this->userId = $userId;
    }

    public function destroyUser(){
        $user = User::findOrFail($this->userId);
        $user->delete();
        session()->flash('message','User Deleted Successfully!');
        $this->dispatchBrowserEvent('close-modal');
    }

    public function render()
    {
        $users = User::paginate(10);
        return view('livewire.admin.users.index', compact('users'));
    }
}
