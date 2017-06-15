package ntu.baithi.thanh_56132285.bai3;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {
    ListView listView;
    ArrayList<SinhVien> arrayList;
    ArrayAdapter arrayAdapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        listView = (ListView) findViewById(R.id.listview);
        arrayList = new ArrayList<>();
        arrayList.add(new SinhVien("56132285","Le Quang Thanh","Nam"));
        arrayList.add(new SinhVien("56132286","Nguyen Van Minh","Nam"));
        arrayList.add(new SinhVien("56132287","Le Thi Hoa","Nu"));
        arrayList.add(new SinhVien("56132288","Tran Quoc Tuan","Nam"));
        arrayList.add(new SinhVien("56132289","Le Minh Toan","Nam"));


        arrayAdapter = new ArrayAdapter(this, android.R.layout.simple_expandable_list_item_1, arrayList);
        listView.setAdapter(arrayAdapter);
    }
}
