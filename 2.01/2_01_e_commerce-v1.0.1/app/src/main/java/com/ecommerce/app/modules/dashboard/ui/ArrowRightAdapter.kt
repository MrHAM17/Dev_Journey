package com.ecommerce.app.modules.dashboard.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.ecommerce.app.R
import com.ecommerce.app.databinding.RowArrowrightBinding
import com.ecommerce.app.modules.dashboard.`data`.model.ArrightRowModel
import kotlin.Int
import kotlin.collections.List

class ArrowRightAdapter(
  var list: List<ArrightRowModel>
) : RecyclerView.Adapter<ArrowRightAdapter.RowArrowrightVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowArrowrightVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_arrowright,parent,false)
    return RowArrowrightVH(view)
  }

  override fun onBindViewHolder(holder: RowArrowrightVH, position: Int) {
    val arrightRowModel = ArrightRowModel()
    // TODO uncomment following line after integration with data source
    // val arrightRowModel = list[position]
    holder.binding.arrightRowModel = arrightRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ArrightRowModel>) {
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
      item: ArrightRowModel
    ) {
    }
  }

  inner class RowArrowrightVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowArrowrightBinding = RowArrowrightBinding.bind(itemView)
  }
}
