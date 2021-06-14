<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ProfileResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => (string)$this->id,
            'dob' => $this->dob,
            'gender' => $this->gender,
            'avatar' => $this->avatar,
            'address' => $this->address,
            'email_verified_at' => $this->email_verified_at,
            'creation_date' => $this->created_at,
            'last_change' => $this->updated_at,
        ];
    }
}
