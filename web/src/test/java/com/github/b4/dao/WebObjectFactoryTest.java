/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.github.b4.dao;

import java.io.File;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import com.github.b4.dao.PropertiesDao;
import com.github.b4.dao.WebObjectFactory;

/**
 *
 * @author cgallen
 */
public class WebObjectFactoryTest {

    @Test
    public void testGetPropertiesDao() {
        PropertiesDao propertiesDao = WebObjectFactory.getPropertiesDao();

    }

    @After
    public void after() {
        // remove properties file after test
        try {
            String TEMP_DIR = System.getProperty("java.io.tmpdir");
            File propertiesFile = new File(TEMP_DIR + "/application.properties");
            System.out.println("deleting test properties file:"+propertiesFile.getAbsolutePath());
            propertiesFile.delete();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
