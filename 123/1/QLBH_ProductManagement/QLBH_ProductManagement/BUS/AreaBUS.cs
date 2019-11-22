using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using QLBH_ProductManagement.DAO;
using QLBH_ProductManagement.DTO;

namespace QLBH_ProductManagement.BUS
{
    public class AreaBUS
    {
        AreaDAO areaDAO = new AreaDAO();
        public List<AreaDTO> getArea()
        {
            return areaDAO.getArea();
        }
    }
}
