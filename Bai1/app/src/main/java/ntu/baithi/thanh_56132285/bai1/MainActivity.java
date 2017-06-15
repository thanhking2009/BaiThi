package ntu.baithi.thanh_56132285.bai1;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;

import java.text.DecimalFormat;

public class MainActivity extends Activity {
    private Button btnFar, btnCel, btnClear;
    private EditText txtFar, txtCel;
    private OnClickListener myVarListener = new OnClickListener() {
        @Override
        public void onClick(View arg0) {
            //Lấy F và C từ control ở đây
            double F;

            double C;

            if (arg0.getId() == R.id.btnFar)

            {

                F = Double.parseDouble(txtFar.getText() + "");

                DecimalFormat dcf = new DecimalFormat("#.00");

                C = (F - 32) * 5 / 9;


                txtCel.setText(dcf.format(C));
            } else if (arg0.getId() == R.id.btnCel)

            {

                C = Double.parseDouble(txtCel.getText() + "");

                DecimalFormat dcf = new DecimalFormat("#.00");

                F = C * 9 / 5 + 32;

                txtFar.setText(dcf.format(F));

            } else if (arg0 == btnClear) {
                txtFar.setText("");
                txtCel.setText("");
                txtFar.requestFocus();
            }
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        btnFar = (Button) findViewById(R.id.btnFar);
        btnCel = (Button) findViewById(R.id.btnCel);
        btnClear = (Button) findViewById(R.id.btnClear);
        txtFar = (EditText) findViewById(R.id.txtFar);
        txtCel = (EditText) findViewById(R.id.txtCel);
        btnFar.setOnClickListener(myVarListener);
        btnCel.setOnClickListener(myVarListener);
        btnClear.setOnClickListener(myVarListener);
    }
}