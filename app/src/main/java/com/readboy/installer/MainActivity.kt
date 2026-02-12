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
        setContentView(R.layout.activity_main)

        viewPager = findViewById(R.id.viewPager)
        tabLayout = findViewById(R.id.tabLayout)
        fabAdd = findViewById(R.id.fabAdd)

        setupViewPager()
        setupFab()
    }

    private fun setupViewPager() {
        val adapter = ViewPagerAdapter(this)
        viewPager.adapter = adapter

        TabLayoutMediator(tabLayout, viewPager) { tab, position ->
            when (position) {
                0 -> {
                    tab.text = getString(R.string.global_install_switch)
                    tab.setIcon(android.R.drawable.ic_menu_manage)
                }
                1 -> {
                    tab.text = getString(R.string.whitelist)
                    tab.setIcon(android.R.drawable.ic_menu_add)
                }
                2 -> {
                    tab.text = getString(R.string.blacklist)
                    tab.setIcon(android.R.drawable.ic_menu_delete)
                }
                3 -> {
                    tab.text = getString(R.string.tab_parent_password)
                    tab.setIcon(android.R.drawable.ic_lock_lock)
                }
                4 -> {
                    tab.text = getString(R.string.tab_database)
                    tab.setIcon(android.R.drawable.ic_menu_agenda)
                }
                5 -> {
                    tab.text = getString(R.string.tab_system_control)
                    tab.setIcon(android.R.drawable.ic_dialog_alert)
                }
            }
        }.attach()
    }

    private fun setupFab() {
        fabAdd.setOnClickListener {
            val currentFragment = (viewPager.adapter as ViewPagerAdapter).getFragment(viewPager.currentItem)
            if (currentFragment is PackageListFragment) {
                currentFragment.showAddDialog()
            }
        }
    }

    companion object {
        private const val TAG = "MainActivity"
    }
}