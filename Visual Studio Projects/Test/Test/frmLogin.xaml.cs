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

namespace Test
{
    /// <summary>
    /// Interaction logic for frmLogin.xaml
    /// </summary>
    public partial class frmLogin : Window
    {
        public frmLogin()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            string username = unTextBox.Text;
            string password = pwdTextBox.Text;

            GS02_Michael_TestEntities ctx = new GS02_Michael_TestEntities();
            User us = ctx.Users.Where(u => u.User_Name == username && u.Password == password).FirstOrDefault();
            if(us == null)
            {
                MessageBox.Show("Sorry Wrong login in details, try again");
                unTextBox.Clear(); pwdTextBox.Clear();
            }
            else if(us.Position == "Manager")
            {
                MessageBox.Show("Welcome");
                managerWindow form = new managerWindow();
                form.Show();
                this.Hide();
            }else if(us.Position == "Staff")
            {
                MessageBox.Show("Welcome");
                staffWindow staff = new staffWindow();
                staff.Show();
                this.Hide();
            }

        }

        private void btnExit_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
    }
}
