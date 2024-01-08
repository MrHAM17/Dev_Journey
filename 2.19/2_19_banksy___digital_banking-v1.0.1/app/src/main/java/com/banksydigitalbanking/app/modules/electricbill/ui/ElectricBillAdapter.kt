package com.banksydigitalbanking.app.modules.electricbill.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.banksydigitalbanking.app.R
import com.banksydigitalbanking.app.databinding.RowElectricbillBinding
import com.banksydigitalbanking.app.modules.electricbill.`data`.model.ElectricbillRowModel
import kotlin.Int
import kotlin.collections.List

class ElectricBillAdapter(
  var list: List<ElectricbillRowModel>
) : RecyclerView.Adapter<ElectricBillAdapter.RowElectricbillVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowElectricbillVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_electricbill,parent,false)
    return RowElectricbillVH(view)
  }

  override fun onBindViewHolder(holder: RowElectricbillVH, position: Int) {
    val electricbillRowModel = ElectricbillRowModel()
    // TODO uncomment following line after integration with data source
    // val electricbillRowModel = list[position]
    holder.binding.electricbillRowModel = electricbillRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ElectricbillRowModel>) {
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
      item: ElectricbillRowModel
    ) {
    }
  }

  inner class RowElectricbillVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowElectricbillBinding = RowElectricbillBinding.bind(itemView)
    init {
      binding.linearCard.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, ElectricbillRowModel())
      }
    }
  }
}
