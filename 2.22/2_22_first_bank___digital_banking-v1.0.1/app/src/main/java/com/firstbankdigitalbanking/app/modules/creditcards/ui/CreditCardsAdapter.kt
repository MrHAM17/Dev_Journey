package com.firstbankdigitalbanking.app.modules.creditcards.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.databinding.RowCreditcardsBinding
import com.firstbankdigitalbanking.app.modules.creditcards.`data`.model.CreditcardsRowModel
import kotlin.Int
import kotlin.collections.List

class CreditCardsAdapter(
  var list: List<CreditcardsRowModel>
) : RecyclerView.Adapter<CreditCardsAdapter.RowCreditcardsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowCreditcardsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_creditcards,parent,false)
    return RowCreditcardsVH(view)
  }

  override fun onBindViewHolder(holder: RowCreditcardsVH, position: Int) {
    val creditcardsRowModel = CreditcardsRowModel()
    // TODO uncomment following line after integration with data source
    // val creditcardsRowModel = list[position]
    holder.binding.creditcardsRowModel = creditcardsRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<CreditcardsRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: CreditcardsRowModel
    ) {
    }
  }

  inner class RowCreditcardsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowCreditcardsBinding = RowCreditcardsBinding.bind(itemView)
  }
}
