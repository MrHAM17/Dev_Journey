package com.housitbuyrentsellproperty.app.modules.paymentemptytabcontainer.ui

import androidx.activity.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityPaymentEmptyTabContainerBinding
import com.housitbuyrentsellproperty.app.modules.homecontainer.ui.HomeContainerActivity
import com.housitbuyrentsellproperty.app.modules.paymentemptytabcontainer.`data`.viewmodel.PaymentEmptyTabContainerVM
import kotlin.String
import kotlin.Unit

class PaymentEmptyTabContainerActivity :
    BaseActivity<ActivityPaymentEmptyTabContainerBinding>(R.layout.activity_payment_empty_tab_container)
    {
  private val viewModel: PaymentEmptyTabContainerVM by viewModels<PaymentEmptyTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.paymentEmptyTabContainerVM = viewModel
    val adapter = PaymentEmptyTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = PaymentEmptyTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
      binding.btnArrowLeft.setOnClickListener {
        finish()
      }
      binding.btnSkip.setOnClickListener {
        val destIntent = HomeContainerActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }

    companion object {
      const val TAG: String = "PAYMENT_EMPTY_TAB_CONTAINER_ACTIVITY"

    }
  }
