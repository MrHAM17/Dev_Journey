package com.hiredjobsearch.app.modules.jobdetailstabcontainer.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseActivity
import com.hiredjobsearch.app.databinding.ActivityJobDetailsTabContainerBinding
import com.hiredjobsearch.app.modules.jobdetailstabcontainer.`data`.model.JobdetailstabcontainerRowModel
import com.hiredjobsearch.app.modules.jobdetailstabcontainer.`data`.viewmodel.JobDetailsTabContainerVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class JobDetailsTabContainerActivity :
    BaseActivity<ActivityJobDetailsTabContainerBinding>(R.layout.activity_job_details_tab_container)
    {
  private val viewModel: JobDetailsTabContainerVM by viewModels<JobDetailsTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val jobDetailsTabContainerAdapter =
    JobDetailsTabContainerAdapter(viewModel.jobDetailsTabContainerList.value?:mutableListOf())
    binding.recyclerJobDetailsTabContainer.adapter = jobDetailsTabContainerAdapter
    jobDetailsTabContainerAdapter.setOnItemClickListener(
    object : JobDetailsTabContainerAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item :
      JobdetailstabcontainerRowModel) {
        onClickRecyclerJobDetailsTabContainer(view, position, item)
      }
    }
    )
    viewModel.jobDetailsTabContainerList.observe(this) {
      jobDetailsTabContainerAdapter.updateData(it)
    }
    binding.jobDetailsTabContainerVM = viewModel
    val adapter = JobDetailsTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = JobDetailsTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
    }

    fun onClickRecyclerJobDetailsTabContainer(
      view: View,
      position: Int,
      item: JobdetailstabcontainerRowModel
    ): Unit {
      when(view.id) {
      }
    }

    companion object {
      const val TAG: String = "JOB_DETAILS_TAB_CONTAINER_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, JobDetailsTabContainerActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
