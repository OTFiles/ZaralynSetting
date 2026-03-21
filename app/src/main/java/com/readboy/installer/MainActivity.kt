package com.readboy.installer

import android.os.Bundle
import android.util.Log
import androidx.appcompat.app.AppCompatActivity
import androidx.viewpager2.widget.ViewPager2
import com.google.android.material.floatingactionbutton.FloatingActionButton
import com.google.android.material.tabs.TabLayout
import com.google.android.material.tabs.TabLayoutMediator
import com.readboy.installer.adapter.ViewPagerAdapter

class MainActivity : AppCompatActivity() {

    private lateinit var viewPager: ViewPager2
    private lateinit var tabLayout: TabLayout
    private lateinit var fabAdd: FloatingActionButton

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        try {
            setContentView(R.layout.activity_main)

            viewPager = findViewById(R.id.viewPager)
            tabLayout = findViewById(R.id.tabLayout)
            fabAdd = findViewById(R.id.fabAdd)

            setupViewPager()
            setupFab()

            // 检查是否有上次崩溃
            val crashInfo = (application as ZaralynApplication).getLastCrashInfo()
            if (crashInfo != null) {
                android.widget.Toast.makeText(
                    this,
                    "检测到上次崩溃，已恢复",
                    android.widget.Toast.LENGTH_LONG
                ).show()
                (application as ZaralynApplication).clearCrashInfo()
            }
        } catch (e: Exception) {
            android.util.Log.e("MainActivity", "初始化失败", e)
            android.widget.Toast.makeText(
                this,
                "初始化失败: ${e.message}",
                android.widget.Toast.LENGTH_LONG
            ).show()
        }
    }

    private fun setupViewPager() {
        try {
            val adapter = ViewPagerAdapter(this)
            viewPager.adapter = adapter

            TabLayoutMediator(tabLayout, viewPager) { tab, position ->
                when (position) {
                    0 -> {
                        tab.text = getString(R.string.global_install_switch)
                        tab.setIcon(R.drawable.ic_settings)
                    }
                    1 -> {
                        tab.text = getString(R.string.whitelist)
                        tab.setIcon(R.drawable.ic_add)
                    }
                    2 -> {
                        tab.text = getString(R.string.blacklist)
                        tab.setIcon(R.drawable.ic_delete)
                    }
                    3 -> {
                        tab.text = getString(R.string.tab_database)
                        tab.setIcon(R.drawable.ic_database)
                    }
                }
            }.attach()
        } catch (e: Exception) {
            android.util.Log.e("MainActivity", "设置ViewPager失败", e)
        }
    }

    private fun setupFab() {
        try {
            fabAdd.setOnClickListener {
                try {
                    val currentFragment = (viewPager.adapter as ViewPagerAdapter).getFragment(viewPager.currentItem)
                    if (currentFragment is PackageListFragment) {
                        currentFragment.showAddDialog()
                    }
                } catch (e: Exception) {
                    android.util.Log.e("MainActivity", "处理FAB点击失败", e)
                }
            }
        } catch (e: Exception) {
            android.util.Log.e("MainActivity", "设置FAB失败", e)
        }
    }

    companion object {
        private const val TAG = "MainActivity"
    }
}