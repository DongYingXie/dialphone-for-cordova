package cn.debi.cordova;
import org.apache.cordova.CordovaWebView;
import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CordovaInterface;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.content.Intent;
import android.net.Uri;
import android.util.Log;
public class CallPhone extends CordovaPlugin {

    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) 
            throws JSONException {

        final String ACTIVITY_TAG="dialPhone is ok "; 
              if (action.equals("dialPhone")) {
           String number = args.getString(0);
        number = "tel:"+number;
        try {
            Intent intent = new Intent(Intent.ACTION_CALL);
            intent.setData(Uri.parse(number));
            cordova.getActivity().startActivity(intent);
            callbackContext.success(ACTIVITY_TAG);
        }
        catch (Exception e) {
            callbackContext.error(e.getMessage());
        }
        }
        return true;
    }
}