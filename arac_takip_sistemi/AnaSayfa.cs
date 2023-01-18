using arac_takip_sistemi.Data;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace arac_takip_sistemi
{
    public partial class AnaSayfa : Form
    {
        public AnaSayfa()
        {
            InitializeComponent();
        }
        Arac Arc_Grs = new Arac();
        CikisSayfa Arc_Cks = new CikisSayfa();
        DbConnection SqlBaglanti = new DbConnection();
        int ortalamaucret;
        TimeSpan ortalamasure;
        int dakika;
        int saat;
        int gun;
        private void button1_Click(object sender, EventArgs e)
        {
            Arc_Grs.Show();
            this.Hide();
        }
        private void button2_Click(object sender, EventArgs e)
        {
            Arc_Cks.Show();
            this.Hide();
        }
        private void AnaSayfa_Load(object sender, EventArgs e)
        {
            SqlBaglanti.AracSayi();
            Arc_Grs.bosyer = Arc_Grs.kontenjan - SqlBaglanti.AracSayisi;
            label5.Text = Arc_Grs.bosyer.ToString();
            label4.Text = SqlBaglanti.AracSayisi.ToString();
            SqlBaglanti.ucrethesaplama();
            SqlBaglanti.AracSayi();
            ortalamaucret = SqlBaglanti.toplamucret / SqlBaglanti.AracSayisi;
            label8.Text = ortalamaucret.ToString();
            SqlBaglanti.toplamdakika();
            SqlBaglanti.AracSayi();
            SqlBaglanti.toplamzaman = SqlBaglanti.toplamzaman / SqlBaglanti.AracSayisi;
            dakika = SqlBaglanti.toplamzaman % 60;
            if (SqlBaglanti.toplamzaman / 60 > 24)
            {
                gun = (SqlBaglanti.toplamzaman / 60)/24;
                saat = (SqlBaglanti.toplamzaman/60) %24;
            }
            else
            {
                gun = 0;
                saat = SqlBaglanti.toplamzaman / 60;
            }
            label6.Text =  gun.ToString() + " Gün "+saat.ToString()+" Saat "+dakika.ToString()+" Dakika";

        }
        private void button3_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
  
    }
}
