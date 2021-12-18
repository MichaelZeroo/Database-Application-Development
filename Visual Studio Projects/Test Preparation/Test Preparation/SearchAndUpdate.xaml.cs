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
    /// Interaction logic for SearchAndUpdate.xaml
    /// </summary>
    public partial class SearchAndUpdate : Window
    {
        TEntities ctx = new TEntities();
        public SearchAndUpdate()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            System.Windows.Data.CollectionViewSource tCustomerViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("tCustomerViewSource")));
            // Load data by setting the CollectionViewSource.Source property:
            // tCustomerViewSource.Source = [generic data source]
        }

        private void btnSearch_Click(object sender, RoutedEventArgs e)
        {
            string phone = txtPhone.Text;
           
            tCustomerDataGrid.ItemsSource = ctx.TCustomers.Where(c => c.Phone == phone).ToList();
        }

        private void btnUpdate_Click(object sender, RoutedEventArgs e)
        {
            ctx.SaveChanges();
        }
    }
}
