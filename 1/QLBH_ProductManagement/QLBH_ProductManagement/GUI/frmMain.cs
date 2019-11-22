using DevExpress.XtraEditors;
using QLBH_ProductManagement.BUS;
using QLBH_ProductManagement.DTO;
using QLBH_ProductManagement.GUI;
using QLBH_ProductManagement.Views;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace QLBH_ProductManagement
{
    public partial class frmMain : DevExpress.XtraBars.Ribbon.RibbonForm
    {
        public frmMain()
        {
            InitializeComponent();
        }
       
        public void skin()
        {
            DevExpress.LookAndFeel.DefaultLookAndFeel themes = new DevExpress.LookAndFeel.DefaultLookAndFeel();
            themes.LookAndFeel.SkinName = "Blue";
        }
        UserBUS userBUS = new UserBUS();
        private void frmMain_Load(object sender, EventArgs e)
        {
            var frmLogin = new frmLogin();
            skin();
            frmLogin.ShowDialog();     
        }

       

        private void frmMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            DialogResult dr;
            dr = XtraMessageBox.Show("Bạn có muốn thoát không? ", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if(dr == DialogResult.No)
            {
                e.Cancel = true;
                
            }
        }


        private new Form IsActive(Type ftype)
        {
            foreach(Form f in this.MdiChildren)
            {
                if(f.GetType() == ftype)
                {
                    return f;
                }
            }
            return null;
        }

        #region Danh sách button Hệ Thống

        //button phân quyền
        private void btnPhanQuyen_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Form f = IsActive(typeof(frmPhanQuyen)); // kiếm tra frmRole có đang show hay không
            if(f == null) // nếu == null thì show ra
            {
                Form formRole = new frmPhanQuyen();
                formRole.MdiParent = this;
                formRole.Show();
            }
            else
            {
                f.Activate(); // nếu frmRole đang show thì focus nó
            }
        }
        //button nhật ký hệ thống
        private void btnSystem_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Form f = IsActive(typeof(frmSystemLog)); 
            if (f == null) 
            {
                Form frmSystemLog = new frmSystemLog();
                frmSystemLog.MdiParent = this;
                frmSystemLog.Show();
            }
            else
            {
                f.Activate(); 
            }
        }
        //button thông tin
        private void btnInfor_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            frmInfor fInfor = new frmInfor();
            fInfor.ShowDialog();
        }
        //button đổi mật khẩu
        private void btnChangePassword_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            frmChangePassword fChangePassword = new frmChangePassword();
            fChangePassword.ShowDialog();
        }

        #endregion

        #region Danh sách button Danh Mục

        //button khu vực
        private void btnArea_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Form f = IsActive(typeof(frmArea));
            if (f == null)
            {
                Form frmArea = new frmArea();
                frmArea.MdiParent = this;
                frmArea.Show();
            }
            else
            {
                f.Activate();
            }
        }
        // button khách hàng
        private void btnCustomer_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Form f = IsActive(typeof(frmCustomer));
            if (f == null)
            {
                Form frmCustomer = new frmCustomer();
                frmCustomer.MdiParent = this;
                frmCustomer.Show();
            }
            else
            {
                f.Activate();
            }
        }
        //button Nhóm hàng
        private void btnGroupOfGoods_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Form f = IsActive(typeof(frmGroupOfGoods));
            if (f == null)
            {
                Form fGroupOfGoods = new frmGroupOfGoods();
                fGroupOfGoods.MdiParent = this;
                fGroupOfGoods.Show();
            }
            else
            {
                f.Activate();
            }
        }
        private void btnDepartment_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Form f = IsActive(typeof(frmDepartment));
            if (f == null)
            {
                Form frmDepartment = new frmDepartment();
                frmDepartment.MdiParent = this;
                frmDepartment.Show();
            }
            else
            {
                f.Activate();
            }
        }

        private void btnEmployees_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Form f = IsActive(typeof(frmEmployees));
            if (f == null)
            {
                Form frmEmployees = new frmEmployees();
                frmEmployees.MdiParent = this;
                frmEmployees.Show();
            }
            else
            {
                f.Activate();
            }
        }


        #endregion

        #region Danh sách button Chức năng

        //button mua hàng
        private void btnBuy_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Form f = IsActive(typeof(frmBuy));
            if (f == null)
            {
                Form fBuy = new frmBuy();
                fBuy.MdiParent = this;
                fBuy.Show();
            }
            else
            {
                f.Activate();
            }
        }



        #endregion

        #region Danh sách button Trợ Giúp


        #endregion

        private void btnWarehouse_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Form f = IsActive(typeof(frmWarehouse));
            if (f == null)
            {
                Form frmWarehouse = new frmWarehouse();
                frmWarehouse.MdiParent = this;
                frmWarehouse.Show();
            }
            else
            {
                f.Activate();
            }
        }

        private void btnRates_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Form f = IsActive(typeof(frmRates));
            if (f == null)
            {
                Form frmRates = new frmRates();
                frmRates.MdiParent = this;
                frmRates.Show();
            }
            else
            {
                f.Activate();
            }
        }

        private void btnUnit_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Form f = IsActive(typeof(frmUnit));
            if (f == null)
            {
                Form frmUnit = new frmUnit();
                frmUnit.MdiParent = this;
                frmUnit.Show();
            }
            else
            {
                f.Activate();
            }
        }
    }
}
