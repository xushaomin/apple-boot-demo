package com.appleframework.boot.demo.web;

import com.appleframework.boot.AbstractContainer;

public class DemoContainer extends AbstractContainer {

	@Override
	public void doStart() {
		int count = 0;
		while (true) {
			System.out.println(count ++);
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
			}
		}
	}
	
}
