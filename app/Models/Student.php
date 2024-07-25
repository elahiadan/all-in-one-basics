<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;

    public function stu_sub()
    {
        return $this->hasMany(StudentSubject::class);
    }

    public function stu_sub_tea()
    {
        return $this->hasManyThrough(
            Subject::class, // Target model (Teacher)
            StudentSubject::class, // Intermediate model (StudentSubject)
            'student_id', // Foreign key on StudentSubject table
            'id', // Foreign key on Subject table
            'id', // Local key on Student model
            'subject_id' // Local key on StudentSubject model
        );
    }
}
