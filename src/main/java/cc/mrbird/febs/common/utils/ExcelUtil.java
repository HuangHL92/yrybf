package cc.mrbird.febs.common.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.DecimalFormat;

import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.FormulaEvaluator;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.util.StringUtils;

public class ExcelUtil {

	
	
    public static Workbook getWorkbok( FileInputStream fis, File file) throws IOException {
        Workbook wb = null;
        if (file.getName().endsWith("xls")) { // Excel 2003
            wb = new HSSFWorkbook(fis);
        } else if (file.getName().endsWith("xlsx")) { // Excel 2007/2010
            wb = new XSSFWorkbook(fis);
        }
        return wb;
    }
    
    
    //获取单元格各类型值，返回字符串类型
    public static String getCellValueByCell(Cell cell,FormulaEvaluator evaluator) {
    	//FormulaEvaluator evaluator=workbook.getCreationHelper().createFormulaEvaluator();
    	//判断是否为null或空串
        if (cell==null || cell.toString().trim().equals("")) {
            return "";
        }
        String cellValue = "";
        int cellType=cell.getCellType();
        if(cellType==Cell.CELL_TYPE_FORMULA){ //表达式类型
            cellType=evaluator.evaluate(cell).getCellType();
        }
         
        switch (cellType) {
        case Cell.CELL_TYPE_STRING: //字符串类型
            cellValue= cell.getStringCellValue().trim();
            cellValue=StringUtils.isEmpty(cellValue) ? "" : cellValue; 
            break;
        case Cell.CELL_TYPE_BOOLEAN:  //布尔类型
            cellValue = String.valueOf(cell.getBooleanCellValue()); 
            break; 
        case Cell.CELL_TYPE_NUMERIC: //数值类型
             if (HSSFDateUtil.isCellDateFormatted(cell)) {  //判断日期类型
                 cellValue =    DateUtil.getDateFormat(cell.getDateCellValue(), "yyyy-MM-dd");
             } else {  //否
                 cellValue = new DecimalFormat("#.######").format(cell.getNumericCellValue()); 
             } 
            break;
        default: //其它类型，取空串吧
            cellValue = "";
            break;
        }
        return cellValue;
    }
}
