import java.io.*;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import DAO.porderDAO;
import model.porder;
@MultipartConfig
@WebServlet("/upload.do")
public class UploadServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
    	System.out.println("接收到");
    	req.setCharacterEncoding("utf-8");
    	resp.setCharacterEncoding("utf-8");
    	resp.setContentType("text/html;charset=utf-8");
    	String typeu=req.getParameter("typeu");
    	Part part=null;
//    	Part part2=null;
    	String filename = null;

    		part = req.getPart("imgPath");
    		System.out.println(part);
    		for(Part part2 :req.getParts()) {
    			String contentDisp = part2.getHeader("content-disposition");
    			
    			for(String token:contentDisp.split(";")) {
    				if(token.trim().startsWith("filename")) {
    					System.out.println(token.substring(token.indexOf("=")+2,token.length()-1));
    				}
    			}
    			
    		}
    	
    		filename = getFilename(part);
    		System.out.println(filename);
    		if(filename != null) {
    			writeTo(filename, part);
    		}

        	String id = req.getParameter("id") == null ? "0": req.getParameter("id");
        	String enName = req.getParameter("enName") == null ? "0": req.getParameter("enName");
        	String chName = req.getParameter("chName") == null ? "0": req.getParameter("chName");
        	String type = req.getParameter("type") == null ? "0": req.getParameter("type");
        	double percent = req.getParameter("percent") == null ? 0 : Double.parseDouble(req.getParameter("percent"));
        	int ml = req.getParameter("ml") == null ? 0: Integer.parseInt(req.getParameter("ml"));
        	int price = req.getParameter("price") == null ? 0: Integer.parseInt(req.getParameter("price"));
        	String unit = req.getParameter("unit") == null ? "0": req.getParameter("unit");
        	String place = req.getParameter("place") == null ? "0": req.getParameter("place");
        	String grape = req.getParameter("grape") == null ? "0": req.getParameter("grape");
        	String feature = req.getParameter("feature") == null ? "0": req.getParameter("feature");
        	String status = req.getParameter("status") == null ? "0": req.getParameter("status");
        	String imgPath = filename;
        	String createUser = req.getParameter("createUser") == null ? "0": req.getParameter("createUser");
        	//Data createTime = request.getParameter("createTime");
        	String updateUser = req.getParameter("updateUser") == null ? "0": req.getParameter("updateUser");	
        	//Data updateTime = request.getParameter("updateTime");
        	
        	System.out.println(typeu);

        	porder p = new porder();
        	p.setId(id);
        	p.setEnName(enName);
        	p.setChName(chName);
        	p.setType(type);
        	p.setPercent(percent);
        	p.setMl(ml);
        	p.setPrice(price);
        	p.setUnit(unit);
        	p.setPlace(place);
        	p.setGrape(grape);
        	p.setFeature(feature);
        	p.setStatus(status);
        	p.setImgPath(imgPath);
        	p.setCreateUser(createUser);
        	p.setUpdateUser(updateUser);
        	if(typeu.equals("update")){
        		new porderDAO().update(id, p);
        	}

        	
        	if(typeu.equals("upload")){
        	new porderDAO().add(p);
        	}
        	System.out.println(filename);
        	resp.sendRedirect("query.jsp");
        	//session.setAttribute("P", p);
        	//response.sendRedirect("addok.jsp");
        	//porder p = (porder) session.getAttribute("P");
        
    }
    private String getFilename(Part part) {
        String header = part.getHeader("Content-Disposition");
        String filename = header.substring(header.indexOf("filename=\"") + 10,
                header.lastIndexOf("\""));
        if(filename.equals("")) {
        	return null;
        }
        String newfilename = "imgs/"+filename+"";
        return newfilename;
    }
    private void writeTo(String filename, Part part) throws IOException,
            FileNotFoundException {
        InputStream in = part.getInputStream();
        OutputStream out = new FileOutputStream(getServletContext().getRealPath("/")+filename);
        byte[] buffer = new byte[1024];
        int length = -1;
        while ((length = in.read(buffer)) != -1) {
            out.write(buffer, 0, length);
        }
        in.close();
        out.close();
    }
}
