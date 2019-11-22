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
    public partial class frmGroupOfGoods : DevExpress.XtraEditors.XtraForm
    {
        public frmGroupOfGoods()
        {
            InitializeComponent();
        }
        GroupOfGoodsBUS goodsbus = new GroupOfGoodsBUS();
        private void grcGroupOfGoods_Load(object sender, EventArgs e)
        {
            List<GroupOfGoodsDTO> list = goodsbus.GetGroupOfGoods();
            grcGroupOfGoods.DataSource = list;
        }
    }
}