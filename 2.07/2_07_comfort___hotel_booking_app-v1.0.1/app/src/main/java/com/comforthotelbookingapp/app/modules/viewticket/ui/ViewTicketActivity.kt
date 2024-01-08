package com.comforthotelbookingapp.app.modules.viewticket.ui

import androidx.activity.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseActivity
import com.comforthotelbookingapp.app.databinding.ActivityViewTicketBinding
import com.comforthotelbookingapp.app.modules.viewticket.`data`.viewmodel.ViewTicketVM
import kotlin.String
import kotlin.Unit

class ViewTicketActivity : BaseActivity<ActivityViewTicketBinding>(R.layout.activity_view_ticket) {
  private val viewModel: ViewTicketVM by viewModels<ViewTicketVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.viewTicketVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "VIEW_TICKET_ACTIVITY"

  }
}
