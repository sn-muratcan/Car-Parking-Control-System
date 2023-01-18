using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace arac_takip_sistemi.Data
{
    internal interface IDbConnection
    {
        void AracEkleme(string p1,string p2, string p3, DateTime p4, string p5);
        void AracSayi();
        void verilerigoster(string veriler, DataGridView Tablo);
    }
}
