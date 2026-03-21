package com.readboy.installer

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast
import androidx.fragment.app.Fragment
import com.google.android.material.switchmaterial.SwitchMaterial
import com.readboy.installer.databinding.FragmentGlobalSwitchBinding

class GlobalSwitchFragment : Fragment() {

    private var _binding: FragmentGlobalSwitchBinding? = null
    private val binding get() = _binding!!

    private lateinit var switchInstall: SwitchMaterial

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = FragmentGlobalSwitchBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        try {
            switchInstall = binding.switchInstall
            loadStatus()

            switchInstall.setOnCheckedChangeListener { _, isChecked ->
                try {
                    setInstallStatus(isChecked)
                } catch (e: Exception) {
                    android.util.Log.e("GlobalSwitchFragment", "设置安装状态失败", e)
                    Toast.makeText(requireContext(), "操作失败: ${e.message}", Toast.LENGTH_SHORT).show()
                    loadStatus()
                }
            }
        } catch (e: Exception) {
            android.util.Log.e("GlobalSwitchFragment", "初始化失败", e)
            Toast.makeText(requireContext(), "初始化失败: ${e.message}", Toast.LENGTH_SHORT).show()
        }
    }

    private fun loadStatus() {
        try {
            val isEnabled = ProviderHelper.getGlobalInstallState(requireContext())
            switchInstall.isChecked = isEnabled

            val statusText = if (isEnabled) "已启用" else "已禁用"
            binding.tvStatus.text = "$statusText - 当前状态"
        } catch (e: Exception) {
            android.util.Log.e("GlobalSwitchFragment", "加载状态失败", e)
            binding.tvStatus.text = "加载失败"
        }
    }

    private fun setInstallStatus(enabled: Boolean) {
        try {
            val success = ProviderHelper.setGlobalInstallState(requireContext(), enabled)

            if (success) {
                val statusText = if (enabled) "已启用" else "已禁用"
                binding.tvStatus.text = "$statusText - 已更新"
                Toast.makeText(
                    requireContext(),
                    if (enabled) "已允许安装" else "已禁止安装",
                    Toast.LENGTH_SHORT
                ).show()
            } else {
                Toast.makeText(requireContext(), "操作失败", Toast.LENGTH_SHORT).show()
                loadStatus()
            }
        } catch (e: Exception) {
            android.util.Log.e("GlobalSwitchFragment", "设置安装状态失败", e)
            Toast.makeText(requireContext(), "操作失败: ${e.message}", Toast.LENGTH_SHORT).show()
            loadStatus()
        }
    }

    override fun onResume() {
        super.onResume()
        loadStatus()
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}