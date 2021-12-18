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

namespace Test_Preparation
{
    /// <summary>
    /// Interaction logic for NewCustomerForm.xaml
    /// </summary>
    public partial class NewCustomerForm : Window
    {
        public NewCustomerForm()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            System.Windows.Data.CollectionViewSource tCustomerViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("tCustomerViewSource")));
            // Load data by setting the CollectionViewSource.Source property:
            // tCustomerViewSource.Source = [generic data source]
        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
          
            TCustomer newCustomer = new TCustomer();
            newCustomer.Name = nameTextBox.Text; 
            newCustomer.Email = emailTextBox.Text; 
            newCustomer.Phone = phoneTextBox.Text;
            TEntities ctx = new TEntities();
            ctx.TCustomers.Add(newCustomer);
            ctx.SaveChanges();
            MessageBox.Show("New Customer record added successfully");
            nameTextBox.Clear(); emailTextBox.Clear();
            phoneTextBox.Clear();
        }

        private void loginButton_Click(object sender, RoutedEventArgs e)
        {
            this.Hide();
            MainWindow form = new MainWindow();
            form.Show();
        }
    }
}
