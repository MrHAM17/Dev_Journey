package com.banksydigitalbanking.app.modules.paybill.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.databinding.RowPaybillBinding
import com.banksydigitalbanking.app.modules.paybill.`data`.model.PaybillRowModel
import kotlin.Int
import kotlin.collections.List

class PayBillAdapter(
  var list: List<PaybillRowModel>
) : RecyclerView.Adapter<PayBillAdapter.RowPaybillVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowPaybillVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_paybill,parent,false)
    return RowPaybillVH(view)
  }

  override fun onBindViewHolder(holder: RowPaybillVH, position: Int) {
    val paybillRowModel = PaybillRowModel()
    // TODO uncomment following line after integration with data source
    // val paybillRowModel = list[position]
    holder.binding.paybillRowModel = paybillRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<PaybillRowModel>) {
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
      item: PaybillRowModel
    ) {
    }
  }

  inner class RowPaybillVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowPaybillBinding = RowPaybillBinding.bind(itemView)
    init {
      binding.linearOne.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, PaybillRowModel())
      }
    }
  }
}
