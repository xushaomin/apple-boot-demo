package com.appleframework.boot.demo.common.directive;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.appleframework.web.freemarker.directive.BaseDirective;

import freemarker.core.Environment;
import freemarker.template.SimpleScalar;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

@Component("datetimeDirective")
public class DatetimeDirective extends BaseDirective {

	private static final String VARIABLE_NAME = "dateTime";

	@SuppressWarnings({ "rawtypes" })
	public void execute(Environment env, Map params, TemplateModel[] loopVars, TemplateDirectiveBody body) throws TemplateException, IOException {		
		DateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
		DateFormat dateFormat2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		SimpleScalar source = (SimpleScalar)params.get("source");
		String dateTimeStr = source.toString();
		int dateTimeLength = dateTimeStr.length();
		if(dateTimeLength >= 14) {
			dateTimeStr = dateTimeStr.substring(0, 14);
		}
		Date date = null;
		try {
			date = dateFormat.parse(dateTimeStr);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		setLocalVariable(VARIABLE_NAME, dateFormat2.format(date), env, body);
	}

}