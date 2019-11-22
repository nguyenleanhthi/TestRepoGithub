using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QLBH_ProductManagement.DTO;

namespace QLBH_ProductManagement.DAO
{
    public class AreaDAO
    {
        public List<AreaDTO> getArea()
        {
            string sql = "SELECT * FROM KHUVUC";
            DataTable data = ConnectionDB.getData(sql);
            List<AreaDTO> list = new List<AreaDTO>();
            for (int i = 0; i < data.Rows.Count; i++)
            {
                AreaDTO area = new AreaDTO();
                area.iMaKV = data.Rows[i]["MaKV"].ToString();
                area.iTenKV = data.Rows[i]["TenKV"].ToString();
                area.iGhiChu = data.Rows[i]["GhiChu"].ToString();
                area.iActive = bool.Parse(data.Rows[i]["Active"].ToString());
                list.Add(area);
            }
            return list;
        }
    }
}
