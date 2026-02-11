package com.readboy.zaralyn.settings.service

import android.app.Service
import android.content.Intent
import android.os.IBinder
import android.util.Log

class ParentModeService : Service() {
    
    companion object {
        private const val TAG = "ParentMode"
    }
    
    override fun onBind(intent: Intent?): IBinder? = null
    
    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        intent?.let {
            val mode = it.getIntExtra("parent_mode", -1)
            if (mode >= 0) {
                setParentMode(mode)
            }
        }
        return START_STICKY
    }
    
    private fun setParentMode(mode: Int) {
        try {
            // 利用 SettingsBootCompletedReceiver 漏洞
            val modeIntent = Intent().apply {
                action = "android.intent.action.ReadboyExchangeParentMode"
                putExtra("new_parent_mode", mode)
            }
            sendBroadcast(modeIntent)
            Log.d(TAG, "设置家长模式: $mode")
        } catch (e: Exception) {
            Log.e(TAG, "设置模式失败", e)
        }
    }
}