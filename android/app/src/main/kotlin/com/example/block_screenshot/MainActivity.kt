package com.example.block_screenshot

import io.flutter.embedding.android.FlutterActivity
import android.content.Context
import android.content.ContextWrapper
import android.content.Intent
import android.content.IntentFilter
import android.os.Build.VERSION
import android.os.Build.VERSION_CODES
import android.view.WindowManager
import androidx.annotation.NonNull
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val CHANNEL = "secureScreenshotChannel"

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
                call, result ->
if(call.method == "secureIosScreen"){
    var block = secureScreen(applicationContext)

    if(block){
        result.success(block)

    }else{
        result.error("UNAVAILABLE","alert",null)
    }

}

        }
    }

    private fun secureScreen(context: Context): Boolean {

        if (VERSION.SDK_INT >= VERSION_CODES.LOLLIPOP) {
            val blockScreenshot = false
            if(!blockScreenshot){
            val windowManager = getSystemService(Context.WINDOW_SERVICE) as WindowManager

                getWindow().setFlags(WindowManager.LayoutParams.FLAG_SECURE,WindowManager.LayoutParams.FLAG_SECURE,)
            }

        }

        return false
    }

}
