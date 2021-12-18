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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Test_Preparation
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void loginButton_Click(object sender, RoutedEventArgs e)
        {
            string name = nameTextBox.Text;
            string email = emailTextBox.Text;
            TEntities ctx = new TEntities();
      TCustomer cust = ctx.TCustomers.Where(c => c.Name == name && c.Email == email).FirstOrDefault();
            if(cust==null)
            {
                MessageBox.Show("Sorry you entered wrong login details, try again");
                nameTextBox.Clear(); emailTextBox.Clear();
            }
            else
            {
                SearchAndUpdate form = new SearchAndUpdate();
                form.Show();
                this.Hide();
            }
        }

        private void registerButton_Click(object sender, RoutedEventArgs e)
        {
            NewCustomerForm registrationForm = new NewCustomerForm();
            registrationForm.Show();
            this.Hide();
        }
    }
}
