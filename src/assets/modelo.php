<?php namespace App\Models;
use CodeIgniter\Database\ConnectionInterface;
use CodeIgniter\Model;


class TareaModel extends Model
{
    protected $table = 'reservas';

    protected $allowedFields = ['fecha_entrada', 'fecha_salida', 'paxes', 'id_hotel'];
}
