package com.decodebros.myapplication;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;

import com.google.firebase.FirebaseApp;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

public class AddProfessors extends AppCompatActivity {

    Button add;
    EditText pname, pcollege, plocation;
    Spinner pdepartment, qualification;
    FirebaseDatabase database;
    DatabaseReference reference;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_addprofessors);

        pname = findViewById(R.id.pname);
        pcollege = findViewById(R.id.pcollege);
        pdepartment = findViewById(R.id.department);
        plocation = findViewById(R.id.plocation);
        qualification = findViewById(R.id.qualifications);
        FirebaseApp.initializeApp(this);
        database = FirebaseDatabase.getInstance();
        reference = database.getReference();
        final professors prof = new professors();


        add = findViewById(R.id.add);
        add.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                prof.name = pname.getText().toString();
                prof.department = pdepartment.getSelectedItem().toString();
                prof.college = pcollege.getText().toString();
                prof.location = plocation.getText().toString();
                prof.qualification = qualification.getSelectedItem().toString();
                reference.child("user01").setValue(prof);
                reference.addValueEventListener(new ValueEventListener() {
                    @Override
                    public void onDataChange(DataSnapshot dataSnapshot) {
                        // This method is called once with the initial value and again
                        // whenever data at this location is updated.
                        //String value = dataSnapshot.getValue(String.class);
                        //Log.d(TAG, "Value is: " + value);
                        //reference.child("prof02").setValue(prof);
                    }

                    @Override
                    public void onCancelled(DatabaseError error) {
                        // Failed to read value
                        //Log.w(TAG, "Failed to read value.", error.toException());
                    }
                });
            }
        });

    }
}