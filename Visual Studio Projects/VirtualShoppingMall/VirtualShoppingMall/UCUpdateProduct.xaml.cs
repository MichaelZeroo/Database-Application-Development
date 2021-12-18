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
using DAL;

namespace VirtualShoppingMall
{
    /// <summary>
    /// Interaction logic for UCUpdateProduct.xaml
    /// </summary>
    public partial class UCUpdateProduct : UserControl
    {
        System.Windows.Data.CollectionViewSource myCollectionViewSource = null;
        Con ctx = new Con();
        public UCUpdateProduct()
        {
            InitializeComponent();
        }

        private void UserControl_Loaded(object sender, RoutedEventArgs e)
        {
            myCollectionViewSource = (System.Windows.Data.CollectionViewSource)this.Resources["productViewSource"];
            // Do not load your data at design time.
            // if (!System.ComponentModel.DesignerProperties.GetIsInDesignMode(this))
            // {
            // 	//Load your data here and assign the result to the CollectionViewSource.

            // 	myCollectionViewSource.Source = your data
            // }
        }

        private void btnSearch_Click(object sender, RoutedEventArgs e)
        {
            int id = int.Parse(txtPID.Text);
            myCollectionViewSource.Source = ctx.Products.Where(p => p.ProductID == id).ToList();
        }

        private void btnUpdate_Click(object sender, RoutedEventArgs e)
        {
            ctx.SaveChanges();
        }
    }
}
