<?php
final class GenerarPdf{
    public function __construct(){
            
    }

    public static function  generarpdf($asesorias){
        
        $pdf=new FPDF();
        $pdf->AddPage();
        $pdf->SetFont('Arial','B',10);
       //establecemos el tipo de letra y creamos el titulo de la pagina.

$pdf->Cell(30,6,'',0,0,'C');
$pdf->Cell(100,6,'ASESORIAS REGISTRADAS',1,0,'C');

$pdf->Ln(10);

//Creamos las celdas para los titulo de cada columna y le asignamos un fondo gris y el tipo de letra
$pdf->SetFillColor(232,232,232);
$pdf->Cell(30,6,'NOMBRE',1,0,'C',1);
$pdf->Cell(25,6,'DNI',1,0,'C',1);
$pdf->Cell(25,6,'TELEFONO',1,0,'C',1);
$pdf->Cell(40,6,'EMAIL',1,0,'C',1);
$pdf->Cell(30,6,'DOMICILIO',1,0,'C',1);
$pdf->Cell(45,6,'DESCRIPCION',1,0,'C',1);
$pdf->Ln(10);
//Mostramos cada una de las filas de asesoria.

foreach ($asesorias as $asesoria )
{
    $nombre= $asesoria->nombre_as;
    $dni=$asesoria->dni_as;
    $telefono=$asesoria->telefono_as;
    $email=$asesoria->email_as;
    $domicilio=$asesoria->domicilio_as;
    $descripcion=$asesoria->descripcion_as;
    $pdf->Cell(30,15,$nombre,1,0,'L',0);
    $pdf->Cell(25,15,$dni,1,0,'R',1);
    $pdf->Cell(25,15,$telefono,1,0,'R',1);
    $pdf->Cell(40,15,$email,1,0,'R',1);
    $pdf->Cell(30,15,$domicilio,1,0,'R',1);
    $pdf->Cell(45,15,$descripcion,1,0,'R',1);
    $pdf->Ln(15);
    
    }
        ob_start(); 
        $pdf->Output();
        ob_end_flush(); 
    }
}
?>
    