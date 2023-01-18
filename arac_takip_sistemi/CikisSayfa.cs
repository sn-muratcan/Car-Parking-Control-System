using arac_takip_sistemi.Data;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace arac_takip_sistemi
{
    public partial class CikisSayfa : Form
    {
        public CikisSayfa()
        {
            InitializeComponent();
        }
        DbConnection Sqlbaglanti = new DbConnection();
        int toplamdakika;
        int ucret;
        int farkSaat;
        int farkgun;
        public DateTime anlıksaat = DateTime.Now;
        TimeSpan fark;
        public int ortalamasure;
        DateTime anlıkzaman = DateTime.Now;
        public TimeSpan kalissuresi;


        private void Form1_Load(object sender, EventArgs e)
        {
            Sqlbaglanti.plakalarıgetirme(comboBox1);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Sqlbaglanti.turgosterme(comboBox1);
            label1.Text = Sqlbaglanti.plakaturu;
            Sqlbaglanti.araccikistarihi(comboBox1.Text, anlıkzaman);
            //label4.Text  = Sqlbaglanti.GirisTarihi.ToString();

            Sqlbaglanti.aracgirissaati(comboBox1.Text);

            fark = (Sqlbaglanti.CikisTarihi - Sqlbaglanti.GirisTarihi);
            //                              ÜCRETLENDİRME İLE İLGİLİ
            farkgun = Convert.ToInt32(fark.Days);
            farkSaat = Convert.ToInt32(fark.Hours);
            //                              KALDIĞI SÜRE İLE İLGİLİ
            lbl_kaldıgısure.Text= fark.Days.ToString()+" "+"Gün "+ fark.Hours.ToString() + " " + "Saat " +fark.Minutes.ToString()+" "+"Dakika";
            toplamdakika = Convert.ToInt32(fark.Days) * 24*60+ Convert.ToInt32(fark.Hours) * 60+ Convert.ToInt32(fark.Minutes);
            Sqlbaglanti.toplamsure(toplamdakika);


            if(Sqlbaglanti.plakaturu == "Motor")
            {
                if (farkSaat < 1)
                {
                    ucret = farkgun * 50 + 15;
                    lbl_ucret.Text = ucret.ToString();
                }
                else if (farkSaat == 1 || farkSaat == 3)
                {
                    ucret = farkgun * 50 + 20;
                    lbl_ucret.Text = ucret.ToString();
                }
                else if (farkSaat == 2 || farkSaat == 3)
                {
                    ucret = farkgun * 50 + 25;
                    lbl_ucret.Text = ucret.ToString();
                }
                else if (farkSaat > 3 && farkSaat < 8)
                {
                    ucret = farkgun * 50 + 30;
                    lbl_ucret.Text = ucret.ToString();
                }
                else if (farkSaat > 7 && farkSaat < 24)
                {
                    ucret = farkgun * 50 + 50;
                    lbl_ucret.Text = ucret.ToString();
                }
            }
            if (Sqlbaglanti.plakaturu == "Kamyonet")
            {
                if (farkSaat < 1)
                {
                    ucret = farkgun * 100 + 40;
                    lbl_ucret.Text = ucret.ToString();
                }
                else if (farkSaat == 1 || farkSaat == 3)
                {
                    ucret = farkgun * 100 + 50;
                    lbl_ucret.Text = ucret.ToString();
                }
                else if (farkSaat == 2 || farkSaat == 3)
                {
                    ucret = farkgun * 100 + 60;
                    lbl_ucret.Text = ucret.ToString();
                }
                else if (farkSaat > 3 && farkSaat < 8)
                {
                    ucret = farkgun * 100 + 70;
                    lbl_ucret.Text = ucret.ToString();
                }
                else if (farkSaat > 7 && farkSaat < 24)
                {
                    ucret = farkgun * 100 + 80;
                    lbl_ucret.Text = ucret.ToString();
                }
            }
            if (Sqlbaglanti.plakaturu == "BinekAraç")
            {
                if (farkSaat < 1)
                {
                    ucret = farkgun * 80 + 30;
                    lbl_ucret.Text = ucret.ToString();
                }
                else if (farkSaat == 1 || farkSaat == 3)
                {
                    ucret = farkgun * 80 + 35;
                    lbl_ucret.Text = ucret.ToString();
                }
                else if (farkSaat == 2 || farkSaat == 3)
                {
                    ucret = farkgun * 80 + 40;
                    lbl_ucret.Text = ucret.ToString();
                }
                else if (farkSaat > 3 && farkSaat < 8)
                {
                    ucret = farkgun * 80 + 45;
                    lbl_ucret.Text = ucret.ToString();
                }
                else if (farkSaat > 7 && farkSaat < 24)
                {
                    ucret = farkgun * 80 + 60;
                    lbl_ucret.Text = ucret.ToString();
                }
            }
            //Ucreti Araç plakası combobox1 deki eşit olan değere atıyoruz(sql)
            Sqlbaglanti.UcretEkleme(comboBox1.Text,ucret);
         
            Sqlbaglanti.aracDısarıCıkarma(comboBox1.Text);
            MessageBox.Show("Çıkış Yapıldı");
        }

        private void button2_Click(object sender, EventArgs e)
        {
            AnaSayfa mrh = new AnaSayfa();
            mrh.Show();
            this.Hide();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedValueChanged(object sender, EventArgs e)
        {

        }
    }
}
