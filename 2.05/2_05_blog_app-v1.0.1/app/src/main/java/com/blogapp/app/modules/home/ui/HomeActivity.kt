package com.blogapp.app.modules.home.ui

import android.view.View
import androidx.activity.viewModels
import androidx.core.view.GravityCompat
import com.blogapp.app.R
import com.blogapp.app.appcomponents.base.BaseActivity
import com.blogapp.app.databinding.ActivityHomeBinding
import com.blogapp.app.modules.home.`data`.model.FramethirtysixRowModel
import com.blogapp.app.modules.home.`data`.model.StoriesRowModel
import com.blogapp.app.modules.home.`data`.viewmodel.HomeVM
import kotlin.Int
import kotlin.String

class HomeActivity : BaseActivity<ActivityHomeBinding>(R.layout.activity_home) {
    private val viewModel: HomeVM by viewModels<HomeVM>()

    override fun onInitialized() {
        viewModel.navArguments = intent.extras?.getBundle("bundle")
        val frameThirtySixAdapter =
                FrameThirtySixAdapter(viewModel.frameThirtySixList.value?:mutableListOf())
        binding.recyclerFrameThirtySix.adapter = frameThirtySixAdapter
        frameThirtySixAdapter.setOnItemClickListener(
        object : FrameThirtySixAdapter.OnItemClickListener {
            override fun onItemClick(view:View, position:Int, item : FramethirtysixRowModel) {
                onClickRecyclerFrameThirtySix(view, position, item)
            }
        }
        )
        viewModel.frameThirtySixList.observe(this) {
            frameThirtySixAdapter.updateData(it)
        }
        val storiesAdapter = StoriesAdapter(viewModel.storiesList.value?:mutableListOf())
        binding.recyclerStories.adapter = storiesAdapter
        storiesAdapter.setOnItemClickListener(
        object : StoriesAdapter.OnItemClickListener {
            override fun onItemClick(view:View, position:Int, item : StoriesRowModel) {
                onClickRecyclerStories(view, position, item)
            }
        }
        )
        viewModel.storiesList.observe(this) {
            storiesAdapter.updateData(it)
        }
        binding.homeVM = viewModel
    }

    override fun setUpClicks() {
    }

    private fun toggleDrawer() {
        if (!binding.drawerLayout.isDrawerOpen(GravityCompat.START)) {
            binding.drawerLayout.openDrawer(GravityCompat.START)
        }
        else {
            binding.drawerLayout.closeDrawer(GravityCompat.START)
        }
    }

    fun onClickRecyclerFrameThirtySix(
        view: View,
        position: Int,
        item: FramethirtysixRowModel
    ) {
    }

    fun onClickRecyclerStories(
        view: View,
        position: Int,
        item: StoriesRowModel
    ) {
    }

    companion object {
        const val TAG: String = "HOME_ACTIVITY"
    }
}
