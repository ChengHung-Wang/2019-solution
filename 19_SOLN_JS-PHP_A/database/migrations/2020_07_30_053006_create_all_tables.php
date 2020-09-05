<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAllTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('event_ratings', function (Blueprint $table) {
            $table->id();
            $table->integer('registration_id');
            $table->text('comment');
            $table->enum('rate', [1,2,3,4,5]);
            $table->timestamps();
        });

        Schema::create('session_ratings', function (Blueprint $table) {
            $table->id();
            $table->integer('session_registration_id');
            $table->enum('rate', [1,2,3,4,5]);
            $table->timestamps();
        });

        Schema::table('event_ratings', function (Blueprint $table) {
            $table->foreign('registration_id')->on('registrations')->references('id')->onDelete('cascade');
        });

        Schema::table('session_ratings', function (Blueprint $table) {
            $table->foreign('session_registration_id')->on('session_registrations')->references('id')->onDelete('cascade');
        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('event_ratings');
        Schema::dropIfExists('session_ratings');
    }
}
