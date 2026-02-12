package com.readboy.installer.adapter

import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentActivity
import androidx.viewpager2.adapter.FragmentStateAdapter
import com.readboy.installer.GlobalSwitchFragment
import com.readboy.installer.PackageListFragment
import com.readboy.installer.ParentPasswordFragment
import com.readboy.installer.SqliteDatabaseFragment
import com.readboy.installer.SystemControlFragment

class ViewPagerAdapter(fragmentActivity: FragmentActivity) : FragmentStateAdapter(fragmentActivity) {

    private val fragments = listOf(
        GlobalSwitchFragment(),
        PackageListFragment.newInstance(true),
        PackageListFragment.newInstance(false),
        ParentPasswordFragment(),
        SqliteDatabaseFragment(),
        SystemControlFragment()
    )

    override fun getItemCount(): Int = fragments.size

    override fun createFragment(position: Int): Fragment {
        return fragments[position]
    }

    fun getFragment(position: Int): Fragment? {
        return if (position >= 0 && position < fragments.size) {
            fragments[position]
        } else {
            null
        }
    }
}