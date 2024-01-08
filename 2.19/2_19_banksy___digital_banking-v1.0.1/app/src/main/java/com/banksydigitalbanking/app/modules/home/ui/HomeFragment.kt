package com.banksydigitalbanking.app.modules.home.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.appcomponents.base.BaseFragment
import com.banksydigitalbanking.app.databinding.FragmentHomeBinding
import com.banksydigitalbanking.app.modules.home.`data`.model.OptionsRowModel
import com.banksydigitalbanking.app.modules.home.`data`.viewmodel.HomeVM
import com.banksydigitalbanking.app.modules.sendmoney.ui.SendMoneyActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class HomeFragment : BaseFragment<FragmentHomeBinding>(R.layout.fragment_home) {
  private val viewModel: HomeVM by viewModels<HomeVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val optionsAdapter = OptionsAdapter(viewModel.optionsList.value?:mutableListOf())
    binding.recyclerOptions.adapter = optionsAdapter
    optionsAdapter.setOnItemClickListener(
    object : OptionsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : OptionsRowModel) {
        onClickRecyclerOptions(view, position, item)
      }
    }
    )
    viewModel.optionsList.observe(requireActivity()) {
      optionsAdapter.updateData(it)
    }
    binding.homeVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerOptions(
    view: View,
    position: Int,
    item: OptionsRowModel
  ): Unit {
    when(view.id) {
      R.id.linearOne -> {
        val destIntent = SendMoneyActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
    }
  }

  companion object {
    const val TAG: String = "HOME_FRAGMENT"


    fun getInstance(bundle: Bundle?): HomeFragment {
      val fragment = HomeFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
