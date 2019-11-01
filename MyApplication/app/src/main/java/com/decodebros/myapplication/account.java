package com.decodebros.myapplication;

import android.content.Context;
import android.content.SharedPreferences;
import static android.content.Context.MODE_PRIVATE;

public class account {

    String name, department, year, college, location;
    private SharedPreferences mPreferences;
    private Context mContext;
    private String sharedPrefFile = "com.decodebros.myapplication";

    public account(Context context){
        this.mContext=context;
    }

    public void write () {
        mPreferences = mContext.getSharedPreferences(sharedPrefFile, MODE_PRIVATE);
        SharedPreferences.Editor preferencesEditor = mPreferences.edit();
        preferencesEditor.putString("name", name);
        preferencesEditor.putString("year", year);
        preferencesEditor.putString("college", college);
        preferencesEditor.putString("location", location);
        preferencesEditor.putString("year", year);
        preferencesEditor.putString("department", department);
        preferencesEditor.commit();
    }
}
