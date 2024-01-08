package com.tikpikshortvideosocialnetworking.app.modules.createnewpintabcontainer.ui

import androidx.activity.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityCreateNewPinTabContainerBinding
import com.tikpikshortvideosocialnetworking.app.modules.createnewpintabcontainer.`data`.viewmodel.CreateNewPinTabContainerVM
import kotlin.String
import kotlin.Unit

class CreateNewPinTabContainerActivity :
    BaseActivity<ActivityCreateNewPinTabContainerBinding>(R.layout.activity_create_new_pin_tab_container)
    {
  private val viewModel: CreateNewPinTabContainerVM by viewModels<CreateNewPinTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.createNewPinTabContainerVM = viewModel
    val adapter = CreateNewPinTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = CreateNewPinTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
    }

    companion object {
      const val TAG: String = "CREATE_NEW_PIN_TAB_CONTAINER_ACTIVITY"

    }
  }
