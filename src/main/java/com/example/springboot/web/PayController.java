package com.example.springboot.web;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.example.springboot.entity.User;
import com.example.springboot.mapper.OrderMapper;
import com.example.springboot.mapper.ShopMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class PayController {
    @Autowired
    private OrderMapper orderMapper;
    @Autowired
    private ShopMapper shopMapper;
    //appid
    private final String APP_ID = "2021000121614916";
    //应用私钥
    private final String APP_PRIVATE_KEY = "MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQDdQ7vHJllBW4VZrq7gJeWVoXvdp6zhRpxg8y1WguIaASPK2PJKKUbaeC7jB1iWKQVKChfNR+wiFFsDS+qHCAhz6Td3Qdr6Eino+hm3Jt9SuPMJ1VwaxkRNw25/yTWlsrhQ6fIaCtOqROHud/2aflxVwwhJ8ySV0Z2n2XGMo+Ks/GtTPAwJiURtW6F0QwmNCI7AfQWXt4DR/sophTq6daWkxe4JRby8pQtW0QJcY0r0Tn6bS83yAhzsOSQoCzKu/QYjstFqZAzkSvjxIHDJSu3GrfAVcrG9YxuBb5rSEJ9niDLy5wi85A4nDwBBTFpumLrapYBZ937tsvxF4pOhfddxAgMBAAECggEBAKJMtMh30LCoOUB3ab7xDV6cfQcxnxX/fWV/+pmil8cLXv3D9LWBYX+O+JV/JfO/UynkDWF+iC7XT4szfGxf8BNV1mGb5MvZ1vQVwBcgZF+BWoS0BEN/e0qvN7Z0GO3aEmkHsZZ4qpoSvMb3LQbN+VzPGp1jxEpA36vnS+slq3fGsk7u473TC078mCHKMQSK8vuxxBT4O3ADVT1uTrJz/dossrHNpz+CU5lSXogWRC+VQ+GUb+IrQOguJWz2Y21i5B3yfKo36k9OXjZBV+si7HXMntbMF2gjvcu53nMNqFXbywL7YaijXYnd/x/6IJ8pHKEOkZSNsZdsQEUFRKWfQgECgYEA+REy2bctaI3XFt4hI/XSmdina29/DmE7hU3SkKGLn+MVLr2TzIjj9LWfVc8r7CmVIzfpEGJiR664U9rpd7o8dassM8LM0x9vwU3qylqZB6s+ANl5iBNHxefOqHxtT/TAdEcvNIBaDWHkgw/oxdHzd+Jeq8q9KGSjHfrCiHb5KJkCgYEA42xrVs6jNmSm4kWD/v0Yb3shI1hA4VWL0JdYHJEf9Lmq4n5ZEDZCafD1DROPUn27roMqaW2RarcNzIkjhH1YelAabvrE/+A/DH+5TWlP1FaFgmia+kSGZ/b5H2y07gorIeYteSFf1gMBoLEa+3K3F4vLAzxIv2VqOv2EG87xtJkCgYEA49Gxe6er51jmh0pDcgsmygZ8jS79Pv/9W5+lnRnHB0bFV22cxZfpOyruRaUsfeZDPmWjz5LOZtcQT9OLfjJhnxglZGsow2yb4msM+m8ITxV5r3k9SxSnsASq6T53Fo2/hBygtxs4Q8lpJeDlgBzc4Km1Atp9T3dOJNv8GKsKmPECgYBZelnNIKX0i6thUUp6s6e+jOpf1qRIQ/kri7A+JRc2mSpTzLRL/Z0pw4UWrQBxy0hhg/fW3SYen4ENXVOdGBgMn6GW0pFZvyfvSf1lKK8g8x26Tl/TYcyj8PbZV1LkaRnJT5/KjcgAEtS8HZJpJhxFZlnsnvZcX5FpPj+RFV3h2QKBgQDvus61kiTlKMVHStOaTqN4xjyUrGy2RD6Kb+GKhaCHDwqEylVuBP46oQQfjNY0mSs3oBy4nQhpXp01muuNcDPE3HB7Yj0jQe9j3PsSPNoBWKaObD+RApLTHq7ik8kd38Hsd+Roq86YysLcBZsMzmMZQTHfxsADflsTKieI2hRQQw==";
    private final String CHARSET = "UTF-8";
    // 支付宝公钥
    private final String ALIPAY_PUBLIC_KEY = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAukI2QvfAAOx5FHL+HZ9aXVpPfUTIM/JFUnUmwerDBSatSHlGp1ITPiCAZa4XMq7FF+sxVco0yRQx63Gfm2qL7/pSuFgRSbpKCp0m3A/Hm2EVTUPTQY8rDnUnS8alwm6M12Vz5uAoUCN4eLJAFQwe/gorRzmXppFH7PG3EAeB//E/ePC61/VJg+O/rwi7ZvtEpJHEVwsZC1VyweOXH5QtX3nuxC6Lk0tJ699Y53wbRSUg/P03I2zB5fUOt5DFOFFa3WCM98m7Ml0T396N7P+Mno+JPjPEvM72hnN4cZPky5ViA9PZYNnA1h/LzmApIbtsN5qagPjFzJHAogIzUBtMwwIDAQAB";
    //这是沙箱接口路径,正式路径为https://openapi.alipay.com/gateway.do
    private final String GATEWAY_URL = "https://openapi.alipaydev.com/gateway.do";
    private final String FORMAT = "JSON";
    //签名方式
    private final String SIGN_TYPE = "RSA2";
    //支付宝异步通知路径,付款完毕后会异步调用本项目的方法,必须为公网地址
    private final String NOTIFY_URL = "http://127.0.0.1/notifyUrl";
    //支付宝同步通知路径,也就是当付款完毕后跳转本项目的页面,可以不是公网地址
    private final String RETURN_URL = "http://localhost:8080/returnUrl";


    @ResponseBody
    @RequestMapping("/pay/alipay")
    public String alipay(HttpServletRequest request) throws AlipayApiException{
        HttpSession session = request.getSession();
        Double amount = (Double) session.getAttribute("amount");
        User user1 = (User) session.getAttribute("user");
        String gname = (String) session.getAttribute("gname");

        if (user1 == null){
            return "register/login";
        }
        else {
            //生成订单号（支付宝的要求？）
            String time = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
            String user = UUID.randomUUID().toString().replace("-", "").toUpperCase();

            System.out.println("user:" + user);
            System.out.println("time:" + time);

            String OrderNum = time + user;

            //调用封装好的方法（给支付宝接口发送请求）
            return sendRequestToAlipay(OrderNum, amount, gname);
        }
    }
    /*
参数1：订单号
参数2：订单金额
参数3：订单名称
 */
    //支付宝官方提供的接口
    private String sendRequestToAlipay(String outTradeNo, Double totalAmount, String subject) throws AlipayApiException {

        //获得初始化的AlipayClient
        AlipayClient alipayClient = new DefaultAlipayClient(GATEWAY_URL,APP_ID,APP_PRIVATE_KEY,FORMAT,CHARSET,ALIPAY_PUBLIC_KEY,SIGN_TYPE);

        //设置请求参数
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
        alipayRequest.setReturnUrl(RETURN_URL);
        alipayRequest.setNotifyUrl(NOTIFY_URL);

        //商品描述（可空）
        String body="";
        alipayRequest.setBizContent("{\"out_trade_no\":\"" + outTradeNo + "\","
                + "\"total_amount\":\"" + totalAmount + "\","
                + "\"subject\":\"" + subject + "\","
                + "\"body\":\"" + body + "\","
                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");

        //请求
        String result = alipayClient.pageExecute(alipayRequest).getBody();
        System.out.println(result);
        return result;
    }


    @RequestMapping("/returnUrl")
    public String returnUrlMethod(HttpServletRequest request, HttpSession session, Model model) throws AlipayApiException, UnsupportedEncodingException, UnsupportedEncodingException {
        System.out.println("=================================同步回调=====================================");

        // 获取支付宝GET过来反馈信息
        Map<String, String> params = new HashMap<String, String>();
        Map<String, String[]> requestParams = request.getParameterMap();
        for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
            String name = (String) iter.next();
            String[] values = (String[]) requestParams.get(name);
            String valueStr = "";
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
            }
            // 乱码解决，这段代码在出现乱码时使用
            valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
            params.put(name, valueStr);
        }

        System.out.println(params);//查看参数都有哪些
        //验证签名（支付宝公钥）
        boolean signVerified = AlipaySignature.rsaCheckV1(params, ALIPAY_PUBLIC_KEY, CHARSET, SIGN_TYPE); // 调用SDK验证签名
        //验证签名通过
        if(signVerified){
            // 商户订单号
            String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"), "UTF-8");

            // 支付宝交易流水号
            String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"), "UTF-8");

            // 付款金额
            float money = Float.parseFloat(new String(request.getParameter("total_amount").getBytes("ISO-8859-1"), "UTF-8"));

            System.out.println("商户订单号="+out_trade_no);
            System.out.println("支付宝交易号="+trade_no);
            System.out.println("付款金额="+money);

            //对数据库的操作







            //跳转到提示页面（成功或者失败的提示页面）
            model.addAttribute("flag",1);
            model.addAttribute("msg","支持");
            return "common/payTips";
        }else{
            //跳转到提示页面（成功或者失败的提示页面）
            model.addAttribute("flag",0);
            model.addAttribute("msg","支持");
            return "common/payTips";
        }
    }


}



