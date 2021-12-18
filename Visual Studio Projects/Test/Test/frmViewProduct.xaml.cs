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
    /// Interaction logic for frmViewProduct.xaml
    /// </summary>
    public partial class frmViewProduct : Window
    {
        System.Windows.Data.CollectionViewSource productViewSource;
        public frmViewProduct()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            GS02_Michael_TestEntities ctx = new GS02_Michael_TestEntities();
            productViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("productViewSource")));
            // Load data by setting the CollectionViewSource.Source property:
            productViewSource.Source = ctx.Products.ToList();
        }

        private void btnNext_Click(object sender, RoutedEventArgs e)
        {
            productViewSource.View.MoveCurrentToNext();
        }

        private void btnPrevious_Click(object sender, RoutedEventArgs e)
        {
            productViewSource.View.MoveCurrentToPrevious();
        }
    }
}
