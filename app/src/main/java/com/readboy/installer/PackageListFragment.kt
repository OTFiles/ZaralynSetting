package com.readboy.installer

import android.app.AlertDialog
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast
import androidx.fragment.app.Fragment
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.google.android.material.textfield.TextInputEditText
import com.readboy.installer.adapter.PackageAdapter
import com.readboy.installer.databinding.FragmentPackageListBinding

class PackageListFragment : Fragment() {

    private var _binding: FragmentPackageListBinding? = null
    private val binding get() = _binding!!

    private lateinit var adapter: PackageAdapter
    private var isWhitelist: Boolean = true

    companion object {
        private const val ARG_IS_WHITELIST = "is_whitelist"

        fun newInstance(isWhitelist: Boolean): PackageListFragment {
            return PackageListFragment().apply {
                arguments = Bundle().apply {
                    putBoolean(ARG_IS_WHITELIST, isWhitelist)
                }
            }
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        isWhitelist = arguments?.getBoolean(ARG_IS_WHITELIST, true) ?: true
    }

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = FragmentPackageListBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        setupRecyclerView()
        loadPackages()
    }

    private fun setupRecyclerView() {
        adapter = PackageAdapter(
            onItemClick = { packageName -> showDeleteDialog(packageName) }
        )

        binding.recyclerView.apply {
            layoutManager = LinearLayoutManager(requireContext())
            adapter = this@PackageListFragment.adapter
        }
    }

    private fun loadPackages() {
        val packages = ProviderHelper.getPackageList(requireContext(), isWhitelist)

        if (packages.isEmpty()) {
            binding.tvEmpty.visibility = View.VISIBLE
            binding.recyclerView.visibility = View.GONE
        } else {
            binding.tvEmpty.visibility = View.GONE
            binding.recyclerView.visibility = View.VISIBLE
            adapter.submitList(packages)
        }
    }

    fun showAddDialog() {
        val dialogView = LayoutInflater.from(requireContext())
            .inflate(R.layout.dialog_add_package, null)

        val etPackageName = dialogView.findViewById<TextInputEditText>(R.id.etPackageName)

        AlertDialog.Builder(requireContext())
            .setTitle(if (isWhitelist) "添加到白名单" else "添加到黑名单")
            .setView(dialogView)
            .setPositiveButton(R.string.add) { _, _ ->
                val packageName = etPackageName.text.toString().trim()
                if (packageName.isNotEmpty()) {
                    addPackage(packageName)
                } else {
                    Toast.makeText(requireContext(), "请输入包名", Toast.LENGTH_SHORT).show()
                }
            }
            .setNegativeButton(R.string.cancel, null)
            .show()
    }

    private fun addPackage(packageName: String) {
        val success = ProviderHelper.addPackage(requireContext(), packageName, isWhitelist)

        if (success) {
            Toast.makeText(
                requireContext(),
                "已添加${if (isWhitelist) "白名单" else "黑名单"}",
                Toast.LENGTH_SHORT
            ).show()
            loadPackages()
        } else {
            Toast.makeText(requireContext(), "添加失败", Toast.LENGTH_SHORT).show()
        }
    }

    private fun showDeleteDialog(packageName: String) {
        AlertDialog.Builder(requireContext())
            .setTitle(R.string.confirm_delete)
            .setMessage(getString(R.string.confirm_delete_message, packageName))
            .setPositiveButton(R.string.delete) { _, _ ->
                deletePackage(packageName)
            }
            .setNegativeButton(R.string.cancel, null)
            .show()
    }

    private fun deletePackage(packageName: String) {
        val success = ProviderHelper.removePackage(requireContext(), packageName)

        if (success) {
            Toast.makeText(requireContext(), "已删除", Toast.LENGTH_SHORT).show()
            loadPackages()
        } else {
            Toast.makeText(requireContext(), "删除失败", Toast.LENGTH_SHORT).show()
        }
    }

    override fun onResume() {
        super.onResume()
        loadPackages()
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}