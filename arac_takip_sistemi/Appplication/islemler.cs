using arac_takip_sistemi.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace arac_takip_sistemi.Appplication
{
    internal class islemler
    {
        public int kontenjan = 1;
        public int bosyer;
        DbConnection SqlBaglanti= new DbConnection();
       public void Otoparkbosyer()
        {
            SqlBaglanti.AracSayi();
            bosyer = kontenjan - SqlBaglanti.AracSayisi;
        }
    }
}
