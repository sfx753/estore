package kr.ac.hansung.cse.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ac.hansung.cse.model.Product;
import kr.ac.hansung.cse.service.ProductService;

@Controller
public class ProductController {//controller -> service -> dao

	
	@Autowired
	private ProductService productservice;
	
	@RequestMapping("/products")
	public String getProducts(Model model) {
		
		List<Product> products= productservice.getProducts();
		model.addAttribute("products",products);
		
		return "products"; //veiw의 logical 이름  
	}
	
	@RequestMapping("/viewProduct/{productId}")
	   public String viewProduct(@PathVariable int productId, Model model) {
		Product product = productservice.getProductById(productId);
		model.addAttribute("product",product);
	      

		return "viewProduct";
	   }
}
