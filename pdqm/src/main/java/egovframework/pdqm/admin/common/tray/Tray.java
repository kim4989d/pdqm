package egovframework.pdqm.admin.common.tray;

import java.io.Serializable;
import java.util.Iterator;

public interface Tray extends Serializable {
	int size();
	int size(String key);
	
	String[] getKeys();
	String[] getAllString(String key);
	
    String get(String key);
    String getString(String key);
    int    getInt(String key);

    String get(String key, int index);
    String getString(String key, int index);
    int    getInt(String key, int index);
    
	void add(String key, String value);
    void set(String key, String[] values);
    void set(String key, Object object);
    
    
    Object getArray(int index);
    
   void setArray(int index,Object value);
    
   
   Iterator keySet();
    
}
