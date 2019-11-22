using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QLBH_ProductManagement.DAO;
using QLBH_ProductManagement.DTO;

namespace QLBH_ProductManagement.BUS
{
    public class UnitBUS
    {
        UnitDAO unitDAO = new UnitDAO();
        public List<UnitDTO> getUnit()
        {
            return unitDAO.getUnit();
        }
    }
}
