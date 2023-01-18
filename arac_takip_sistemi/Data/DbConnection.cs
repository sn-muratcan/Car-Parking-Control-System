using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.TextBox;


namespace arac_takip_sistemi.Data
{
    internal class DbConnection : IDbConnection
    {
        public int toplamucret;
        public int AracSayisi;
        public DateTime GirisTarihi;
        public DateTime CikisTarihi;
        public DateTime anlıkzaman = DateTime.Now;
        public TimeSpan ortalamasure;
        public DateTime giristarihitoplam;
        public DateTime cikistarihitoplam;
        public int toplamzaman;
        public string plakaturu;
        //readonly SqlConnection _bglnti;
        public SqlConnection BaglantiAc()
        {
            SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-GJAO1GT\\SQLEXPRESS;Initial Catalog=AracTakipSistemi;Integrated Security=True");
            //var _bglnti = new SqlConnection("Data Source=DESKTOP-GJAO1GT\\SQLEXPRESS;Initial Catalog=AracTakipSistemi;Integrated Security=True");
            baglanti.Open();
            return baglanti;
        }
        public void BaglantiKapat()
        {
            BaglantiAc().Close();
        }
        public void AracEkleme(string p1, string p2, string p3, DateTime p4, string p5)
        {
            SqlCommand komut = new SqlCommand("insert into tbl_Arac_Giris (AracPlaka,AracMarkaModel,AracTuru,GirisTarihi,IcerdeDisarida) values (@p1,@p2,@p3,@p4,@p5)",BaglantiAc());
            komut.Parameters.AddWithValue("@p1", p1);
            komut.Parameters.AddWithValue("@p2", p2);
            komut.Parameters.AddWithValue("@p3", p3);
            komut.Parameters.AddWithValue("@p4", p4);
            komut.Parameters.AddWithValue("@p5", p5);
            komut.ExecuteNonQuery();
            BaglantiKapat();
        }
        public void UcretEkleme(string plakano,int ucret)
        {
            SqlCommand komut = new SqlCommand("Update tbl_Arac_Giris set Ucret=@p2 where AracPlaka = @p1 and IcerdeDisarida = 'İçeride'", BaglantiAc());
            komut.Parameters.AddWithValue("@p1", plakano);
            komut.Parameters.AddWithValue("@p2", ucret);
            komut.ExecuteNonQuery();
            BaglantiKapat();
        }
        public void AracSayi()
        {            
            SqlCommand da = new SqlCommand("Select count(*) from tbl_Arac_Giris", BaglantiAc());
            AracSayisi = Convert.ToInt32(da.ExecuteScalar());
            BaglantiKapat();
        }
        public void verilerigoster(string veriler, DataGridView Tablo)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(veriler,BaglantiAc());
            da.Fill(dt);
            Tablo.DataSource = dt;
            Tablo.ReadOnly = true;
        }
        public void aracgirissaati(string plaka)
        {     
            SqlCommand komut3 = new SqlCommand("Select GirisTarihi,CikisTarihi From tbl_Arac_Giris where AracPlaka=@p1", BaglantiAc());
            komut3.Parameters.AddWithValue("@p1", plaka);
            SqlDataReader dr3 = komut3.ExecuteReader();
            while (dr3.Read())
            {
                GirisTarihi = Convert.ToDateTime(dr3[0]);
                CikisTarihi= Convert.ToDateTime(dr3[1]);
            }
            BaglantiKapat();
        }

        public void plakalarıgetirme(ComboBox plaka)
        {
            SqlCommand komut3 = new SqlCommand("Select AracPlaka From tbl_Arac_Giris where IcerdeDisarida = 'İçeride' ", BaglantiAc());
            SqlDataReader dr3 = komut3.ExecuteReader();
            while (dr3.Read())
            {
                plaka.Items.Add(dr3[0]);
            }
            BaglantiKapat();
        }
        public void aracDısarıCıkarma(string plakano)
        {
            SqlCommand komut = new SqlCommand("Update tbl_Arac_Giris set IcerdeDisarida = 'Dışarıda' where AracPlaka=@p1 and IcerdeDisarida = 'İçeride'", BaglantiAc());
            komut.Parameters.AddWithValue("@p1", plakano);
            komut.ExecuteNonQuery();
            BaglantiKapat();
        }
        public void ucrethesaplama()
        {
            SqlCommand komut3 = new SqlCommand("Select Sum(Ucret) From tbl_Arac_Giris", BaglantiAc());
            toplamucret += Convert.ToInt32(komut3.ExecuteScalar());
            BaglantiKapat();
        }
        public void araccikistarihi(string plakano, DateTime p2)
        {
            SqlCommand komut1 = new SqlCommand("update tbl_Arac_Giris set CikisTarihi = @p2 where AracPlaka=@p1 and IcerdeDisarida = 'İçeride'", BaglantiAc());
            komut1.Parameters.AddWithValue("@p1", plakano);
            komut1.Parameters.AddWithValue("@p2", p2);
            komut1.ExecuteNonQuery();
            BaglantiKapat();
        }
        public void toplamsure(int sure)
        {
            SqlCommand komut = new SqlCommand("insert into tbl_toplam_sure (toplamsure) values(@p1)",BaglantiAc());
            komut.Parameters.AddWithValue("@p1", sure);
            komut.ExecuteNonQuery();
            BaglantiKapat();
        }
        public void toplamdakika()
        {
            SqlCommand komut3 = new SqlCommand("Select Sum(toplamsure) From tbl_toplam_sure", BaglantiAc());
            toplamzaman += Convert.ToInt32(komut3.ExecuteScalar());
            BaglantiKapat();
        }
        public void turgosterme(ComboBox cm1)
        {
            SqlCommand komut = new SqlCommand("Select AracTuru From tbl_Arac_Giris where AracPlaka=@p1 and IcerdeDisarida = 'İçeride'", BaglantiAc());
            komut.Parameters.AddWithValue("@p1", cm1.Text);
            plakaturu = Convert.ToString(komut.ExecuteScalar());
        }
    }
}
