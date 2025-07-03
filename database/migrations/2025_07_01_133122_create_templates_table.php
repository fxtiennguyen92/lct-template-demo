<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('templates', function (Blueprint $table) {
            $table->id();
            $table->string('code', 7)->index();
            $table->string('related_code', 7)->nullable();
            $table->string('name');
            $table->string('description')->nullable();
            $table->boolean('one_page_flg')->default(true);
            $table->string('category')->nullable();
            $table->string('image')->nullable();
            $table->integer('order_display')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('templates');
    }
};
