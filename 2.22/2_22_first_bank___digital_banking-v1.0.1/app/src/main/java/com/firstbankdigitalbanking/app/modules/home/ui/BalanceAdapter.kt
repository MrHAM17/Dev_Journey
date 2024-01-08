package com.firstbankdigitalbanking.app.modules.home.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.databinding.RowBalanceBinding
import com.firstbankdigitalbanking.app.modules.home.`data`.model.BalanceRowModel
import kotlin.Int
import kotlin.collections.List

class BalanceAdapter(
  var list: List<BalanceRowModel>
) : RecyclerView.Adapter<BalanceAdapter.RowBalanceVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowBalanceVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_balance,parent,false)
    return RowBalanceVH(view)
  }

  override fun onBindViewHolder(holder: RowBalanceVH, position: Int) {
    val balanceRowModel = BalanceRowModel()
    // TODO uncomment following line after integration with data source
    // val balanceRowModel = list[position]
    holder.binding.balanceRowModel = balanceRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<BalanceRowModel>) {
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
      item: BalanceRowModel
    ) {
    }
  }

  inner class RowBalanceVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowBalanceBinding = RowBalanceBinding.bind(itemView)
  }
}
