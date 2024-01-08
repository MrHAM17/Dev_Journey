package com.firstbankdigitalbanking.app.modules.creditcards.ui

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.base.BaseActivity
import com.firstbankdigitalbanking.app.databinding.ActivityCreditCardsBinding
import com.firstbankdigitalbanking.app.modules.creditcards.`data`.model.CreditcardsRowModel
import com.firstbankdigitalbanking.app.modules.creditcards.`data`.model.ImageSliderBalanceModel
import com.firstbankdigitalbanking.app.modules.creditcards.`data`.viewmodel.CreditCardsVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit
import kotlin.collections.ArrayList

class CreditCardsActivity : BaseActivity<ActivityCreditCardsBinding>(R.layout.activity_credit_cards)
    {
  private val imageUri: Uri =
      Uri.parse("android.resource://com.firstbankdigitalbanking.app/drawable/img_chip_card")


  private val imageSliderBalanceItems: ArrayList<ImageSliderBalanceModel> =
      arrayListOf(ImageSliderBalanceModel(imageChipCard =
  imageUri.toString()),ImageSliderBalanceModel(imageChipCard = imageUri.toString()))


  private val viewModel: CreditCardsVM by viewModels<CreditCardsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val balanceAdapter = BalanceAdapter(imageSliderBalanceItems,true)
    binding.imageSliderBalance.adapter = balanceAdapter
    val creditCardsAdapter =
    CreditCardsAdapter(viewModel.creditCardsList.value?:mutableListOf())
    binding.recyclerCreditCards.adapter = creditCardsAdapter
    creditCardsAdapter.setOnItemClickListener(
    object : CreditCardsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : CreditcardsRowModel) {
        onClickRecyclerCreditCards(view, position, item)
      }
    }
    )
    viewModel.creditCardsList.observe(this) {
      creditCardsAdapter.updateData(it)
    }
    binding.creditCardsVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun onPause(): Unit {
    binding.imageSliderBalance.pauseAutoScroll()
    super.onPause()
  }

  override fun onResume(): Unit {
    super.onResume()
    binding.imageSliderBalance.resumeAutoScroll()
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerCreditCards(
    view: View,
    position: Int,
    item: CreditcardsRowModel
  ): Unit {
  }

  private fun setUpSearchViewSearchListener(): Unit {
    binding.searchViewSearch.setOnQueryTextListener(object : SearchView.OnQueryTextListener {
      override fun onQueryTextSubmit(p0 : String) : Boolean {
        // Performs search when user hit
        // the search button on the keyboard
        return false
      }
      override fun onQueryTextChange(p0 : String) : Boolean {
        // Start filtering the list as user
        // start entering the characters
        return false
      }
      })
    }

    companion object {
      const val TAG: String = "CREDIT_CARDS_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, CreditCardsActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
