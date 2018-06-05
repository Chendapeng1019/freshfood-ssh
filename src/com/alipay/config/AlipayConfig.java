package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id ="2016091200494878";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCgkU54zO95SwcX+9peMTQvikkCanlBKfActm1bnSj1YpJI5RdGzoRTZ7Qrw/gVNC+EebqEYETaHnfolXNIkVz11zLwy0dNWva6Yj57R+zHwsFzzhWnv1eOU3wOdbwMuDxZmV1ulAi4pQEFkPLvMuLBSQyb/6Q2mjBOO4A0hSe9KQqH4mhVEOvqgg2XuxGFQZ+Ws8S7s1N3TN51mhpSxQSAuDTLZpwMmWgrzKk3t7gLlsxY3x/qyMimOxQAb9iEP7mSJv97iT6Yiv9N0fQk713CF6PY7+DqCbmj1jhURqq0SFv1wHAm8z2B4NAHyvWoL37ZPkXCjBRvhqtRZVfHZpQnAgMBAAECggEABqJ6b5toOcbT4DXT7Bh0Y5J/Oc5UfFDTTxxqoGJ6Esmj6cctkwtthFTAqR5L3fRuEjdFcbrYnXqs0bt7LAB1quLdg/2iUJv1nfX5RvbN3eM6QyK82lWZtJPWiHJs9smWFM21gqAzTA3lYOmAYEnl/L6b+sYxbuAoJtNmlMT7w2EhoytR44xGNBw6j2uYR2TqRx6qbIDgZ/HpgRTnIcY+fkGhxcZdK7yyPkl8qc9Kpthzcym90Ie0K6J5CmhdjTfri+7OVJIAqeAXq9RUKAsYimN26cdqQO5EmIb/wbfQ6eb1Z7mPOjhgE/BIZ4dTjO1iNWIMp6N6CBtZgxG1kXaJQQKBgQD5ziapvGPrDHnrgPDHGnWmyLEIJze5w9KTTuZJx8gHRiDTpZ/3AqOWj5y90tPuSOjhLD2OntcXVjBjh2xDohVfH0TN6SIP0IXocgCKFOVrBc40okitg36LFvaACJiSM5OYsXSm2XWFAqJz0GFIkcpp5gcKRc1hx/gn+LD89oFanwKBgQCkjKT0xvt9neV4Vn3vYZvKSlREyd3UnPLIaQb8J2ha9cIbP3n7bx/7rfw2tdDWakeaqtEe4kzCA2hnaJ8AIAqEb6LUm9M2u9kUOBV7CzGY+exKCdAJZPtYQms57fEn2BF45dv0zzrzdP/vVI4Qg5azIPI37KldPAjghKRppEPheQKBgDKN3Nc28AWuhbH6az/wA+VX8jPTM/zdO21iZ0qBKuMF9zi96QylNRQQRklINGmhybdgK6kETkVDxREvY+KgF7Ejc9o0FxeaPK9Y+vD236L0DtIqEYlD9kURxZsNokrcMz+Qkin+EkFz0gqcHkQAdTVPPxd+Ht1uCbOVKcRX4r/DAoGBAJTavmbIkr0iV3GzHJ2uuRYYg37u9oPdrytpB26X36lZZMztcVXpQw+UZvK/KzqsTjY2jJLZuQJRvuK9HAkq8xi3PKAEjt+Ws1u9GIGEsMtoWz7m/ZFiDpXbD9EJ1PxsU/IATih6RyPyFYzV+uYpg+xrw3Kf3t5+7rDcjTcb6GRRAoGAThlEKTEcDuch5Jz9OpA6eATSW0kDNCVV+ypSOrAxXWXCObwIlLg9DclNO0rSRL/67/sYwBAm0Ai5oP6s/OqsN6pZeJqO6DvyZ9bsWUbl4K1Mp6iw92GSWD0ZE+j3XbCCXwqLjE64iFLWg9WHSMofwIzCY1HJc/ETsTp3TZODNKQ=";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAupQNkwYJbYi/EafqHLDn0mWUgb2+hiO+nkFkYXRk43XwXtmoSqHrzc6ecZ8tc/1CkSSyZCwr+BZw6w8P9wbp+2uoJaopubOO/LDvYyZ9mGHQS6SdqhT2V2i8k4KbkwDrgU4VwJLZkPF6aFU/+Uf7JfFBis5gBl+hmnypJ+Uqr1W8qCFmRh5xxDTMq7QyBv7/0fET6CGOBZKQCdLlx72IZVGU5wEap/PqUyUE/0+hORG8SbU4LcKCDFDbXK4EFDSgViOjLbxgnrFpXtqXsv59h+K5Tc16O5LoHUSTlrRXiDqmtR+GmQYfWd0TWgL8H2ArQrt5u0sjq2WaunuNkTGVtQIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://111.230.94.100:8080/freshfood-ssh/front/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://111.230.94.100:8080/freshfood-ssh/shop/Pay.action";
	
	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\https://openapi.alipaydev.com/gateway.do";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

