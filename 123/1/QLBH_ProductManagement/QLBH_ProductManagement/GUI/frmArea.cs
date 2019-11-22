using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using QLBH_ProductManagement.BUS;
using QLBH_ProductManagement.DTO;

namespace QLBH_ProductManagement.GUI
{
    public partial class frmArea : DevExpress.XtraEditors.XtraForm
    {
        public frmArea()
        {
            InitializeComponent();
        }
        AreaBUS areaBUS = new AreaBUS();

        private void grcArea_Load_1(object sender, EventArgs e)
        {
            List<AreaDTO> list = areaBUS.getArea();
            grcArea.DataSource = list;
        }

    }
}