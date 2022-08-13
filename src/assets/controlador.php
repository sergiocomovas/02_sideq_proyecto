<?php

namespace App\Controllers;

//USE APP
use App\Models\TareaModel;

class TareaController extends BaseController
{
    public function index()
    {
        return 0;
    }

    public function Tarea2P1($fechaentrada="2022-09-01")
    {
      // ejemplo: https://tbot.comovas.es/tarea21api/2022-09-01
      header("Access-Control-Allow-Origin: *");

      $model = new TareaModel();

      $where = "`fecha_entrada` = '$fechaentrada'";
      $resultado = $model->where($where)->findAll();

      return json_encode($resultado);

    }

    public function Tarea2P2($estanciainicio="2022-09-10", $estanciafin="2022-09-15")
    {
      // ejemplo:https://tbot.comovas.es/tarea22api/2022-09-10/2022-09-11
      header("Access-Control-Allow-Origin: *");

      $model = new TareaModel();

      // $where = "`fecha_entrada` BETWEEN '1999-01-01 00:00:00.000000' AND '$estanciafin' AND `fecha_salida` BETWEEN '$estanciainicio' AND '2999-01-01'";

      $where = "`fecha_entrada` <= '$estanciafin' AND `fecha_salida` >= '$estanciainicio'";

      $resultado = $model->where($where)->findAll();

      return json_encode($resultado);

    }

     public function Tarea2P3($mesinicio="9", $mesfin="12", $anyo="2022")
    {
      // ejemplo: https://tbot.comovas.es/tarea23api/9/12
      header("Access-Control-Allow-Origin: *");

      // SELECT DISTINCT year(fecha_entrada), month(fecha_entrada) FROM `reservas` WHERE

      $a = array();

      $db = \Config\Database::connect();
      $query   = $db->query("SELECT DISTINCT month(fecha_entrada) MES FROM `reservas` WHERE month(fecha_entrada) >= $mesinicio AND month(fecha_entrada) <= $mesfin AND year(fecha_entrada) = 2022");
      $results = $query->getResult();

      foreach ($results as $row) {
          $query2 = $db->query("SELECT sum(paxes) TOTAL, month(fecha_entrada) MES FROM `reservas` WHERE month(fecha_entrada) = $row->MES");
          //$results2 = $query2->getResult();
         array_push($a, $query2->getResult());
      }

      $json = json_encode($a);
      $ajuste = str_replace('[{','{',$json);
      $ajuste = str_replace('}]','}',$ajuste);
      return $ajuste;

    }

    public function TareaBuscador(
      $filtrocreaciondesde,
      $filtrocreacionhasta,
      $filtrofechaentradadesde,
      $filtrofechaentradahasta,
      $filtrohotel=null)
    {
      // ejemplo: https://tbot.comovas.es/tareabuscadorapi/2022-01-01/2023-10-01/2022-12-01/2023-12-01/
      header("Access-Control-Allow-Origin: *");

      if (!is_null($filtrohotel) or $filtrohotel == "") {
        $wherehotel = "`id_hotel` = $filtrohotel AND";
      }else{
        $wherehotel = "";
      }

      //SELECT * FROM `reservas` WHERE `id_hotel` = 1 AND `fecha_creacion` BETWEEN '2022-06-01 00:00:00.000000' AND '2023-02-09 23:59:59.999999' AND `fecha_entrada` BETWEEN '2022-03-01' AND '2023-02-01' ORDER BY `fecha_entrada` ASC

      $model = new TareaModel();
      $where = $wherehotel."`fecha_entrada` BETWEEN '$filtrofechaentradadesde' AND '$filtrofechaentradahasta' AND `fecha_creacion` BETWEEN '$filtrocreaciondesde' AND '$filtrocreacionhasta'";
      $resultado = $model->where($where)->findAll();

      return json_encode($resultado);

    }

    public function TareaTodoTabla(){

      // https://tbot.comovas.es/tareatodotabla
      header("Access-Control-Allow-Origin: *");

      echo '<link rel="stylesheet" href="https://unpkg.com/mvp.css">';
      echo '<body style="padding: 20px;">';
      echo "<h1>TABLA HTML</h1><br>";

      $model = new TareaModel();
      $resultado= $model->orderBy('id', 'ASC')->findAll();

      $tabla = new \CodeIgniter\View\Table();
      $tabla->setHeading('ID','CREADO','FECHA DE ENTRADA', 'FECHA DE SALIDA', 'PAXES', 'HOTEL NÚM.');
      echo $tabla->generate($resultado);
      echo '</body>';


    }

    public function TareaTodoJson(){

      // https://tbot.comovas.es/tareatodojson
      header("Access-Control-Allow-Origin: *");

      $model = new TareaModel();
      $resultado= $model->orderBy('id', 'ASC')->findAll();

      return json_encode($resultado);

    }

    public function TareaTodoXml(){

      // https://tbot.comovas.es/tareatodoxml
      header("Access-Control-Allow-Origin: *");

      $model                = new class () extends \CodeIgniter\Model {
      protected $table      = 'reservas';
      protected $primaryKey = 'id';
      };

      $util = \CodeIgniter\Database\Config::utils();

      echo $util->getXMLFromResult($model->get());

    }

}
