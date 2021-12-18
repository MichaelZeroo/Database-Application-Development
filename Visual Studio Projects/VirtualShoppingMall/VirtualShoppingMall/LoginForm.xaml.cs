using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using DAL;

namespace VirtualShoppingMall
{
    /// <summary>
    /// Interaction logic for LoginForm.xaml
    /// </summary>
    public partial class LoginForm : Window
    {
        
        public LoginForm()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            string un = txtUN.Text;
            string pwd = txtPwd.Text;
          Login data=  DataStore.getLoginDetail(un, pwd);
            if(data==null)
            {
                MessageBox.Show("Please enter correct login details");
            }
            else
            {
                MainForm form = new MainForm();
                form.Show();
                this.Hide();

            }


        }
    }
}
