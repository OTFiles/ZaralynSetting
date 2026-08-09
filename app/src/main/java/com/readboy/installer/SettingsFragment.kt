package com.readboy.installer

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.RadioGroup
import android.widget.TextView
import android.widget.Toast
import androidx.fragment.app.Fragment

/**
 * 设置页
 *
 * - 家长管理版本检测（老版 / 新版（6.2.8+））
 * - SQL 修改方式全局设置（自动 / raw_sql / 标准 ContentProvider）
 */
class SettingsFragment : Fragment() {

    private lateinit var tvVersion: TextView
    private lateinit var rgSqlMethod: RadioGroup
    private lateinit var tvMethodHint: TextView

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        return inflater.inflate(R.layout.fragment_settings, container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        try {
            tvVersion = view.findViewById(R.id.tvVersion)
            rgSqlMethod = view.findViewById(R.id.rgSqlMethod)
            tvMethodHint = view.findViewById(R.id.tvMethodHint)

            view.findViewById<View>(R.id.btnRedetect).setOnClickListener {
                try {
                    ParentManagerCompat.resetDetection(requireContext())
                    loadVersion()
                    Toast.makeText(requireContext(), "已重新检测", Toast.LENGTH_SHORT).show()
                } catch (e: Exception) {
                    android.util.Log.e(TAG, "重新检测失败", e)
                    Toast.makeText(requireContext(), "重新检测失败: ${e.message}", Toast.LENGTH_SHORT).show()
                }
            }

            rgSqlMethod.setOnCheckedChangeListener { _, checkedId ->
                try {
                    val method = when (checkedId) {
                        R.id.rbRawSql -> ParentManagerCompat.SqlMethod.RAW_SQL
                        R.id.rbContent -> ParentManagerCompat.SqlMethod.CONTENT
                        else -> ParentManagerCompat.SqlMethod.AUTO
                    }
                    ParentManagerCompat.setSqlMethod(requireContext(), method)
                    tvMethodHint.text = hintFor(method)
                    Toast.makeText(requireContext(), "设置已保存，全局生效", Toast.LENGTH_SHORT).show()
                } catch (e: Exception) {
                    android.util.Log.e(TAG, "保存 SQL 方式失败", e)
                }
            }

            loadVersion()
            loadSqlMethod()
        } catch (e: Exception) {
            android.util.Log.e(TAG, "设置页初始化失败", e)
            Toast.makeText(requireContext(), "初始化失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }

    private fun loadVersion() {
        val version = ParentManagerCompat.detectVersion(requireContext())
        val provider = ParentManagerCompat.resolveProvider(requireContext())

        val versionText = when (version) {
            ParentManagerCompat.PmsVersion.OLD -> getString(R.string.version_old)
            ParentManagerCompat.PmsVersion.NEW -> getString(R.string.version_new)
            ParentManagerCompat.PmsVersion.UNKNOWN -> getString(R.string.version_unknown)
        }

        val providerText = if (provider?.packageName != null) {
            getString(R.string.settings_provider_info, provider.packageName, provider.authority ?: "?")
        } else {
            getString(R.string.settings_provider_not_found)
        }

        tvVersion.text = "$versionText\n$providerText\n${getString(R.string.settings_check_log)}"
    }

    private fun loadSqlMethod() {
        val method = ParentManagerCompat.getSqlMethod(requireContext())
        when (method) {
            ParentManagerCompat.SqlMethod.AUTO -> rgSqlMethod.check(R.id.rbAuto)
            ParentManagerCompat.SqlMethod.RAW_SQL -> rgSqlMethod.check(R.id.rbRawSql)
            ParentManagerCompat.SqlMethod.CONTENT -> rgSqlMethod.check(R.id.rbContent)
        }
        tvMethodHint.text = hintFor(method)
    }

    private fun hintFor(method: ParentManagerCompat.SqlMethod): String {
        return when (method) {
            ParentManagerCompat.SqlMethod.AUTO -> getString(R.string.sql_method_hint_auto)
            ParentManagerCompat.SqlMethod.RAW_SQL -> getString(R.string.sql_method_hint_raw_sql)
            ParentManagerCompat.SqlMethod.CONTENT -> getString(R.string.sql_method_hint_content)
        }
    }

    override fun onResume() {
        super.onResume()
        try {
            loadVersion()
        } catch (e: Exception) {
            android.util.Log.e(TAG, "刷新版本失败", e)
        }
    }

    companion object {
        private const val TAG = "SettingsFragment"
    }
}