<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableBuku extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('m_buku', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('kategori');
            $table->string('nama',115);
            $table->text('keterangan');
            $table->integer('stock');
            $table->timestamps();

            $table->engine = 'InnoDB';
            // $table->foreign('kategori')->references('id')->on('m_kategori')->onDelete('restrict');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('m_buku', function (Blueprint $table) {
            //
        });
    }
}
