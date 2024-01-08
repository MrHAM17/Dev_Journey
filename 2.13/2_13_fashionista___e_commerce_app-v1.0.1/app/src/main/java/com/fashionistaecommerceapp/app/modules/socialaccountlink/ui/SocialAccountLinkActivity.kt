package com.fashionistaecommerceapp.app.modules.socialaccountlink.ui

import android.view.View
import androidx.activity.viewModels
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.base.BaseActivity
import com.fashionistaecommerceapp.app.databinding.ActivitySocialAccountLinkBinding
import com.fashionistaecommerceapp.app.modules.socialaccountlink.`data`.model.SocialaccountlinkRowModel
import com.fashionistaecommerceapp.app.modules.socialaccountlink.`data`.viewmodel.SocialAccountLinkVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SocialAccountLinkActivity :
    BaseActivity<ActivitySocialAccountLinkBinding>(R.layout.activity_social_account_link) {
  private val viewModel: SocialAccountLinkVM by viewModels<SocialAccountLinkVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val socialAccountLinkAdapter =
    SocialAccountLinkAdapter(viewModel.socialAccountLinkList.value?:mutableListOf())
    binding.recyclerSocialAccountLink.adapter = socialAccountLinkAdapter
    socialAccountLinkAdapter.setOnItemClickListener(
    object : SocialAccountLinkAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SocialaccountlinkRowModel) {
        onClickRecyclerSocialAccountLink(view, position, item)
      }
    }
    )
    viewModel.socialAccountLinkList.observe(this) {
      socialAccountLinkAdapter.updateData(it)
    }
    binding.socialAccountLinkVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowDown.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerSocialAccountLink(
    view: View,
    position: Int,
    item: SocialaccountlinkRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SOCIAL_ACCOUNT_LINK_ACTIVITY"

  }
}
