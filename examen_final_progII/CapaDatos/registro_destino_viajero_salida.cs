using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace examen_final_progII.CapaDatos
{
    public class registro_destino_viajero_salida
    {
        public static string pais_destino { get; set; }
        public static int codigo_viajero { get; set; }
        public static DateTime fecha_salida { get; set; }
        public static string numero_pasaporte_viajero { get; set; }
        public static int tipo_transporte { get; set; }
    }
}