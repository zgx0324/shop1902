import com.aishang.dao.IProductDao;
import com.aishang.po.OrderExt;
import com.aishang.po.Product;
import com.aishang.po.ProductBean;
import com.aishang.service.IOrderService;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.web.context.WebApplicationContext;

import javax.annotation.Resource;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import static org.springframework.test.web.servlet.setup.MockMvcBuilders.webAppContextSetup;

/**
     * @Author 爱尚实训赵国鑫
     * @ClassName  Demo
     * @Date 2019/7/7/11:13
     * @Description TODO:( )
  * */



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-applicationContext.xml"})
public class Demo {



 /*
    MockMvc mockMvc;
 @Autowired
  protected WebApplicationContext context;

  @Before
  public void initMockMvc(){
    mockMvc= MockMvcBuilders.webAppContextSetup((WebApplicationContext) context).build();
  }
*/

    @Resource
    private IOrderService orderService;
    @Resource
    private IProductDao productDao;

    @Test
    public void fun1() {
        ProductBean productBean = new ProductBean();
        productBean.setCid(1);
        productBean.setpName("韩");
        productBean.setCsid(1);
        List<Product> products = productDao.searchProducts(productBean);
        Integer integer = productDao.getRowCount(productBean);
        System.out.println(integer);
        System.out.println("1111111111111");
    }
    @Test
    public void fun2() {
        SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String date = sd.format(new Date());
        System.out.println(date);
    }
    @Test
    public void fun3() {
        OrderExt orderExt = new OrderExt();
        orderExt.setOid(9036);
        orderExt.setState(1);
        orderService.change(orderExt);


        //返回订单
        orderExt = orderService.getOrderExt(orderExt.getOid());
        System.out.println("========");
    }


}
