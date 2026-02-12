package com.readboy.installer.adapter

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
import com.readboy.installer.PackageInfo
import com.readboy.installer.R
import com.readboy.installer.databinding.ItemPackageBinding

class PackageAdapter(
    private val onItemClick: (String) -> Unit
) : ListAdapter<PackageInfo, PackageAdapter.PackageViewHolder>(DiffCallback()) {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): PackageViewHolder {
        val binding = ItemPackageBinding.inflate(
            LayoutInflater.from(parent.context),
            parent,
            false
        )
        return PackageViewHolder(binding, onItemClick)
    }

    override fun onBindViewHolder(holder: PackageViewHolder, position: Int) {
        holder.bind(getItem(position))
    }

    class PackageViewHolder(
        private val binding: ItemPackageBinding,
        private val onItemClick: (String) -> Unit
    ) : RecyclerView.ViewHolder(binding.root) {

        fun bind(item: PackageInfo) {
            binding.tvPackageName.text = item.packageName

            val statusText = when (item.state) {
                0 -> "黑名单 - 禁止安装"
                1 -> "白名单 - 允许安装"
                else -> "未知状态"
            }
            binding.tvStatus.text = statusText

            binding.btnDelete.setOnClickListener {
                onItemClick(item.packageName)
            }
        }
    }

    class DiffCallback : DiffUtil.ItemCallback<PackageInfo>() {
        override fun areItemsTheSame(oldItem: PackageInfo, newItem: PackageInfo): Boolean {
            return oldItem.packageName == newItem.packageName
        }

        override fun areContentsTheSame(oldItem: PackageInfo, newItem: PackageInfo): Boolean {
            return oldItem == newItem
        }
    }
}