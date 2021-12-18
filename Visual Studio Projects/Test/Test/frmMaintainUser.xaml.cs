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
    /// Interaction logic for frmMaintainUser.xaml
    /// </summary>
    public partial class frmMaintainUser : Window
    {
        GS02_Michael_TestEntities ctx = new GS02_Michael_TestEntities();
        public frmMaintainUser()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            System.Windows.Data.CollectionViewSource userViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("userViewSource")));
            // Load data by setting the CollectionViewSource.Source property:
            // userViewSource.Source = [generic data source]
        }

        private void btnUpdate_Click(object sender, RoutedEventArgs e)
        {
            ctx.SaveChanges();
        }


        private void btnSearch_Click(object sender, RoutedEventArgs e)
        {
            string search = searchTextBox.Text;
            userDataGrid.ItemsSource = ctx.Users.Where(s => s.First_Name == search && s.Last_Name == search).ToList();

        }

    }
}
