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
    /// Interaction logic for ViewData.xaml
    /// </summary>
    public partial class ViewData : Window
    {
        System.Windows.Data.CollectionViewSource tCustomerViewSource;
        public ViewData()
        {
            InitializeComponent();
        }
        

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

             tCustomerViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("tCustomerViewSource")));
            // Load data by setting the CollectionViewSource.Source property:
            TEntities ctx = new TEntities();

            tCustomerViewSource.Source = ctx.TCustomers.ToList();
        }

        private void btnNext_Click(object sender, RoutedEventArgs e)
        {
            tCustomerViewSource.View.MoveCurrentToNext();
        }

        private void btnPrevious_Click(object sender, RoutedEventArgs e)
        {
            tCustomerViewSource.View.MoveCurrentToPrevious();
        }
    }
}
