package com.example.topic_control;

import androidx.appcompat.app.AppCompatActivity;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {

    private Button buttonGet;
    private Context context;
    private String message;
    private Button buttonSet;
    private Intent intent;
    private String activity;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        setTitle("Main");

        context = this;

        buttonGet = (Button) findViewById(R.id.button_change_get);
        buttonGet.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                message="你是否選擇出庫";
                showDialog_1();
            }
        });

        buttonSet=(Button)findViewById(R.id.button_change_set);
        buttonSet.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                message="你是否選擇入庫";
                activity = "set";
                showDialog_2();
            }
        });
    }

    private void showDialog_2() {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle("選擇動作");
        builder.setMessage(message);
        builder.setPositiveButton("YES", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                intent = new Intent(context,Bt_App_Main_Activity.class);
                intent.putExtra("activity", activity);
                startActivity(intent);
                dialog.dismiss();
            }
        });

        builder.setNegativeButton("NO", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
            }
        });
        builder.create().show();


    }

    private void showDialog_1() {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle("選擇動作");
        builder.setMessage(message);
        builder.setPositiveButton("YES", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                intent = new Intent(context,get_InformationActivity.class);
                startActivity(intent);
                dialog.dismiss();
            }
        });

        builder.setNegativeButton("NO", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
            }
        });
        builder.create().show();
    }
}
