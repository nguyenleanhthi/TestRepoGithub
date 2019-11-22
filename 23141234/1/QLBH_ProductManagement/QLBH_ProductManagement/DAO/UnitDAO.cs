using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QLBH_ProductManagement.DTO;

namespace QLBH_ProductManagement.DAO
{
    public class UnitDAO
    {
        public List<UnitDTO> getUnit()
        {
            string sql = "SELECT * FROM DONVITINH";
            DataTable data = ConnectionDB.getData(sql);
            List<UnitDTO> list = new List<UnitDTO>();
            for (int i = 0; i < data.Rows.Count; i++)
            {
                UnitDTO unit = new UnitDTO();
                unit.iMaDVT = data.Rows[i]["MaDVT"].ToString();
                unit.iTen = data.Rows[i]["Ten"].ToString();
                unit.iGhiChu = data.Rows[i]["GhiChu"].ToString();
                unit.iActive = bool.Parse(data.Rows[i]["Active"].ToString());
                list.Add(unit);
            }
            return list;
        }
    }
}
