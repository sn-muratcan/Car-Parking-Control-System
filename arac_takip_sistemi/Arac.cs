//using arac_takip_sistemi.Application;
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
    public partial class Arac : Form
    {
        public Arac()
        {
            InitializeComponent();
        }
        public enum AracModel
        {
            Motor, Kamyonet, BinekAraç
        }
        public enum IcerdeMı
        {
            İçeride, Dışarıda
        }
        DbConnection SqlBaglanti= new DbConnection();
        public int kontenjan = 30;
        public int bosyer;
        public DateTime anlıksaat = DateTime.Now;


        private void Arac_Load(object sender, EventArgs e)
        {
            cmbAracTur.Items.AddRange(Enum.GetNames(typeof(AracModel)));
            SqlBaglanti.AracSayi();
            bosyer = kontenjan - SqlBaglanti.AracSayisi;
            SqlBaglanti.verilerigoster("Select * from tbl_Arac_Giris",dataGridView1);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if(txtAracPlaka.Text == "" || cmbAracTur.Text =="")
            {
                MessageBox.Show("Bu kısım boş geçilemez!","Hata",MessageBoxButtons.OK,MessageBoxIcon.Warning);
            }
            else
            {
                if (SqlBaglanti.AracSayisi < kontenjan)
                {
                    SqlBaglanti.AracEkleme(txtAracPlaka.Text, txtMarkaModel.Text, cmbAracTur.Text, anlıksaat, IcerdeMı.İçeride.ToString());
                    SqlBaglanti.verilerigoster("Select * from tbl_Arac_Giris", dataGridView1);
                    MessageBox.Show("Araç Girişi Yapıldı");
                }
                else
                {
                    MessageBox.Show("Otoparkımız Dolu");
                }
            }
            
        }
        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            dataGridView1.ReadOnly= true;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            AnaSayfa anaSayfa= new AnaSayfa();
            anaSayfa.Show();
            this.Hide();
        }
    }
}
