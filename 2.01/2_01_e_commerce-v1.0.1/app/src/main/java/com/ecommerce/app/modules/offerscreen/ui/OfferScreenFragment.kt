package com.ecommerce.app.modules.offerscreen.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseFragment
import com.ecommerce.app.databinding.FragmentOfferScreenBinding
import com.ecommerce.app.modules.notification.ui.NotificationActivity
import com.ecommerce.app.modules.offerscreen.`data`.model.OfferscreenRowModel
import com.ecommerce.app.modules.offerscreen.`data`.viewmodel.OfferScreenVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class OfferScreenFragment : BaseFragment<FragmentOfferScreenBinding>(R.layout.fragment_offer_screen)
    {
  private val viewModel: OfferScreenVM by viewModels<OfferScreenVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val offerScreenAdapter =
    OfferScreenAdapter(viewModel.offerScreenList.value?:mutableListOf())
    binding.recyclerOfferScreen.adapter = offerScreenAdapter
    offerScreenAdapter.setOnItemClickListener(
    object : OfferScreenAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : OfferscreenRowModel) {
        onClickRecyclerOfferScreen(view, position, item)
      }
    }
    )
    viewModel.offerScreenList.observe(requireActivity()) {
      offerScreenAdapter.updateData(it)
    }
    binding.offerScreenVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageNotificationIcon.setOnClickListener {
      val destIntent = NotificationActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  fun onClickRecyclerOfferScreen(
    view: View,
    position: Int,
    item: OfferscreenRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "OFFER_SCREEN_FRAGMENT"


    fun getInstance(bundle: Bundle?): OfferScreenFragment {
      val fragment = OfferScreenFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
