package com.mulaobao.administration.util;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.mulaobao.administration.entity.CkWarehouse;
import com.mulaobao.administration.service.CkWarehouseService;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DDmcSheng {


	@Autowired
	private CkWarehouseService ckWarehouseService;

	public String show(String name) {
		List<CkWarehouse> list = ckWarehouseService.list();
		QueryWrapper<CkWarehouse> ck = new QueryWrapper<>();
		ck.eq("named", name);
		CkWarehouse one = ckWarehouseService.getOne(ck);
		CkWarehouse byId = ckWarehouseService.getById(one.getFid());
		return byId.getShpn();
	}

	public static Map<String, String> readTxtFile(String filePath) {
		Map<String, String> hashMap = new HashMap<>();
		try {
			String encoding = "utf-8";
			File file = new File(filePath);
			if (file.isFile() && file.exists()) { //判断文件是否存在
				InputStreamReader read = new InputStreamReader(
						new FileInputStream(file), encoding);//考虑到编码格式
				BufferedReader bufferedReader = new BufferedReader(read);
				String lineTxt = null;
				ArrayList<String> strings = new ArrayList<String>();
				int i = 1;
				while ((lineTxt = bufferedReader.readLine()) != null) {
					strings.add(lineTxt);
				}
				read.close();
				if (strings.size() == 1) {
					int i1 = strings.get(0).indexOf(".");
					if (i1 != -1) {
						String c = strings.get(0).charAt(strings.get(0).length() - 1) + "";
						if (c.equals(".")) {
							BigDecimal b = new BigDecimal(Double.parseDouble(strings.get(0).substring(0, strings.get(0).length() - 3)) / 100);
							hashMap.put("支付转化率", "" + b.setScale(4, BigDecimal.ROUND_HALF_UP).doubleValue());
						} else {

							if (strings.get(0).indexOf("%") != -1) {

								hashMap.put("支付转化率", "" + "" + Double.parseDouble(strings.get(0).substring(0, strings.get(0).length() - 1)) / 100);
							} else {

								hashMap.put("退款金额", strings.get(0));
							}
						}
					} else {

					}

				} else {
					int iss = 0;
					for (int is = 0; is < strings.size(); is++) {
						String s = "";
						if (strings.get(is).length() < 2) {
							s = strings.get(is);
						} else {
							s = strings.get(is).substring(0, 2);
						}

						boolean matches = s.matches("^[-+]?(([0-9]+)(.)?|(.)?)$");
						if (matches) {
							int size = is + 1;
							if (size != iss) {
								hashMap.put(strings.get(iss), strings.get(is));

							}
							iss++;

						}
					}
				}

			} else {
				System.out.println("找不到指定的文件");
			}
		} catch (Exception e) {
			System.out.println("读取文件内容出错");
			e.printStackTrace();
		}
		return hashMap;
	}


	public static Map<String, String> readTxtFile1(String filePath) {
		Map<String, String> hashMap = new HashMap<>();
		try {
			String encoding = "utf-8";
			File file = new File(filePath);
			if (file.isFile() && file.exists()) { //判断文件是否存在
				InputStreamReader read = new InputStreamReader(
						new FileInputStream(file), encoding);//考虑到编码格式
				BufferedReader bufferedReader = new BufferedReader(read);
				String lineTxt = null;
				ArrayList<String> strings = new ArrayList<String>();
				int i = 1;
				while ((lineTxt = bufferedReader.readLine()) != null) {
					strings.add(lineTxt);
				}
				read.close();
				if (strings.size() == 3) {
					Map<String, String> hashMap1 = new HashMap<>();
					for (int is = 0; is < strings.size(); is++) {
						boolean matches = strings.get(is).matches("^[-+]?(([0-9]+)(.)?|(.)?)$");
						if (matches) {
							int ia = hashMap1.size();
							for (int ias = 0; ias < ia; ias++) {
								hashMap.put(hashMap1.get(ias), hashMap.get(is));
							}
							return hashMap;
						} else {
							hashMap1.put(is + "", strings.get(is));
						}
					}

					if (strings.size() == 1) {
						if (strings.get(0).indexOf("人") != -1) {
							if (strings.get(0).indexOf(",") != 1) {
								hashMap.put("店铺总流量", "" + UtilId.getMl(strings.get(0).substring(0, strings.get(0).length() - 1)));
							} else {
								hashMap.put("店铺总流量", "" + strings.get(0).substring(0, strings.get(0).length() - 1));
							}
						}
						if (strings.get(0).indexOf("元") != -1) {
							if (strings.get(0).indexOf(",") != 1) {
								hashMap.put("退款金额", "" + UtilId.getMl(strings.get(0).substring(0, strings.get(0).length() - 1)));
							} else {
								hashMap.put("退款金额", "" + strings.get(0).substring(0, strings.get(0).length() - 1));
							}
						}
					}

				}

			} else {
				System.out.println("找不到指定的文件");
			}
		} catch (Exception e) {
			System.out.println("读取文件内容出错");
			e.printStackTrace();
		}
		return hashMap;
	}
}
